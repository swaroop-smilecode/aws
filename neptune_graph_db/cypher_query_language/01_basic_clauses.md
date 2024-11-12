### <ins>Basic clauses</ins>

#### MATCH
Specifies the patterns of nodes & relationships you want to find in the graph.

#### WHERE
It's an optional clause to filter the results of MATCH clause, based on certain conditions.

#### RETURN
It specifies what variables you want to return</br>

-------------------------------------------------------------------------------------------
#### Example: 
Will start with a qyery which uses as minimum syntax as possible & eventually progress towards an sophisticated query.</br>

<ins>Step 1:</ins></br>
Let's start with just fetching all the nodes whose label is `Person`.
```python
MATCH (n: Person)
RETURN n
````
In cypher, node is represented by `()`.</br>
The above query is saying fetch all the nodes whose label is `Person` & store them inside an variable named `n`.</br>
At the end, return variable `n`.

<ins>Step 2:</ins></br>
Let's fetch all the nodes whose label is `Person` & there exists a `KNOWS` relationship between them.
```python
MATCH (a: Person)-[r:KNOWS]->(b: Person)
RETURN a, r, b
```
relationship is represented by `[]->`</br>
The above query is saying below, step by step.</br>
1. Fetch the nodes whose label is `Person` and store the result in variable `a`.</br>
2. Fetch the nodes whose label is `Person` and store the result in variable `b`.</br>
3. Fetch the relationships whose type is `KNOWS` and store the result in variable `r`.</br>
4. When you think all the steps 1,2 & 3 together, it gives the meaning of :</br>
   get all the nodes whose label is `Person` which has `KNOWS` relationship with another node whose label is also `Person`.
5. At the end of the query, you can return only those variables you want.

<ins>Step 3:</ins></br>
Let's fetch information about two nodes(first node label is `Person` & second node laber is also `Person`)</br>
which has `KNOWS` relationship between them.</br>
But, at the end, will return only those properties from nodes & relationships, in which we are interested.</br>
```python
MATCH (a: Person)-[r:KNOWS]->(b: Person)
RETURN a.name, r.since, b.name
```

<ins>Step 4:</ins></br>
Let's apply WHERE clause to filter the data, just before returning.
```python
MATCH (a: Person)-[r:KNOWS]->(b: Person)
WHERE a.name = "heidi"
RETURN a.name, r.since, b.name
```

So, remember the syntax of cypher query like this:</br>
MATCH --> it's to fetch data.</br>
WHERE --> filter data, which is fetched.</br>
RETURN --> return only required data, from filtered data.</br>
