 Create View TransactionList As 
 Select [Transaction].[Count] As Counts,
 [Transaction].ProductID As Product_ID
 From [Transaction]

 Create View CountAVG As
 Select Avg (Counts) As CountAvg
 From TransactionList
 Group By TransactionList.Product_ID