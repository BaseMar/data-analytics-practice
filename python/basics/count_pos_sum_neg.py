"""
Given an array of integers.

Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers. 0 is neither positive nor negative.

If the input is an empty array or is null, return an empty array.
"""

def count_positives_sum_negatives(arr):
    if not arr:
        return []
    
    pos_counter = sum(1 for x in arr if x > 0)
    neg_sum = sum(x for x in arr if x < 0)
    
    return [pos_counter, neg_sum]
