CS194-16 Data Science Assignment 3 - Collaborative Filtering
============================================================
UC Berkeley
===========

In this assignment, you will implement and evaluate two different models of collaborative filtering on the R package recommendation dataset. Models can take a while to tune, train, and evaluate. Start early!

Preparation and Dataset
-----------------------
We will be using the R package recommendation dataset. The dataset was used for a competition hosted by Kaggle. You can find the description here: https://www.kaggle.com/c/R [1].

We have packaged the necessary files in a github repository for you: https://github.com/rxin/r_recommendation_system

Main files of interest in this repository include:

* pmf.py: A Python implementation of Probabilistic Matrix Factorization.
* competition/example_model*: Logistic regression based recommendation models in R.
* competition/data/training_data.csv: The training data set.

Models
------
You should evaluate two different models for collaborative filtering, one of which should be based on the Probabilistic Matrix Factorization (PMF) code provided in class [3]. You will need to write code for transforming the training data into the desired input for the provided PMF code as well as code to do the binary predictions and evaluations.

You have freedom to choose the second model you would like to test. Some simple models include linear regression, logistic regression, K nearest neighbor. You are free to use the language of your choice, although Python or R is preferred. [2] provides three example logistic regression models implemented in R. Even for a simple logistic regression model, you will have a lot of freedom in feature selection. For example, you can produce new features by combining existing, preset features.

Depending on how robust your models are, you might need to clean the data before training. For example, the training data file contains duplicated entries and sometimes missing values for the “Installed” field. You will need to remove these entries for training and evaluation.

Evaluation
----------
To understand the performance of your models, you should do a 10-fold cross-validation of them and compute AUC (area under the receiver operator curve). See wikipedia [4] for the definition of k-fold cross-validation and the Kaggle competition page for how to compute AUC [5].

Some models might require you to tune parameters (e.g. in the case of PMF, the number of latent features) and select features. You should experiment with different combinations.

Submission
----------
You should turn in a write-up and the source code, contained in a zip file, on coursekit. You will be graded primarily on your writeup.

**report.pdf**: The writeup should be self-explanatory, and with sufficient details in a way that audiences not taking this class could follow your writeup to reproduce the results. Important points to cover (but not limited to) include:
* Models you implemented and the significant choices you made (e.g. batch vs stochastic gradient descent, regularization, distance metrics).
* Parameters (e.g. number of latent factors, feature selections) you tuned and how that affected performance, both performance in terms of run-time and in terms of quality.
* Tables or figures of the ROC plot, AUC scores for comparing parameters and models.
* Observations you made about the models or data. This is more interesting than having a reiteration of the formal definitions of the various models.

There is no set length for write-ups, but you can target about 3-4 pages, including your evaluation results, a graph or two, and some interesting examples.

**Source code**: Include the source code along with instructions (name it README) on how to run the code.

Resources
----------

[1] Kaggle R package recommendation competition: https://www.kaggle.com/c/R

[2] Github repository: https://github.com/rxin/r_recommendation_system

[3] Probabilistic Matrix Factorization: https://github.com/rxin/r_recommendation_system/blob/master/pmf.py

[4] k-fold cross validation: http://en.wikipedia.org/wiki/Cross-validation_(statistics)#K-fold_cross-validation

[5] AUC and ROC: https://www.kaggle.com/c/R/details/Evaluation

Acknowledgement
---------------
We would like to thank Lei Li of UC Berkeley and Yang Zhang of Slice Data for providing feedback on this assignment, Danny Tarlow of University of Toronto for his implementation of probabilistic matrix factorization, and finally Kaggle and Dataists for the R recommendation dataset.


