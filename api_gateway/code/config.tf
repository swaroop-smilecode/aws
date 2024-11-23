# Lambda function requires the .py file in zip format.
# Let's create that 
data "archive_file" "lambda_zip_file" {
    type        = "zip"
    source_file = "lambda/flask_server.py"
    output_path = "lambda/flask_server.zip"
}

# Create an IAM role
resource "aws_iam_role" "lambda_role" {
    name               = "lambda_role"
    assume_role_policy = file("lambda-policy.json")
}

# Let's attach an policy to the above iam role
resource "aws_iam_role_policy_attachment" "lambda_exec_role_attachment" {
    role       = aws_iam_role.lambda_role.name
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Let's create lambda
resource "aws_lambda_function" "yt_lambda_function" {
  filename         = "lambda/index.zip"
  function_name    = "DemoLambdaFunction"
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.handler"
  runtime          = "nodejs20.x"
  timeout          = 30
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
}