Will look at different aggregate functions through examples.</br>
There are many aggregate functions, but, will see just few & remaining can be found on the fly in google.

------------------------------------------------
#### count()
Let's count number of movies.
```python
MATCH (m:Movie)
RETURN count(m)
```
------------------------------------------------
#### min() & max()
Let's see the min released year & max released year.
```python
MATCH (m:Movie)
RETURN min(m.released), max(m.released)
```
------------------------------------------------
