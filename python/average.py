# Business context:
# Calculating the average value is a common step in data analysis.
# It helps understand the typical value in a dataset (e.g. average sales, average revenue).

def find_average(numbers):
    return sum(numbers) / len(numbers) if numbers else 0
