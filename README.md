# Market-Basket-Analysis
The case study is about the problems faced by the customer and how big basked can optimize its performance while placing the orders on the big basket mobile app.

## Table of Content
  * [Problem_Definition](#Problem_Definition)
  * [Exploratory_Data_Analysis](#Exploratory_Data_Analysis)
  * [Data_Preprocessing](#Data_Preprocessing)
  * [Model_Building](#Model_Building)
  * [Result](#Result)
  * [Business_Recommendation](#Business_Recommendation)
  * [Credit](#Credit)
  


 ## Problem_Definition
 Big baskets' tech team after discussing the problem agreed to improve the shopping experience of their customers. Customer Analytics played a major role in deciding the solution for this problem. Compared to Amazon & other E-commerce companies, customers at Bigbasket.com bought the same product repeatedly since they were daily use items such as vegetables, bakery & dairy products which were purchased weekly or monthly.

 If the Smart Basket option is not used customers tend to forget to buy all the required items. Therefore, the 'Did you forget' feature was introduced using an analytics solution. This feature was conceived, providing product recommendations while checking out based on the purchase history of the customer. The 'Did you forget' use case is a unique problem to solve the input to derive the recommendation looks primarily at the items in the basket and the customer's purchase history. It does not get buying history or patterns for other similar customer profiles. The problem statement is specific to the situation where the customer has already filled the basket and is ready to checkout. These features can be improvised upon.
 
 
   
## Exploratory_Data_Analysis
* List top 10 Frequent Analysis
1. Other Vegetables
2. Root vegetables
3. Beans
4. Gourd & cucumber
5. Brnjals
6. Banana
7. Other Dals
8. Whole spices
9. Organic F&V
10. Sugar

* Min Support Set ( With Reason )
Min Support = 0.02
Since the products below the minimum support are not bought frequently.

<img src="/VIF.PNG" width="400">



## Data_Preprocessing
* Encoding the Status column as 1and 0
* Dropping three features 'SLNO','Candidate Ref' and 'Location' dueto high cardinality
* Applying Label Encoding to'offered band' ordinal feature.
* Applying one hot encoding to restof the categorical features
* Used drop_first feature of one hotencoding to avoidmulticollinearity
* Checked for multicollinearity using correlation mapand variance Inflation factor,Two features 'Pecent hike expected in CTC' and'Percent hike offered in CTC' has been removed

    <img src="/VIF.PNG" width="400">


## Model_Building
* XG Boost performs better thanother models
* Hyperparameters tuning isdone by RandomizedSearchCV for xgboost
* It has a higher accuracy of83.24%
* True Negative is almost doublethan false negative
* Rest of the models have verypoor performance in terms ofpredicting true negative values
* True negative values are crucialbecause it is important to knowwho will not join theorganization


     <img src="/ModelComparison.PNG" width="400">

## Result
* XG Boost classifieroutperforms here among all model with 83.24% accuracy
* Feature importance score from XGBoost classifier
* Top 3 important features = 'Percent difference CTC', 'Duration to accept offer', 'Age'
* Least 3 important features = 'Joining Bonus_Yes', 'LOB_EAS', 'LOB_Healthcare'

## Business_Recommendation
* Firm should focus on 3 important features 'Percent difference CTC', 'Duration to accept offer'& 'Age'
* Firm should introduce new offering/schemes  based on these 3 features combination so that attrition rate can reduce.

## Credit
[dare2Compete](https://https://dare2compete.com/) - This project has been done on this competitive platform.
