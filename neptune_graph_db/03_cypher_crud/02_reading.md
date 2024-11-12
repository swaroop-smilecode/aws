Let's understand `read` operations through examples.

------------------------------------------------
#### Reading properties of node
```python
MATCH (m:Movie)
RETURN m.title, m.released
```
------------------------------------------------
#### Reading properties of node, along with filter 
```python
MATCH (m:Movie)
WHERE m.released >= 2000
RETURN m.title, m.released
```
------------------------------------------------
