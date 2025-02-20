import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
    SELECT 
        baIdxRecSub, baSpare, baIdxCode1, baSpare1, baIdxCode2, baSpare2, 
        baIdxCode3, baGLCode, baProduct, baOutputPathLB, baOutputPath, 
        baPayFilenameLB, baPayFilename, baRecFilenameLB, baRecFilename, 
        baStatementPathLB, baStatementPath, baSwiftRef1LB, baSwiftRef1, 
        baSwiftRef2LB, baSwiftRef2, baSwiftRef3LB, baSwiftRef3, 
        baSwiftBICLB, baSwiftBIC, baRouteCodeLB, baRouteCode, 
        baChargeInstLB, baChargeInst, baRouteMethod, baLastDateLB, 
        baLastDate, baSortCodeLB, baSortCode, baAccountNoLB, baAccountNo, 
        baReferenceLB, baReference, baUserIDLB, baUserID, 
        baSpare3, baSpare4, baSpare5, baSpare6 
    FROM BankAccounts
""")

# Fetch all results
rows = cursor.fetchall()



# Get column names from cursor description
columns = [column[0] for column in cursor.description]

# Function to clean and convert text to UTF-8
def clean_text(value):
    if isinstance(value, str):
        value = value.encode("ISO-8859-1", errors="ignore").decode("utf-8", errors="ignore")  # Convert to UTF-8
        value = re.sub(r'[\x00-\x1F\x7F]', '', value)  # Remove control characters
    return value

# Start CSV writing timer
csv_start_time = time.time()

# Write results to CSV file
csv_file = 'BankAccounts_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

