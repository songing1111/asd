import pandas as pd

family_df = pd.read_csv('./family.csv')
family_add_df = pd.read_csv('./family_new.csv')
family_df = family_df.append(family_add_df, ignore_index=True)
print(family_df)

mean_age = family_df['나이'].mean().astype('int')
family_df['나이'].fillna(mean_age,inplace=True)
family_df['취미'].fillna('없음',inplace=True)

family_df.to_csv('./가족.csv',index=False)