# Project_4


## Overview

When working with large datasets, the ultimate goal of machine learning is to determine whether we can train a model to figure out what categories a new set of inputted data would fall under. With this in mind, our group wanted to find a dataset that was comprehensive enough to be sampled so we could confidently group information into specific buckets. As a result, we utilized a dataset found on kaggle regarding music popularity. This dataset included around 1000 of the most streamed songs on Spotify, as well as numerous other variables that might help us determine what determines whether a new song will be popular.

Of the variables in the dataset, statistics were included on metrics such as the beats per minute, release date/year, instrumental percentage, etc. We wanted to figure out whether these variables had a correlation/effect on song success. With that in mind one might ask, what defines a song as successful? To make the dataset more clear, our group decided to provide visualizations for the data we had on hand. As a result, we created multiple pie charts, bar plots, box plots, etc. In doing so, we found that many of the correlations aren't as clearly defined as we initially expected. This lead us to woring on the machine learning components.
<img src="Images/ERD/Dataset Column Names.png" width="" height="100">

When further analyzing the data we decided to create 2 machine learning models to help us predict the success of a song. These models being the decision tree model and the neural network model. By definition, a decision tree is one that "is a flowchart-like tree structure where each internal node denotes the feature, branches denote the rules and the leaf nodes denote the result of the algorithm" (Explanation found on [GeeksforGeeks](https://www.geeksforgeeks.org/decision-tree/)). 
<img src=Images/Diagrams/decision-tree-classification.png width="" height="400">

The neural network model uses machine learning in a different fashion in how it "uses interconnected nodes or neurons in a layered structure that resembles the human brain"(Explanation found on [AWS](https://aws.amazon.com/what-is/neural-network/)) and as a result of the machines mistakes and successes, the model is always improving upon itself. Both are effective in their own manner and as a result, we will analyze both models.
<img src=Images/Diagrams/neural-network-diagram.png width="" height="400">

## Analysis

## Citations

- [GeeksforGeeks](https://www.geeksforgeeks.org/decision-tree/) definition of decision tree model:
https://www.geeksforgeeks.org/decision-tree/

- [AWS](https://aws.amazon.com/what-is/neural-network/) definition of decision tree model:
https://aws.amazon.com/what-is/neural-network/

- [Decision Tree Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Fpulse%2Funderstanding-decision-trees-machine-learning-clear-path-jadhav&psig=AOvVaw1NBaDKwOjgZM915GHPLCp0&ust=1708739869996000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCODxlLixwIQDFQAAAAAdAAAAABAE) pulled from google images.

- [Neural Network Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.researchgate.net%2Ffigure%2FSchematic-diagram-of-the-deep-neural-network-a-an-architecture-of-DNN-model-comprised_fig2_345137756&psig=AOvVaw1x78I2ylzowc4Q1m9Kqa2F&ust=1708740554040000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCPjmneKwwIQDFQAAAAAdAAAAABAE) pulled from google images.