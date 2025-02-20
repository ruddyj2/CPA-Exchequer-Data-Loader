import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
  select brIdxRecSub,
 brSpare,
 brIdxCode1,
 brBinCode,
 brSpare1,
 brIdxCode2,
 brSpare2,
 brIdxCode3,
-- brInDocRef,
 brOurDocRef,
 brSold,
 brInDate,
 brCostPrice,
 brCapacity,
 brSpare3,
 brStockFolio,
-- brOutDate,
 brOutDocLine,
 brInDocLine,
 brSpare4,
 brQty,
 brQtyUsed,
 brUsedRecord,
 --brInLocation,
 brSpare5,
 --brOutLocation,
 brSpare6,
 brOutOrderRef,
 brInOrderRef,
 brInOrderLine,
 brOutOrderLine,
 brCostPriceCurrency,
 --brPickingPriority,
 brSalesPrice,
 brCompanyRate_1,
 brCompanyRate_2,
 brDailyRate_1,
 brDailyRate_2,
 brUseORate,
 brTriRate,
 brTriEuro,
 brTriInvert,
 brTriFloat,
 brTriSpare,
 --brUseByDate,
 brSalesPriceCurrency,
 --brUnitOfMeasure,
 brAutoPickMode,
 brTagNo,
 brReturned,
 brSpare7,
 brSpare8,
 brSpare9,
 brSpare10,
 brSpare11 from MultiBins


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
csv_file = 'MultiBins_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

