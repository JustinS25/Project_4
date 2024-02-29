# Project_4


## Overview

When working with large datasets, the ultimate goal of machine learning is to determine whether we can train a model to figure out what categories a new set of inputted data would fall under. With this in mind, our group wanted to find a dataset that was comprehensive enough to be sampled so we could confidently group information into specific buckets. As a result, we utilized a dataset found on kaggle regarding music popularity. This dataset included around 1000 of the most streamed songs on Spotify, as well as numerous other variables that might help us determine what determines whether a new song will be popular.

Of the variables in the dataset, statistics were included on metrics such as the beats per minute, release date/year, instrumental percentage, etc. We wanted to figure out whether these variables had a correlation/effect on song success. With that in mind one might ask, what defines a song as successful? To make the dataset more clear, our group decided to provide visualizations for the data we had on hand. As a result, we created multiple pie charts, bar plots, box plots, etc. In doing so, we found that many of the correlations aren't as clearly defined as we initially expected. This lead us to woring on the machine learning components.
<img src="Images/ERD/Dataset Column Names.png" width="" height="100">

When further analyzing the data we decided to create 2 machine learning models to help us predict the success of a song. These models being the decision tree model and the neural network model. By definition, a decision tree is one that "is a flowchart-like tree structure where each internal node denotes the feature, branches denote the rules and the leaf nodes denote the result of the algorithm" (Explanation found on [GeeksforGeeks](https://www.geeksforgeeks.org/decision-tree/)). 
<img src=Images/Diagrams/decision-tree-classification.png width="" height="400">

The neural network model uses machine learning in a different fashion in how it "uses interconnected nodes or neurons in a layered structure that resembles the human brain"(Explanation found on [AWS](https://aws.amazon.com/what-is/neural-network/)) and as a result of the machines mistakes and successes, the model is always improving upon itself. Both are effective in their own manner and as a result, we will analyze both models.
<img src=Images/Diagrams/neural-network-diagram.png width="" height="400">

## Premodel Analysis

The first thing we wanted to do was to take a look at the initial data and see if there were any factors that stood out very obviously. By looking at our ERD, there are many characteristics that seem rather interesting to explore in order to determine if a song would be popular or not. For example, some questions that we could ask are: Do energy levels affect the popularity of a song? Does releasing a song at a certain time of year make it more popular? Does the number of artists contributing to a song increase the number of people who listen to it?

Before continuing the analysis, it is important to add some clarity to some of the features in the dataset. The columns danceability, valence, energy, acousticness, instrumentalness, liveness, and speechiness are all measures that are put into a percentage. Danceability categorizes the song into how danceable it is. A high percentage means that the song is very easy to dance to, while a lower percentage means it is not easy to dance to. Valence measures the positivity of the song. A high valence percentage means that the song is very happy, and a low percentage means that the song is rather sad. Energy measures the perceived energy that the song possesses. A high percentage means that the song is very energetic and upbeat, while a lower percentage means the song is very mellow and low-key. Acousticness measures the amount of acoustic elements in the song. A high percentage means that there are a lot of acoustic elements in the song, while a low percentage means that it is more electronic. Instrumentalness measures the instrumental content within the song. Liveliness measures the presence of live performance within the song. Finally, speechiness measures the percentage of a song where words are being spoken.

<img src="Images/Analysis Screenshots/Kaggle_Percentages.png" width="" height="200">

The first thing that was measured in this analysis was the amount of streams a song had versus some of the categories mentioned above. The most interesting components that were explored were valence, energy, and danceability. As you can see from the scatter plots, all of these measures seemed to have little to no correlational relationship with the popularity of a song. Danceability versus streams had an r-value of -0.105, valence versus streams only had an r-value of -0.041, and energy versus streams had an even smaller value of -0.026. It is important to note that all of the features were analyzed and similar r-values were found and nothing stood out (more can be found in Images/Scatter Plots). Overall, no r-values were strong enough to develop a strong, conclusive correlational relationship. 

<img src="Images/Scatter Plots/Streams vs. Danceability Pct.png" width="" height="200">
<img src="Images/Scatter Plots/Streams vs. Valence Pct.png" width="" height="200">
<img src="Images/Scatter Plots/Streams vs. Energy Pct.png" width="" height="200">


Furthering our analysis, box plots were created on each of these features as well. The first step was to bin the streaming data into three different parts. They were categorized as 0 to 1 billion as “low” or popular songs, 1 billion to 2 billion as “medium” or mildly popular songs, and 2 billion+ as “high” or very popular songs. Again, we are only showing the features of danceability, valence, and energy. All of these boxplots have similar means and interquartile range, which means that there is no particular quality that makes a song more popular. All of the other boxplots were relatively similar as well (more can be found in Images/Boxplots).

<img src="Images/Boxplots/Danceability Pct by Stream Category.png" width="" height="200">
<img src="Images/Boxplots/Valence Pct by Stream Category.png" width="" height="200">
<img src="Images/Boxplots/Energy Pct by Stream Category.png" width="" height="200">

Another feature that was analyzed was the amount of artists contributing to a song versus how popular they become. This was rather interesting; as the number of artists contributing to the song increased, the average popularity of the song decreased, which indicated that fewer contributions made a song more popular. Furthermore, once the artist count reaches seven and eight, the average number of streams spikes, which could indicate that once a certain number of people contribute, the song becomes slightly more popular. However, there is a much smaller sample size of seven and eight artists contributing. Therefore, this could be a false indicator that as more artists contribute to a song, the more popular it gets.

<img src="Images/Bar Plots/Artist Count vs Maximum Streams.png" width="" height="400">

Furthermore, we wanted to compare whether a song was written in a major key or minor key against how popular it was. By looking at the bar chart, there is not a large difference between the popularity of songs written in a major key or minor key, meaning that no conclusions can be drawn from this data. 

<img src="Images/Bar Plots/Mode vs Maximum Streams.png" width="" height="400">

Some more analysis was made on release year and release month. Over the course of this dataset (1930's to present), we wanted to see if releasing a song during a certain time period makes it more popular. By looking at this pie chart, we can see that on average, songs released during certain times of the year tend to gain more popularity. Songs released in January and September actually have more influence on how many people like it. However, a lot of songs are released in January therefore, it make sense for songs to have more streams on average during that time. However, if we look at September, a very small percentage of songs are released but songs during this time period seem extremely popular. This could be random or could be a fact but it is hard to tell given this small sample size of data. 

<img src="Images/Pie Chart/Amount of Songs Released per Month.png" width="" height="300">
<img src="Images/Pie Chart/Amount of Streams per Month on Average.png" width="" height="300">

Furthermore, it was also interesting to analyze the total amount of streams that each song got per decade. As you can see from this pie chart, the vast majority of streams come from the more recent decades.

<img src="Images/Pie Chart/Amount of Streams per Decade in Total.png" width="" height="400">


## Model Analysis

### Decision Tree Analysis

The project shows the process for building and evaluating a decision tree classifier for predicting streaming categories based on features extracted from a Spotify dataset. We chose to use a decision tree classifier model because the data was rather complex. This model would make it easier to find and predict non-linear relationships and easily classify the outliers. Initially, the dataset is loaded and features deemed irrelevant, such as track and artist names, are dropped. Subsequently, our target variable, "stream_category," which was created by binning the "streams” column into three categories: popular (0), mildly popular (1), and most popular(2).

Continuing involved encoding categorical variables, scaling numerical features using StandardScaler, and splitting the dataset into training and testing sets. The decision tree classifier is then trained on the scaled training data and evaluated on the testing data using metrics like accuracy, confusion matrix, and classification report. Moreover, the code incorporates techniques for handling class imbalance by oversampling the minority classes using RandomOverSampler from the imbalanced-learn library.

<img src="Images/Analysis Screenshots/Confusion Matrix.png" width="" height="150">

RandomOverSampler:

The reason that we chose to optimize this model using a random over sampler is because there is not much support for predicting a mildly popular song and a very popular song. By resampling the data, we give more datapoints for the model to use to predict these targets. However, this had a reverse effect on the accuracy of the data and we actually found less precision within the data set. The recall scores were a lot higher though in predicting the actual true postives within the dataset but overall a bad accuracy with everything else.

<img src="Images/Analysis Screenshots/Oversampler.png" width="" height="150">

<img src="Images/Analysis Screenshots/Oversampler_Report.png" width="" height="300">

The classification models indicate that we achieved high precision and recall for predicting songs in the low streaming category, with both metrics at 91%. For songs in the medium and high streaming categories, precision is noticeably lower, showing the struggle of the model to accurately identify these categories. For medium streaming songs, precision and recall are around 35% and 37%, while the high streaming category drops to 29% and 25%. The macro and weighted average F1-scores are approximately 0.51 and the overall accuracy score stands at 82%. While deciding on the data set for this project, we looked at songs that already met a certain threshold for highly popular; potentially having a larger scope with the data set would have raised our precision values instead of progressively lowering it.

<img src="Images/Analysis Screenshots/Classification Report.png" width="" height="200">

Lastly, the code visualizes the feature importances of the decision tree model, providing insights into which features are most influential in predicting streaming categories. We can see that released_year shows the most important when it comes to streaming based on our limited data, by far. Released_day and liveness_pct come in second and third, which did not fit into our perceptions of importance for a high streaming song. We theorized that certain months and years had significance to the industry, for example many artists release holiday related songs in December, such as a Christmas album. Those artists could release more albums that relate to other seasons, such as summer, to boost streams. However, we are limited with our data set. If we were to continue our project, there would be merit in examining why artists release songs in certain months as opposed to others. 

### Neural Network Analysis

Data Preprocessing
* The first step in building our neural network model was to organize our data to have only the necessary features and a single target variable. To achieve this, features that were unique identifiers or missing data were dropped. Furthermore, the target variable was then categorized into two separate categories: popular song (0) and very popular song (1). We determined that the cutoff point for a very popular song would be any song that contained more than 2.5 billion streams. 

Model Construction
* The first step in constructing this model was to split the features and target variables into training and testing sets. From that, the data was scaled and run through a sequential neural network model. The neural network model contained two hidden layers with the activation function of “relu”. We used the “relu” activation function because it is the default standard. Furthermore, we used the “sigmoid” function in the output layer because the predicted outputs are either (0 or 1), so it only tries to binarily classify the outcomes. A total of 65 neurons were used in this dataset. It was found that increasing the number of neurons and layers actually decreased the accuracy of the model. Finally, we fit the model and used 50 epochs to train it. Overall, the highest accuracy that we were able to achieve was around 71%

<img src="Images/Analysis Screenshots/Neural Network Summary.png" width="" height="300">

<img src="Images/Analysis Screenshots/Neural Network Accuracy.png" width="" height="50">

Summary
* Overall, the model did not perform as well as we would have liked it to. Especially after changing the amount of neurons and layers. The best option was to use supervised machine learning because the model did not seem complex enough to use a neural network.

## Feature Importance 

<img src="Images/Feature Importance/Decision Tree Model Feature Importance.png" width="" height="400">


## Citations

- [GeeksforGeeks](https://www.geeksforgeeks.org/decision-tree/) definition of decision tree model:
https://www.geeksforgeeks.org/decision-tree/

- [AWS](https://aws.amazon.com/what-is/neural-network/) definition of decision tree model:
https://aws.amazon.com/what-is/neural-network/

- [Decision Tree Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.linkedin.com%2Fpulse%2Funderstanding-decision-trees-machine-learning-clear-path-jadhav&psig=AOvVaw1NBaDKwOjgZM915GHPLCp0&ust=1708739869996000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCODxlLixwIQDFQAAAAAdAAAAABAE) pulled from google images.

- [Neural Network Diagram](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.researchgate.net%2Ffigure%2FSchematic-diagram-of-the-deep-neural-network-a-an-architecture-of-DNN-model-comprised_fig2_345137756&psig=AOvVaw1x78I2ylzowc4Q1m9Kqa2F&ust=1708740554040000&source=images&cd=vfe&opi=89978449&ved=0CBUQjhxqFwoTCPjmneKwwIQDFQAAAAAdAAAAABAE) pulled from google images.
