import pandas as pd
import re

df = pd.read_excel('/Users/malek/Documents/dedaub_Bard.xlsx')

# def extract_rating_category(text):
#     rating_match = re.search(r'\*\*Rating: (.+?)\*\*', text)
#     category_match = re.search(r'\*\*Category: (.+?)\*\*', text)
#     rating = rating_match.group(1) if rating_match else None
#     category = category_match.group(1) if category_match else None
#     return rating, category

def extract_rating_category(text):
    if not isinstance(text, str):  # Check if 'text' is not a string
        return None, None  # Return None for both rating and category if 'text' is not a string
    rating_match = re.search(r'\*\*Rating: (.+?)\*\*', text)
    category_match = re.search(r'\*\*Category: (.+?)\*\*', text)
    rating = rating_match.group(1) if rating_match else None
    category = category_match.group(1) if category_match else None
    return rating, category

# Apply the function to the column with data
df['Extracted'] = df['analysis__raw_response'].apply(lambda x: extract_rating_category(x) if pd.notnull(x) else (None, None))


# Split the tuple into separate columns if needed
df[['Rating', 'Category']] = df['Extracted'].apply(pd.Series)

# Drop the 'Extracted' column as it's no longer needed
df.drop('Extracted', axis=1, inplace=True)

# Save the result back to Excel if needed
df.to_excel('output.xlsx', index=False)
