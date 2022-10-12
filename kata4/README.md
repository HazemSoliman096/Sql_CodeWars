# kata4

## Total items belonging to the categories on all tree levels

### Task

    For each category in the tree-like categories table, calculate how many records in the items table belong to it and its parent  categories across all the tree levels.  

### Notes

    Items can only belong to the leaves of the category tree  
    There will be multiple roots for separate category trees  
    Order the result by the id column  

### Input tables  

    -----------------------------------
    |   Table    |   Column    | Type |
    |------------+-------------+------|
    | categories | id          | int  |
    |            | parent      | int  |
    |------------+-------------+------|
    | items      | id          | int  |
    |            | category_id | int  |
    -----------------------------------

### Output table  

    ------------------
    | Column | Type  |
    |--------+-------|
    | id     | int   |
    | total  | int   |
    ------------------

### Example

### Category tree:

    ---(1)             [(3 + 6) items]
        |
        |---(2)        [3 items]
        |
        |---(3)        [(5 + 1 + 0) items]
            |
            |---(4)   [5 items]
            |
            |---(5)   [1 item]
            |
            |---(6)   [0 items]


### Resulting table:

      id   | total
    -------+-------
      1   |   9
      2   |   3
      3   |   6
      4   |   5
      5   |   1
      6   |   0

----------------------------------------------------------------------------------------------------------------