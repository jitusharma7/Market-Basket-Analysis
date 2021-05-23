# Market-Basket-Analysis
The case study is about the problems faced by the customer and how a big basket can optimize its performance while placing the orders on the big basket mobile app.

## Table of Content
  * [Problem_Definition](#Problem_Definition)
  * [DataSet Description](#Dataset_Description)
  * [Exploratory_Data_Analysis](#Exploratory_Data_Analysis)
  * [Data_Preprocessing](#Data_Preprocessing)
  * [Model_Building](#Model_Building)
  * [Result](#Result)
  * [Credit](#Credit)
  


 ## Problem_Definition
 Big baskets' tech team after discussing the problem agreed to improve the shopping experience of their customers. Customer Analytics played a major role in deciding the solution for this problem. Compared to Amazon & other E-commerce companies, customers at Bigbasket.com bought the same product repeatedly since they were daily use items such as vegetables, bakery & dairy products which were purchased weekly or monthly.

 If the Smart Basket option is not used customers tend to forget to buy all the required items. Therefore, the 'Did you forget' feature was introduced using an analytics solution. This feature was conceived, providing product recommendations while checking out based on the purchase history of the customer. The 'Did you forget' use case is a unique problem to solve the input to derive the recommendation looks primarily at the items in the basket and the customer's purchase history. It does not get buying history or patterns for other similar customer profiles. The problem statement is specific to the situation where the customer has already filled the basket and is ready to checkout. These features can be improvised upon.
 
## Dataset_Description
The dataset consist of the foloowing attributes:
1. Member - Customer ID
2. Order - Order ID 
3. SKU - Transaction ID
4. Created On - Transaction date and time
5. Description - Description of Order Items 
   
## Exploratory_Data_Analysis
* List top 10 Frequent Analysis
1. Other Vegetables
2. Root vegetables
3. Beans
4. Gourd & cucumber
5. Brinjals
6. Banana
7. Other Dals
8. Whole spices
9. Organic F&V
10. Sugar

* Min Support Set ( With Reason )
Min Support = 0.02
Since the products below the minimum support are not bought frequently.

<img src="min%20support.PNG" width="400">



## Data_Preprocessing
* Select Order and Decription_Order columns to build Apriori Algorithm using R.


## Model_Building
* To build Apriori Algorithm, defined support and confidence parameters as 0.02 and 0.


## Result
Here is the result of the Apriori Algorithm.

<img src="Apriori%20Algorithm.PNG" width="400">



## Credit
 This project has been done as a course learning project at my College.
