library(tidyverse)
library(tidymodels)
library(magrittr)
library(glmnet)
library(rsample)


# load housing data from UCI 
housing <- read_table("http://archive.ics.uci.edu/ml/machine-learning-databases/housing/housing.data", col_names = FALSE)
names(housing) <- c("crim","zn","indus","chas","nox","rm","age","dis","rad","tax","ptratio","b","lstat","medv")

# set the seed to 123456
set.seed(123456)

# create two data sets called housing_train and housing_test
housing_split <- initial_split(housing, prop = 0.8)
housing_train <- training(housing_split)
housing_test  <- testing(housing_split)

# create a recipe 
housing_recipe <- recipe(medv ~ ., data = housing) %>%
  step_log(all_outcomes()) %>%
  step_bin2factor(chas) %>%
  step_interact(terms = ~ crim:zn:indus:rm:age:rad:tax:ptratio:b:lstat:dis:nox) %>%
  step_poly(crim,zn,indus,rm,age,rad,tax,ptratio,b,lstat,dis,nox, degree=6)
  
# run the recipe
housing_prep <- housing_recipe %>% prep(housing_train, retain = TRUE)
housing_train_prepped <- housing_prep %>% juice
housing_test_prepped <- housing_prep %>% bake(new_data = housing_test)

# create x and y training and test data
housing_train_x <- housing_train_prepped %>% select(-medv)
housing_test_x <- housing_test_prepped %>% select(-medv)
housing_train_y <- housing_train_prepped %>% select( medv)
housing_test_y <- housing_test_prepped %>% select( medv)

tune_spec <- linear_reg(
  penalty = tune(), # tuning parameter
  mixture = 1       # 1 = lasso, 0 = ridge
) %>% 
  set_engine("glmnet") %>%
  set_mode("regression")
# define a grid over which to try different values of lambda
lambda_grid <- grid_regular(penalty(), levels = 50)
# 10-fold cross-validation
rec_folds <- vfold_cv(housing_train_prepped, v = 10)
print (rec_folds)

# Workflow
rec_wf <- workflow() %>%
  add_formula(log(medv) ~ .) %>%
  add_model(tune_spec) #%>%
#add_recipe(housing_recipe)
# Tuning results
rec_res <- rec_wf %>%
  tune_grid(
    resamples = rec_folds,
    grid = lambda_grid
  )

top_rmse  <- show_best(rec_res, metric = "rmse")
best_rmse <- select_best(rec_res, metric = "rmse")

# Now train with tuned lambda
final_lasso <- finalize_workflow(rec_wf, best_rmse)
# Print out results in test set
last_fit(final_lasso, split = housing_split) %>%
  collect_metrics() %>% print
# show best RMSE
top_rmse %>% print(n = 1)





tune_spec <- linear_reg(
  penalty = tune(), # tuning parameter
  mixture = 0       # 1 = lasso, 0 = ridge
) %>% 
  set_engine("glmnet") %>%
  set_mode("regression")
# define a grid over which to try different values of lambda
lambda_grid <- grid_regular(penalty(), levels = 50)
# 10-fold cross-validation
rec_folds <- vfold_cv(housing_train_prepped, v = 10)
print (rec_folds)

# Workflow
rec_wf <- workflow() %>%
  add_formula(log(medv) ~ .) %>%
  add_model(tune_spec) #%>%
#add_recipe(housing_recipe)
# Tuning results
rec_res <- rec_wf %>%
  tune_grid(
    resamples = rec_folds,
    grid = lambda_grid
  )

top_rmse  <- show_best(rec_res, metric = "rmse")
best_rmse <- select_best(rec_res, metric = "rmse")

# Now train with tuned lambda
final_lasso <- finalize_workflow(rec_wf, best_rmse)
# Print out results in test set
last_fit(final_lasso, split = housing_split) %>%
  collect_metrics() %>% print
# show best RMSE
top_rmse %>% print(n = 1)
