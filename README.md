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

### Decision Tree Analysis

The project shows the process for building and evaluating a decision tree classifier for predicting streaming categories based on features extracted from a Spotify dataset. We chose to use a decision tree classifier model because the data was rather complex. This model would make it easier to find and predict non-linear relationships and easily classify the outliers. Initially, the dataset is loaded and features deemed irrelevant, such as track and artist names, are dropped. Subsequently, our target variable, "stream_category," which was created by binning the "streams” column into three categories: popular (0), mildly popular (1), and most popular(2).

Continuing involved encoding categorical variables, scaling numerical features using StandardScaler, and splitting the dataset into training and testing sets. The decision tree classifier is then trained on the scaled training data and evaluated on the testing data using metrics like accuracy, confusion matrix, and classification report. Moreover, the code incorporates techniques for handling class imbalance by oversampling the minority classes using RandomOverSampler from the imbalanced-learn library.
<img src="Images/Analysis Screenshots/Confusion Matrix.png" width="" height="150">

RandomOverSampler:

<img src="Images/Analysis Screenshots/Oversampler.png" width="" height="150">


The classification models indicate that we achieved high precision and recall for predicting songs in the low streaming category, with both metrics at 91%. For songs in the medium and high streaming categories, precision is noticeably lower, showing the struggle of the model to accurately identify these categories. For medium streaming songs, precision and recall are around 35% and 37%, while the high streaming category drops to 29% and 25%. The macro and weighted average F1-scores are approximately 0.51 and the overall accuracy score stands at 82%. While deciding on the data set for this project, we looked at songs that already met a certain threshold for highly popular; potentially having a larger scope with the data set would have raised our precision values instead of progressively lowering it.

<img src="Images/Analysis Screenshots/Classification Report.png" width="" height="200">

Lastly, the code visualizes the feature importances of the decision tree model, providing insights into which features are most influential in predicting streaming categories. We can see that released_year shows the most important when it comes to streaming based on our limited data, by far. Released_day and liveness_pct come in second and third, which did not fit into our perceptions of importance for a high streaming song. We theorized that certain months and years had significance to the industry, for example many artists release holiday related songs in December, such as a Christmas album. Those artists could release more albums that relate to other seasons, such as summer, to boost streams. However, we are limited with our data set. If we were to continue our project, there would be merit in examining why artists release songs in certain months as opposed to others. 


## Citations

- [GeeksforGeeks](https://www.geeksforgeeks.org/decision-tree/) definition of decision tree model:
https://www.geeksforgeeks.org/decision-tree/

- [AWS](https://aws.amazon.com/what-is/neural-network/) definition of decision tree model:
https://aws.amazon.com/what-is/neural-network/

- [Decision Tree Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Fpulse%2Funderstanding-decision-trees-machine-learning-clear-path-jadhav&psig=AOvVaw1NBaDKwOjgZM915GHPLCp0&ust=1708739869996000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCODxlLixwIQDFQAAAAAdAAAAABAE) pulled from google images.

- [Neural Network Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.researchgate.net%2Ffigure%2FSchematic-diagram-of-the-deep-neural-network-a-an-architecture-of-DNN-model-comprised_fig2_345137756&psig=AOvVaw1x78I2ylzowc4Q1m9Kqa2F&ust=1708740554040000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCPjmneKwwIQDFQAAAAAdAAAAABAE) pulled from google images.