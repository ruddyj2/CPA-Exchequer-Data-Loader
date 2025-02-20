import pyodbc
import csv
import time
import re

# Connect to the database (ensure ODBC connection is 32-bit)
connection = pyodbc.connect("DSN=zen32")
cursor = connection.cursor()


cursor.execute("""
select idxAcCode,
 cuIdxAcCode,
 cuType,
 idxAcType,
 cuCompany,
 cuIdxCompany,
 cuArea,
 cuAccType,
 cuStateTo,
 cuVATRegNo,
 cuIdxVATRegNo,
 cuAddr1,
 cuAddr2,
 cuAddr3,
 cuAddr4,
 cuAddr5,
 cuDespAddr,
 cuDelAddr1,
 cuDelAddr2,
 cuDelAddr3,
 cuDelAddr4,
 cuDelAddr5,
 cuContact,
 cuPhone,
 cuIdxPhone,
 cuFax,
 cuTheirAcc,
 cuIdxTheirAcc,
 cuOwnTerms,
 cuTradeTerm1,
 cuTradeTerm2,
 cuCurrency,
 cuVATCode,
 cuPayTerms,
 cuCredLim_1,
 cuCredLim_2,
 cuDiscount_1,
 cuDiscount_2,
 cuCreditStatus,
 cuCostCentre,
 cuDiscBand,
 cuSettleDays,
 cuDepartment,
 cuInEC,
 cuStatement,
 cuSalesGL,
 cuLocation,
 cuAccStatus,
 cuPayType,
 cuBankSort_Old,
 cuBankAccount_Old,
 cuBankRef,
 cuMobile,
 cuCOSGL,
 cuDebtGL,
 cuLastUpdate,
 cuUser1,
 cuUser2,
 cuIdxInvoiceTo,
 cuInvoiceTo,
 cuAutoWOff,
 cuFormSet,
 cuBookOrderVal,
 cuDirDebMode,
 cuCreditCardStart,
 cuCreditCardEnd,
 cuCreditCardName,
 cuCreditCardNo,
 cuCreditCardRef,
 cuSettleDisc,
 cuIdxPostCode,
 cuIdxAltCode,
 cuUser3,
 cuUser4,
 cuWebCatalogs,
 cuTimeChange,
 cuIdxEmailAddr,
 cuHeadOffice,
 cuDefaultTagNo,
 cuUser5,
 cuUser6,
 cuUser7,
 cuUser8,
 cuUser9,
 cuUser10,
 cuEncryptedSortCode,
 cuEncryptedBankAccNo,
 cuEncryptedMandateId,
 cuMandateDate,
 cuDeliveryPostCode,
 IdxSubType,
 cuLongACCode,
 cuIdxLongAcCode,
 cuAllowOrderPayments,
 cuOrderPaymentsGLCod,
 cuCountry,
 cuDeliveryCountry,
 cuPPDMode,
 cuDefaultToQR,
 cuSpareAnon,
 cuRCEndUser,
 cuEORINumber,
 cuNITrader,
 cuSpare1,
 cuSpare2 from Customers
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
csv_file = 'Customers_Output_UTF8.csv'
with open(csv_file, mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)  # Write header row
    
    for row in rows:
        writer.writerow([clean_text(value) for value in row])  # Write cleaned data rows

