import pandas as pd

csv_filename = 'family.csv'
json_filename = 'family.json'

family_df = pd.read_csv(csv_filename)
print(family_df)

family_df = pd.read_json(json_filename)
print(family_df)