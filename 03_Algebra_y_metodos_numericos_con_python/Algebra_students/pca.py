def pca(X):
    X_norm = (X - np.mean(X)) / np.std(X)
    X_norm_cov = np.cov(X_norm.T)
    U,*_ = la.svd(X_norm_cov)
    return U

def proyect_data(X,k):
    U = pca(X)
    return np.dot(X,U[:,:k])

def reduce_data(X,k):
    U = pca(X)
    Z = proyect_data(X,k)
    X_reduce = np.dot(Z,U[:,:k].T)
    return X_reduce
