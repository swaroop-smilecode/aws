Let's see the different types of clauses through which we can filter data.

-------------------------------------------------------------------------------------------
#### WHERE
Fetch only those nodes whose lable is `Movie`</br>
& then, filter out those fetched nodes which has property `title` with a value "The Matrix".
```python
MATCH (m:Movie)
WHERE m.title = "The Matrix"
RETURN m
LIMIT 25
```
-------------------------------------------------------------------------------------------
#### WHERE with logical operators
Fetch the movies released between 2000 and 2010.
```python
MATCH (m:Movie)
WHERE m.released >= 2000 AND m.released <= 2010
RETURN m
LIMIT 25
```
-------------------------------------------------------------------------------------------
#### MATCH with patterns
Fetch the movies whose released between 2000 and 2010.
```python
MATCH (p:Person)-[a:ACTED_IN]->(m:Movie) 
WHERE m.released >= 2000
RETURN p.name, m.movie
LIMIT 25
```
-------------------------------------------------------------------------------------------
#### WITH
It has multilpe uses.
1. Aggregate functions can be used only in two clauses. `WITH` and `RETURN`
   ```python
   MATCH (p:Person)-[acted:ACTED_IN]->(m:Movie) 
   WITH p.name AS person_name, collect(m) AS list_of_movies
   RETURN person_name, size(list_of_movies)
   ```
   <ins>Note:</ins>
   In Cypher, GROUP BY is done implicitly by all of the aggregate functions.</br>
   In a `WITH`/`RETURN` statement, any columns not part of an aggregate will be the GROUP BY key.
   
3. WITH clause allows query parts to be chained together, piping the results from one query to another.
```python
```
-------------------------------------------------------------------------------------------
#### Regular expressions
```python
MATCH (m:Movie)
WHERE m.title STARTS WITH 'The'
RETURN m.title AS movie_name
```
There are many other things such as `ENDS WITH`, CONTAINS e.t.c.

-------------------------------------------------------------------------------------------
