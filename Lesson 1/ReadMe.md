# Data cleaning for a Customer-Call-List

_Problem_

The raw excel file collated the customer details [First and last Name, address, Phone number] as well as categorising them as paying customers or if they wished to be contacted.

These details were messy and unusable for outreach. Some of the issues included:

1. Null or missing entries across multiple columns
2. Inconsistent naming conventions (Yes vs Y)
3. Unwanted special characters in names and phone numbers
4. Phone numbers without standard formats
5. And a column with no useful data

The goal was to strip the dataset down to only customers who can actually be contacted.

---

_The Solution_

Using the Pandas Library, I cleaned up the dataset columns, I filtered out anyone flagged as "Do not contact" or missing a phone number. Leaving only customers comfortable with being contacted and had a complete phone number.

_Steps taken_

1. Dropped duplicate rows
2. Stripped special characters from Last_Name column.
3. Standardised Phone numbers into a XXX-XXX-XXXX format and cleared the null entries.
4. Split addresses into Street address, State, and Zip Code.
5. Normalized Paying_Customer and Do_Not_Contact entries into Y and N.
6. Dropped the "Not_Useful_Column" column.
7. Removed rows where the entries for the "Do_Not_Contact" Column was Y

---

Lessons learned

1. Always inspect columns when they look fine at a glance. In this dataset CustomerID and First_Name were fine, but the habit matters.
2. Normalizing and standardizing columns, allow for easier filtering, and clearer decision making.
3. Lambda allows you to undertake transformations for every cell in a column without an explicit loop or a seperate function.
