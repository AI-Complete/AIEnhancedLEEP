from tensorflow.keras.optimizers import Adam
from tensorflow.keras.callbacks import EarlyStopping, ReduceLROnPlateau
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense

def neural_network_tuning(data):
    model = initialize_neural_network()
    compile_and_train(model, data)
    return model

def compile_and_train(model, data):
    optimizer = Adam(learning_rate=0.001)
    early_stopping = EarlyStopping(monitor='val_loss', patience=5)
    reduce_lr = ReduceLROnPlateau(monitor='val_loss', factor=0.2, patience=5)

    model.compile(optimizer=optimizer, loss='binary_crossentropy', metrics=['accuracy'])
    model.fit(data, epochs=50, batch_size=64, callbacks=[early_stopping, reduce_lr])

def initialize_neural_network():
    model = Sequential()
    model.add(Dense(128, activation='relu', input_shape=(100,))) # Example input shape
    model.add(Dense(64, activation='relu'))
    model.add(Dense(1, activation='sigmoid'))
    return model
