import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px

# Use raw string literal for file path
file_path = r'C:\Users\dhrru\OneDrive\Desktop\Copy of Adidas US Sales Datasets.xlsx'

# Load data
sales_data = pd.read_excel(file_path, sheet_name='Working Sheet')

# Convert 'Invoice Date' to datetime
sales_data['Invoice Date'] = pd.to_datetime(sales_data['Invoice Date'])

# Check for missing values
print(sales_data.isnull().sum())

# Select only numerical columns for correlation
numerical_columns = sales_data.select_dtypes(include=['float64', 'int64']).columns
corr_matrix = sales_data[numerical_columns].corr()

# Correlation heatmap
plt.figure(figsize=(10, 8))
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
plt.show()

# Sales trends over time
sales_data.set_index('Invoice Date').resample('M')['Total Sales'].sum().plot()
plt.title('Monthly Sales Trend')
plt.xlabel('Month')
plt.ylabel('Total Sales')
plt.show()

# Group by product and calculate total operating profit
profit_by_product = sales_data.groupby('Product')['Operating Profit'].sum().sort_values(ascending=False)

# Plot top 10 products by operating profit
profit_by_product.head(10).plot(kind='bar')
plt.title('Top 10 Products by Operating Profit')
plt.xlabel('Product')
plt.ylabel('Operating Profit')
plt.show()

# Interactive sales by region
fig = px.bar(sales_data, x='Region', y='Total Sales', color='Region', title='Sales by Region')
fig.show()
