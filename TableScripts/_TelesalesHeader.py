import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
 
select  tcIdxCode1,
 tcIdxCode2,
 tcIdxCode3,
 idxAcCode,
 tcDocType,
 tcCurr,
 tcCompanyRate_1,
 tcCompanyRate_2,
 tcDailyRate_1,
 tcDailyRate_2,
 tcOldYourRef,
 --tcLYRef,
 tcDepartment,
 --tcCostCentre,
-- tcLocCode,
 IdxJobCode,
 IdxAnalCode,
 --tcDAddr1,
 tcDAddr2,
--tcDAddr3,
 --tcDAddr4,
-- tcDAddr5,
 tcTDate,
 tcDelDate,
 tcNetTotal,
 tcVATTotal,
 tcDiscTotal,
 --tcLastOpo,
 tcInProg,
 tcTransNat,
 tcTransMode,
 --tcDelTerms,
 tcCtrlCode,
 tcVATCode,
 tcOrdMode,
 tcScaleMode,
 tcLineCount,
 tcWasNew,
 tcUseORate,
 tcDefaultGLCode,
 tcInclusiveVATCode,
 tcDefSettleDisc,
 tcTransactionType,
 tcTagNo,
 tcLockAddr,
 Spare2a,
 Spare2b,
 --tcYourRef,
 tcDeliveryPostCode,
 tcDeliveryCountry,
 tcSSDProcess,
 tcSpare1,
 
 
 
 tcSpare2 from TelesalesHeader

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
csv_file = 'TelesalesHeader_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

