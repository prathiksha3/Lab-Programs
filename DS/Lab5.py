import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression

# Load dataset
dataset = pd.read_csv('advertising.csv')

# EDA
print(dataset.head(10))
print("Shape of dataset:", dataset.shape)
print("Missing values:\n", dataset.isna().sum())

# Visualizations
sns.pairplot(dataset, x_vars=['TV', 'Radio', 'Newspaper'], y_vars='Sales', kind='scatter', height=4)
plt.show()

sns.heatmap(dataset.corr(), annot=True)
plt.show()

# Model building and evaluation
x = dataset[['TV']]
y = dataset['Sales']
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.3, random_state=100)

slr = LinearRegression().fit(x_train, y_train)
print('Intercept:', slr.intercept_)
print('Coefficient:', slr.coef_)

plt.scatter(x_train, y_train)
plt.plot(x_train, slr.predict(x_train), 'r')
plt.xlabel('TV')
plt.ylabel('Sales')
plt.show()

# Prediction and evaluation
y_pred_slr = slr.predict(x_test)
print("Predicted values for test set:\n", pd.DataFrame({'Actual': y_test, 'Predicted': y_pred_slr}))

# R-squared value
print('R-squared value: {:.2f}'.format(slr.score(x, y)))
