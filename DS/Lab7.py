import pandas as pd

data = {
    'Name': ['John', 'Emma', 'Sant', 'Lisa', 'Tom'],
    'Age': [25, 30, 28, 32, 27],
    'Country': ['USA', 'Canada', 'India', 'UK', 'Australia'],
    'Salary': [50000, 60000, 70000, 80000, 65000]
}

df = pd.DataFrame(data)

print("Original DataFrame:")
print(df)

print("\nName and Age columns:")
print(df[['Name', 'Age']])

print("\nFiltered DataFrame (Country='USA'):")
print(df[df['Country'] == 'USA'])

print("\nSorted DataFrame (by Salary in descending order):")
print(df.sort_values(by='Salary', ascending=False))

print("\nAverage Salary:", df['Salary'].mean())

df['Experience'] = [3, 6, 4, 8, 5]
print("\nDataFrame with added Experience column:")
print(df)

df.loc[df['Name'] == 'Emma', 'Salary'] = 65000
print("\nDataFrame with updated Emma's Salary:")
print(df)

df.drop('Experience', axis=1, inplace=True)
print("\nDataFrame after deleting the Experience column:")
print(df)
