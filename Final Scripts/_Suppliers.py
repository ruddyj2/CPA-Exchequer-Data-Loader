import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
 
select idxAcCode,
 suIdxAcCode,
 idxAcType,
 suType,
 suCompany,
 suIdxCompany,
 suArea,
 suAccType,
 suStateTo,
 suVatRegNo,
 suIdxVATRegNo,
 suAddr1,
 suAddr2,
 suAddr3,
 suAddr4,
 suAddr5,
 suDespAddr,
 suDelAddr1,
 suDelAddr2,
 suDelAddr3,
 suDelAddr4,
 suDelAddr5,
 suContact,
 suPhone,
 suIdxPhone,
 suFax,
 suTheirAcc,
 suIdxTheirAcc,
 suOwnTerms,
 suTradeTerm1,
 suTradeTerm2,
 suCurrency,
 suVATCode,
 suPayTerms,
 suCredLim_1,
 suCredLim_2,
 suDiscount_1,
 suDiscount_2,
 suCreditStatus,
 suCostCentre,
 suDiscBand,
 suSettleDays,
 suBalance_1,
 suBalance_2,
 suDepartment,
 suInEC,
 suStatement,
 suSalesGL,
 suLocation,
 suAccStatus,
 suPayType,
 suBankSort_Old,
 suBankAccount_Old,
 suBankRef,
 suMobile,
 suCOSGL,
 suCreditGL,
 suLastUpdate,
 suUser1,
 suUser2,
 suInvoiceTo,
 suIdxInvoiceTo,
 suAutoWOff,
 suFormSet,
 suBookOrderVal,
 suDirDebMode,
 suSettleDisc,
 suIdxPostCode,
 suIdxAltCode,
 suUser3,
 suUser4,
 suTimeChange,
 suIdxEmailAddr,
 suHeadOffice,
 suDefaultTagNo,
 suUser5,
 suUser6,
 suUser7,
 suUser8,
 suUser9,
 suUser10,
 suEncryptedSortCode,
 suEncryptedBankAccN,
 suEncryptedMandateI,
 suMandateId,
 suDeliveryPostCode,
 IdxSubType,
 suLongAcCode,
 suIdxLongACCode,
 suSpareOP,
 suCountry,
 suDeliveryCountry,
 suPPDMode,
 suSpareAnon,
 suApplyPVA,
 suEORINumber,
 suNITrader,
 suSpare1,
 suSpare2 from Suppliers

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
csv_file = 'Suppliers_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

