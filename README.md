# MeriSKILL_Challange

## Explanation of Queries:

1. **Top 5 Customers by Total Spend**: Joins `Customers` and `Orders` to aggregate total spending by each customer and ranks them.
2. **Monthly Revenue for the Last Year**: Uses `FORMAT` to group orders by month and calculate the total revenue for each month in the last year.
3. **Average Order Value by Customer**: Calculates the average order value for each customer by joining `Customers` and `Orders`.
4. **Most Popular Products**: Joins `Order_Items` and `Products` to find the top 10 products based on total quantity sold.
5. **Customer Retention Rate**: Calculates the percentage of customers who made a purchase in the previous month and in the current month.
6. **Category Performance**: Aggregates revenue by product category to determine which category generates the most revenue.

