#### WHERE clause
Fetch only those nodes whose lable is `Movie`</br>
& then, filter out those fetched nodes which has property `title` with a value "The Matrix".
```python
MATCH (m:Movie)
WHERE m.title = "The Matrix"
RETURN m
LIMIT 25
```
-------------------------------------------------------------------------------------------
#### WHERE clause with logical operators
Fetch the movies released between 2000 and 2010.
```python
MATCH (m:Movie)
WHERE m.released >= 2000 AND m.released <= 2010
RETURN m
LIMIT 25
```
-------------------------------------------------------------------------------------------
#### MATCH clause with patterns
Fetch the movies whose released between 2000 and 2010.
```python
MATCH (p:Person)-[a:ACTED_IN]->(m:Movie) 
WHERE m.released >= 2000
RETURN p.name, m.movie
LIMIT 25
```
-------------------------------------------------------------------------------------------
