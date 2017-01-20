# Codebook
## This codebook describes the variables in our exercise
A lot of the information references the original document from the Provider Utilization and Payment Data Inpatient Public Use File. It contains hospital-specific charges for the more than 3,000 U.S. hospitals that receive Medicare Inpatient Prospective Payment System (IPPS) payments paid under Medicare based on a rate per discharge using the Medicare Severity Diagnosis Related Group (MS-DRG).

Extra background: Hospitals determine what they will charge for items and services provided to patients and these charges are the amount the hospital bills for an item or service. The Total Payment amount includes the MS-DRG amount, bill total per diem, beneficiary primary payer claim payment amount, beneficiary Part A coinsurance amount, beneficiary deductible amount, beneficiary blood deducible amount and DRG outlier amount.

### Source of Data
https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Inpatient2011.html

- Download the data: https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Downloads/Inpatient_Data_2011_CSV.zip

## Variables
12 variables in total, 6401 observations

The following variables are included in the detailed Inpatient PUF data file:
- DRG Definition: The code and description identifying the MS-DRG. MS-DRGs are a classification system that groups similar clinical conditions (diagnoses) and the procedures furnished by the hospital during the stay.
- Provider Id: The CMS Certification Number (CCN) assigned to the Medicare certified hospital facility.
- Provider Name: The name of the provider.
- Provider Street Address: The provider’s street address.
- Provider City: The city where the provider is located.
- Provider State: The state where the provider is located.
- Provider Zip Code: The provider’s zip code.
- Provider HRR: The Hospital Referral Region (HRR) where the provider is located.
- Total Discharges: The number of discharges billed by the provider for inpatient hospital services.
- Average Covered Charges: The provider's average charge for services covered by Medicare for all discharges in the MS-DRG. These will vary from hospital to hospital because of differences in hospital charge structures.
- Average Total Payments: The average total payments to all providers for the MS-DRG including the MSDRG amount, teaching, disproportionate share, capital, and outlier payments for all cases. Also included in average total payments are co-payment and deductible amounts that the patient is responsible for and any additional payments by third parties for coordination of benefits. 
- Average Medicare Payments: The average amount that Medicare pays to the provider for Medicare's share of the MS-DRG. Average Medicare payment amounts include the MS-DRG amount, teaching, disproportionate share, capital, and outlier payments for all cases. Medicare payments DO NOT include beneficiary co-payments and deductible amounts nor any additional payments from third parties for coordination of benefits. Note: In general, Medicare FFS claims with dates-of-service or dates-of-discharge on or after April 1, 2013, incurred a 2 percent reduction in Medicare payment. This is in response to mandatory across-the-board reductions in Federal spending, also known as
sequestration.

Credit: The Centers for Medicare and Medicaid Services, Office of Enterprise Data and Analytics