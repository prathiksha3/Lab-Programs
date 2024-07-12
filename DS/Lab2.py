import pandas as pd

df = pd.read_excel('data.xlsx')
print("First few rows\n", df.head())
print("\nSummary statistics\n", df.describe())

print("\nFiltered data (Age > 30)\n", df[df['Age'] > 30])
print("\nSorted data (by Salary)\n", df.sort_values(by='salary', ascending=False))

df['Bonus'] = df['salary'] * 0.1
print("\nData with new column (Bonus)\n", df)

df.to_excel('Output.xlsx', index=False)
print("\nData written to Output.xlsx")
