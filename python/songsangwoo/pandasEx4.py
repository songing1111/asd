import pandas as pd

family_df = 'family.csv'
family_df.drop_duplicates(inplace=True)
print(family_df)
print(family_df.shape)