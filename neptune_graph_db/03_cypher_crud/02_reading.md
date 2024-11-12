Let's understand `read` operations through examples.

------------------------------------------------
#### Read properties of node
```python
MATCH (m:Movie)
RETURN m.title, m.released
```
------------------------------------------------
#### Read properties of node, along with filter 
```python
MATCH (m:Movie)
WHERE m.released >= 2000
RETURN m.title, m.released
```
------------------------------------------------
