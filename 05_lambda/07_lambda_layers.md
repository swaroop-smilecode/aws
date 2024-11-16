In previous chapter, we have seen packaging libraries together with code solved the problem of dependencies.</br>
It has 2 drawbacks.</br>
1. Same pandas library, since you are packaging individually along with respective code, it results in duplication of code.
2. When you need to upgrade the libraries to latest version, the work is huge.

![image](https://github.com/user-attachments/assets/797926a0-279a-4bf0-9c55-0079da36a56b)

So, what's the solution?</br>
lambda layers.</br>
- Code inside the lambda layer can be shared acorss all lambda functions inside an region.</br>
- Since the lambda zip size became small, the cold start time decreases</br>

![image](https://github.com/user-attachments/assets/d51b6035-418b-4937-98f9-1046f4a6e317)
