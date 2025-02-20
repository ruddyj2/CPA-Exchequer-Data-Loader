import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
 
select idxFolio, 
 tlFolio, 
 tlLinePos, 
 tlRunNo, 
 tlGLCode, 
 tlIdxGLNom, 
 tlIdxNomPeriod, 
 tlShowInGL, 
 tlCurrency, 
 tlIdxCcyYrPr, 
 tlYear, 
 tlPeriod, 
 tlDepartment, 
 tlCostCentre, 
 tlStockCode, 
 IdxStockCode, 
 tlIdxStockCode, 
 idxLineNo, 
 tlLineNo, 
 tlLineClass, 
 tlDocType, 
 tlQty_1, 
 tlQty_2, 
 tlQtyMul_1, 
 tlQtyMul_2, 
 tlNetVal_1, 
 tlNetVal_2, 
 tlDiscount_1, 
 tlDiscount_2, 
 tlVATCode, 
 tlVATAmt_1, 
 tlVATAmt_2, 
 tlPayStatus, 
 tlPrevGLBal_1, 
 tlPrevGLBal_2, 
 tlRecStatus, 
 tlDiscFlag, 
 tlQtyWOff_1, 
 tlQtyWOff_2, 
 tlQtyDel_1, 
 tlQtyDel_2, 
 tlCost_1, 
 tlCost_2, 
 tlAcCode, 
 idxAcCode, 
 tlIdxAcCode, 
 tlTransDate, 
 tlIdxTransDate, 
 tlItemNo, 
 tlDescr, 
 tlJobCode, 
 tlJobAnal, 
 tlCompanyRate_1, 
 tlCompanyRate_2, 
 tlDailyRate_1, 
 tlDailyRate_2, 
 tlUnitWeight_1, 
 tlUnitWeight_2, 
 tlStockDeductQty_1, 
 tlStockDeductQty_2, 
 tlBOMKitLink, 
 tlOrderFolio, 
 tlOrderLineNo, 
 tlLocation, 
 IdxLocCode, 
 tlQtyPicked_1, 
 tlQtyPicked_2, 
 tlQtyPickedWO_1, 
 tlQtyPickedWO_2, 
 tlUseQtyMul, 
 tlNoSerialNos_1, 
 tlNoSerialNos_2, 
 tlCOSGL, 
 tlOurRef, 
 tlLineType, 
 tlPriceByPack, 
 tlQtyInPack, 
 tlClearDate, 
 tlUser1, 
 tlUser2, 
 tlUser3, 
 tlUser4, 
 tlB2BLinkFolio, 
 tlB2BLineNo, 
 tlUseLine, 
 tlCOSConvRate, 
 tlIncNetValue, 
 tlAutoLineType, 
 tlCISRateCode, 
 tlCISRate, 
 tlCostApport, 
 tlNOMIOFlg, 
 tlBinQty, 
 tlCISAdjustment, 
 tlDeductType, 
 tlSerialReturnQty, 
 tlBinReturnQty, 
 tlDiscount2_1, 
 tlDiscount2_2, 
 tlDiscount2Chr, 
 tlDiscount3_1, 
 tlDiscount3_2, 
 tlDiscount3Chr, 
 tlDiscount3Type, 
 tlECService, 
 tlServiceStartDate, 
 tlIdxServiceStartDat, 
 tlServiceEndDate, 
 tlECSalesTaxReported, 
 tlPurchaseServiceTax, 
 tlReference, 
 tlReceiptNo, 
 tlFromPostCode, 
 tlToPostCode, 
 tlUser5, 
 tlUser6, 
 tlUser7, 
 tlUser8, 
 tlUser9, 
 tlUser10, 
 tlThresholdCode, 
 tlMaterialsOnlyReten, 
 tlIntrastatNoTC, 
 Spare2 from TransactionLines

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
csv_file = 'TransactionLines_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

