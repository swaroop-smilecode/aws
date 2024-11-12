Let's understand `create` operations through examples.

------------------------------------------------
#### Create node for Spiderman movie
```python
CREATE (m:Movie {title: 'Spiderman', released: 2010, duration: 148})
RETURN m
```
------------------------------------------------
#### Create relationship between Spiderman movie node 
```python
CREATE (a:Actor {name: 'Tobey', age: 25}) # Create `Actor` node.
WITH a                                    # Carry forward this `Actor` node as a variable to further query.
MATCH (m:Movie {title:"Spiderman"})       # Fetch the `Spiderman` Movie node.
CREATE (a)-[:ACTED_IN]->(m)               # Create relation between the node `a` and node `m`.
RETURN a, m                               # return the nodes.
```
------------------------------------------------
