import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
 
select slIdxRecSub, 
 slSubType_D, 
 slIdxStockLoc, 
 slIdxLocStock, 
 slIdxSupp, 
 --slStockCode, 
 idxStockCode, 
 slStockFolio, 
 slLocCode, 
 IdxLocCode, 
 slQtyInStock, 
 slQtyOnOrder, 
 slQtyAllocated, 
 slQtyPicked, 
 slQtyMin, 
 slQtyMax, 
 slQtyFreeze, 
 slReOrderQty, 
 --slReOrderDate, 
 slRoDepartment, 
 slROCostCentre, 
 slDepartment, 
 slCostCentre, 
 slBinLocation, 
 slSalesBandACur, 
 slSalesBandAPrice_1, 
 slSalesBandAPrice_2, 
 slSalesBandBCur, 
 slSalesBandBPrice_1, 
 slSalesBandBPrice_2, 
 slSalesBandCCur, 
 slSalesBandCPrice_1, 
 slSalesBandCPrice_2, 
 slSalesBandDCur, 
 slSalesBandDPrice_1, 
 slSalesBandDPrice_2, 
 slSalesBandECur, 
 slSalesBandEPrice_1, 
 slSalesBandEPrice_2, 
 slSalesBandFCur, 
 slSalesBandFPrice_1, 
 slSalesBandFPrice_2, 
 slSalesBandGCur, 
 slSalesBandGPrice_1, 
 slSalesBandGPrice_2, 
 slSalesBandHCur, 
 slSalesBandHPrice_1, 
 slSalesBandHPrice_2, 
 slReOrderPrice, 
 slReOrderCur, 
 slCostPrice, 
 slCostPriceCur, 
 slSalesGL, 
 slCOSGL, 
 'slP&LGL', 
  slBalSheetGL, 
 slWIPGL, 
 slStkFlag, 
 slMinFlag, 
 --slTempSupp,
 --slSupplier, 
 --slLastUsed, 
 slQtyPosted, 
 slQtyTake, 
 slROFlag, 
 slTimeChange, 
 slQtyAllocWOR, 
 slQtyIssuedWOR, 
 slQtyPickedWOR, 
 slWOPIssuedWIPGL, 
 slSalesWarrantyLengt, 
 slSalesWarrantyUnits, 
 slManWarrantyLength, 
 slManWarrantyUnits, 
 slPurchaseReturnQty, 
 slSalesReturnGL, 
 slRestockCharge, 
 slRestockGL, 
 slBOMDedComp, 
 slSalesReturnQty, 
 slPurchaseReturnGL, 
 slSpare1, 
 slSpare2, 
 slSpare3, 
 slSpare4, 
 slSpare5 from StockLocation

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
csv_file = 'StockLocation_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

