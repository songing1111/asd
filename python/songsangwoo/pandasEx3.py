import pandas as pd

csv_filename = 'family.csv'
family_df = pd.read_csv(csv_filename)

print(family_df.head())
print(family_df.info())
print(family_df.tail())
print(family_df.describe())
