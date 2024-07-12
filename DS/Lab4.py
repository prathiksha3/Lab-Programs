import numpy as np

# Data and normalization
x = np.array([[2, 9], [1, 9], [3, 6]], dtype=float) / np.array([3, 9])
y = np.array([[92], [86], [89]], dtype=float) / 100

# Activation functions
sigmoid = lambda x: 1 / (1 + np.exp(-x))
dsigmoid = lambda x: x * (1 - x)

# Parameters
epochs, lr = 5000, 0.1
input_neurons, hidden_neurons, output_neurons = 2, 3, 1

# Weights and biases
wb = np.random.uniform(size=(input_neurons, hidden_neurons))
bb = np.random.uniform(size=(1, hidden_neurons))
wout = np.random.uniform(size=(hidden_neurons, output_neurons))
bout = np.random.uniform(size=(1, output_neurons))

# Training
for _ in range(epochs):
    # Forward Propagation
    hlayer = sigmoid(np.dot(x, wb) + bb)
    output = sigmoid(np.dot(hlayer, wout) + bout)
    
    # Backpropagation
    error = y - output
    d_output = error * dsigmoid(output)
    d_hidden = d_output.dot(wout.T) * dsigmoid(hlayer)
    
    # Update weights and biases
    wout += hlayer.T.dot(d_output) * lr
    wb += x.T.dot(d_hidden) * lr

# Results
print("Input:\n", x)
print("Actual:\n", y)
print("Predicted:\n", output)
