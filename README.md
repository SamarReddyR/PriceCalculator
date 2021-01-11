# Price Calculator

Price Calculator is a ruby program which when executed would ask user to list all the items purchased in any order. Once user has listed all the items then print the total cost.

The Data here is static and initialized with following data

```
Item     Unit price        Sale price
--------------------------------------
Milk      $3.97            2 for $5.00
Bread     $2.17            3 for $6.00
Banana    $0.99
Apple     $0.89
```

# Run the program

* Make sure that ruby is installed in your local.
* Run the following command in the cloned repository.
  * `ruby price_calculator.rb`

# Example Scenario

Let the input be as below

```
milk,milk, bread,banana,bread,bread,bread,milk,apple
```

The output would be as follows

```
Item     Quantity      Price
----------------------------
Milk      3            $8.97
Bread     4            $8.17
Apple     1            $0.89
Banana    1            $0.99  

Total price : $19.02
You saved $3.45 today.
```
