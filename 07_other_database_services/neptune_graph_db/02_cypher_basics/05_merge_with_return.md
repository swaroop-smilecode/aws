#### MERGE
Creates node if not exists, updates if exists.
```python
MERGE (m:Movie {title: "The Matrix"})
ON CREATE SET m.released = 1999, m.duration = 136
RETURN m
```
Creates relationship if not exists, update if exists.
```python
```
