Let's understand `delete` operations through examples.

------------------------------------------------
#### Delete node and all the relationships it has
```python
MATCH (m:Movie {title: "Spiderman"})
DETACH DELETE m
```
------------------------------------------------
