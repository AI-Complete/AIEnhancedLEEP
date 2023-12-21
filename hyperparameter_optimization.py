from sklearn.model_selection import RandomizedSearchCV
from tensorflow.keras.wrappers.scikit_learn import KerasClassifier

def hyperparameter_optimization(network, data):
    random_search = setup_random_search(network)
    return perform_search(random_search, data)

def setup_random_search(network):
    param_dist = {'batch_size': [16, 32, 64], 'epochs': [10, 20, 30]}
    return RandomizedSearchCV(estimator=network, param_distributions=param_dist, n_iter=10, cv=3, n_jobs=-1)

def perform_search(search, data):
    search_result = search.fit(data, labels)
    return search_result.best_estimator_.model
