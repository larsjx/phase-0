#8.5 More Schemas

## Release 2: Create a One-to-one Schema

### Consider a situation in which you would use a one-to-one relationship. Then, create your own one-to-one schema using Schema Designer. Each table should have at least four fields (which can include created_at and updated_at).

![one-to-one relationship](/imgs/one-to-one.png)

####Explain why this relationship is a one-to-one to the best of your ability.

This is a one-to-one relationship because each car can only have one license plate value. In other words, each row in the licensed cars table can only relate to an individual row in the license plates table. There should also not be any license plates without licensed cars or vice-versa.

## Release 4: Refactor

### Consider a grocery list. If you think about it, a grocery list has many items. Items can belong to many different grocery lists. Model the relationship between grocery_lists and items using Schema Designer. Each table should have at least four fields in each. You should also model the join table.

![grocery list example](/imgs/many-to-many.png)

## Release 6: Reflect

#### What is a one-to-one database?

A one-to-one database is when the relationship between two tables is unique at the row level. In other words, any row in the first table can only be related to one row in the second table and vice-versa. There should also be the same number of rows in each table.

#### When would you use a one-to-one database? (Think generally, not in terms of the example you created).

There are a couple reasons you may want to use a one-to-one database. When some information only applies to a subset of a table's rows, separating that out allows you to keep the original table more null-free. Secondly, creating a one-to-one database can be useful for controlling access to the original table.

#### What is a many-to-many database?

A many-to-many database is when the relationship between two tables overlaps at the row level. In other words, many rows in the first table can be related to many rows in the second table and vice-versa.

#### When would you use a many-to-many database? (Think generally, not in terms of the example you created).

A many-to-many database is more common than one-to-one. You would use it in any situation where you explicitly want multiple rows of one table to relate or correspond with multiple rows in another.

#### What is confusing about database schemas? What makes sense?

I appreciate the logic behind one-to-one, one-to-many, and many-to-many schemas but can find it a bit tricky to come up with my own examples. However when I think about  the different examples in our challenges or in my own reading they usually make sense to me.

