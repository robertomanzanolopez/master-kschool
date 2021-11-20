'''
Module with all function defined for this tips.csv exercise
'''

#Esto me crea un archivo con ese nombre y el contenido de las comillas


def top(df, n=5, col='tip_pct'):
    '''
    Gives top n rows using descending order.
    In other words: TOP n

    inputs:
    - df: dataframe
    - n: number of top elements
    - col: column used for ordering

    return:
    - dataframe sorted by col with head(n)

    '''
    return df.sort_values(by=col, ascending=False).head(n)
