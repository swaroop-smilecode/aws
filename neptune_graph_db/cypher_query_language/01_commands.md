Will learn the cypher query language with the help of example commands.

#### Retrieving all nodes of a particular label
```python
MATCH (m:Movie)
RETURN m
```
#### Retrieving specific properties of a node
```python
MATCH (m:Movie)
RETURN m.title, m.releaseYear
```
#### Filtering results
```python
MATCH (m:Movie)
WHERE m.releaseYear > 2000
RETURN m.title, m.released
```
#### Counting nodes
```python
MATCH (m:Movie)
RETURN count(m) AS NumberOfMovies
```
