Let's understand `update` operations through examples.

------------------------------------------------
#### Update property of node
```python
MATCH (m:Movie {title: "Spiderman"})
SET m.duration = 150
RETURN m
```
------------------------------------------------
#### Add new property to node
```python
MATCH (m:Movie {title: "Spiderman"})
SET m.actress = "kirsten"
RETURN m
````
------------------------------------------------
