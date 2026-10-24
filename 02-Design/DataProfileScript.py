import pandas as pd
from data_profiling import ProfileReport

files = [
    "users.csv",
    "products.csv",
    "orders.csv",
    "order_items.csv"
]

for file in files:
    print(f"Generating profile for {file}...")

    df = pd.read_csv(
        f"C:/Users/mpilo/Downloads/archive (11)/{file}"
    )

    profile = ProfileReport(
        df,
        title=f"{file} Profile Report"
    )

    profile.to_file(f"{file}_profile.html")

print("All profiles generated successfully.")