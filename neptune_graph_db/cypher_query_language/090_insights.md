#### Cypher language is case sensitive.
- Let's understand through an example.</br>
  Suppose you have created a node named `Person`, then you must refer it as `Person` in the query.</br>
- `person` doesn't work.</br>
  Usually, the naming convention is: nodes are named with snake casing & relationships are named with all caps.
```python
MATCH (p:Person)-[a:ACTED_IN]->(m:Movie) 
WHERE m.released >= 2000
RETURN p.name, m.movie
LIMIT 25
```
#### Cypher language is case sensitive.
Observe that for assigning value to variable, `:` is used.</br>
and for referencing properties inside node/relationship, `.` is used.</br>
```python
MATCH (p:Person)-[a:ACTED_IN]->(m:Movie) 
WHERE m.released >= 2000
RETURN p.name, m.movie
LIMIT 25
```
