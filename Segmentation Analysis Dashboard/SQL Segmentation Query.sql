--Basic Customer Metrics
SELECT 
    [Customer ID], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts,
    SUM([Previous Purchases]) AS TotalPreviousPurchases,
    MAX([Age Group]) AS AgeGroup, 
    MAX([Purchase Amount Category]) AS PurchaseRange, 
    MAX(CAST([Subscription Flag] AS INT)) AS SubscriptionFlag,
    MAX([Frequency of Purchases]) AS PurchaseFrequency
FROM 
    Purchases
GROUP BY 
    [Customer ID];

--Purchase Behavior by Age Group
SELECT 
    [Age Group], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    [Age Group]
ORDER BY 
    TotalSpent DESC;

--Gender-Based Analysis
SELECT 
    Gender, 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    Gender
ORDER BY 
    TotalSpent DESC;

--Location-Based Analysis
SELECT 
    Location, 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    Location
ORDER BY 
    TotalSpent DESC;

--Subscription Status Analysis
SELECT 
    [Subscription Status], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    [Subscription Status]
ORDER BY 
    TotalSpent DESC;

--Discount Usage Analysis
SELECT 
    [Discount Flag],[Discount Applied],
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    COUNT([Promo Code Used]) AS TotalPromoCodesUsed
FROM 
    Purchases
GROUP BY 
    [Discount Flag], [Discount Applied]
ORDER BY 
    TotalSpent DESC;

--Category-Based Analysis
SELECT 
    Category, 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    Category
ORDER BY 
    TotalSpent DESC;

--Payment Method Analysis
SELECT 
    [Payment Method], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    [Payment Method]
ORDER BY 
    TotalSpent DESC;

--Shipping Type Analysis
SELECT 
    [Shipping Type], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    [Shipping Type]
ORDER BY 
    TotalSpent DESC;

--Seasonal Purchase Analysis
SELECT 
    Season, 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    Season
ORDER BY 
    TotalSpent DESC;

--Purchase Frequency Analysis
SELECT 
    [Frequency of Purchases], 
    COUNT([Item Purchased]) AS TotalPurchases, 
    SUM([Purchase Amount (USD)]) AS TotalSpent, 
    AVG([Review Rating]) AS AvgRating, 
    SUM(CAST([Discount Flag] AS INT)) AS TotalDiscounts
FROM 
    Purchases
GROUP BY 
    [Frequency of Purchases]
ORDER BY 
    TotalSpent DESC;

