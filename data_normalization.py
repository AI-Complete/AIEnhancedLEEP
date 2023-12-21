from sklearn.preprocessing import MinMaxScaler

def data_normalization(data):
    scaler = MinMaxScaler()
    cleaned_data = remove_outliers(data)
    return scaler.fit_transform(cleaned_data)

def remove_outliers(data):
    # Placeholder for outlier removal logic
    return cleaned_data
