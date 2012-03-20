#!/usr/bin/Rscript

library('ProjectTemplate')
#try(load.project())

source("lib/boot.R")
#source("lib/run_tests.R")

logit.fit <- glm(Installed ~ LogDependencyCount +
                             LogSuggestionCount +
                             LogImportCount +
                             LogViewsIncluding +
                             LogPackagesMaintaining +
                             CorePackage +
                             RecommendedPackage,
                 data = training.data,
                 family = binomial(link = 'logit'))

summary(logit.fit)
