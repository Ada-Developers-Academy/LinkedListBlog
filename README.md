# Linked List Blog
This in-class live coding exercise is an example of a very basic blog website in Rails, using a linked list to store each post's comments.

## References
The goal with this exercise is to build an implementation of a linked list data structure by explicitly managing the references that ultimately form the _links_ in between each _node_ in the list.

### What Are References?
In general, references are any piece of data that allows a computer program to access another piece of data. For example your social security number might be a reference to your tax information in an IRS database. However, the floating point decimal number `5.3` is not a reference because it directly IS the data.

There are two broad kinds of references: identifiers and locators.

### Where Are References Found?
Here are a few examples of both kinds of references, many of which you may be familiar with already:

| Identifier reference | Locator reference |
| -------------------- | ----------------- |
| Social Security Number | Street Address  |
| ISBN                 | Latitude/Longitude |
| SQL table `id` column | Memory Address   |
| URI                  | URL               |

As we can see, references are used all over the place both in our computer systems and our formalized social systems.


### Why Are References?
References are often used because its not beneficial or possible to store a copy of the referenced data at each location where such a reference would be used. This might be due to constraints on data storage, but it might also be a result of how complicated it would be to update each copy when the data changes.
