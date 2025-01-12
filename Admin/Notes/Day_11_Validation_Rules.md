# Salesforce Validation Rules

Validation rules in Salesforce are powerful tools to ensure data integrity by enforcing business rules on the data entered by users. These rules are written in Salesforce's formula language and evaluate to `true` or `false`. If a validation rule evaluates to `true`, an error message is displayed, and the user cannot save the record.

---

## ✨ What are Validation Rules?
Validation rules verify that the data entered by a user meets the criteria defined before the data is saved. They help:

- Prevent bad data from entering the system.
- Enforce consistent business processes.
- Enhance data quality and integrity.

### Components of Validation Rules:
1. **Rule Name**: A unique identifier for the rule.
2. **Formula**: The condition that evaluates to `true` or `false`.
3. **Error Message**: Displayed when the rule is violated.
4. **Error Location**: Field-specific or top of the page.

---

## 🛠️ Examples of Validation Rules

### 1. **Simple Example: Ensure Field is Not Empty**
**Scenario:** Ensure the "Phone" field is not left blank when creating a contact.

**Formula:**
```plaintext
ISBLANK(Phone)
```
**Error Message:** "Phone number cannot be blank."
**Error Location:** Phone field.

### 2. **Ensure Numeric Range**
**Scenario:** Ensure the "Discount" field is between 0 and 50.

**Formula:**
```plaintext
OR(Discount__c < 0, Discount__c > 50)
```
**Error Message:** "Discount must be between 0 and 50."

### 3. **Conditional Logic Example**
**Scenario:** If "Account Type" is "Customer", then the "Customer Priority" field must not be blank.

**Formula:**
```plaintext
AND(ISPICKVAL(Account_Type__c, "Customer"), ISBLANK(Customer_Priority__c))
```
**Error Message:** "Customer Priority is required for Customer accounts."

### 4. **Prevent Past Dates**
**Scenario:** Ensure the "Start Date" is not a past date.

**Formula:**
```plaintext
Start_Date__c < TODAY()
```
**Error Message:** "Start Date cannot be in the past."

### 5. **Advanced Example: Dependent Field Validation**
**Scenario:** If "Contract Signed" is checked, ensure "Contract Date" is filled.

**Formula:**
```plaintext
AND(Contract_Signed__c = TRUE, ISBLANK(Contract_Date__c))
```
**Error Message:** "Contract Date is required when Contract Signed is checked."

---

## 🧩 Real-World Scenarios and Solutions

### 1. **Scenario: Prevent Duplicates in a Custom Field**
Prevent duplicate entries in a "Unique Identifier" field.

**Formula:**
This requires using a combination of validation rules and unique field settings. Validation rules alone cannot check duplicates across records, so set the field as "Unique" in the object settings.

---

### 2. **Scenario: Limit Field Update Based on User Role**
Allow only users with the "Manager" role to edit the "Approval Status" field.

**Formula:**
```plaintext
AND(NOT($Profile.Name = "Manager"), ISCHANGED(Approval_Status__c))
```
**Error Message:** "Only Managers can change the Approval Status."

---

### 3. **Scenario: Custom Fiscal Year Enforcement**
Ensure that the "Close Date" for an Opportunity falls within the current fiscal year.

**Formula:**
```plaintext
NOT(AND(YEAR(CloseDate) = YEAR(TODAY()), MONTH(CloseDate) <= 12))
```
**Error Message:** "Close Date must fall within the current fiscal year."

---

## 🔍 Functions in Validation Rules with Examples

Salesforce provides a wide range of functions that can be used in validation rules. Below are some key functions with advanced examples:

### 1. **ISBLANK / ISNULL**
**Purpose:** Check if a field is blank or null.

**Example:** Prevent saving a record if both "Phone" and "Email" are blank.
```plaintext
AND(ISBLANK(Phone), ISBLANK(Email))
```
**Error Message:** "Either Phone or Email must be filled."

---

### 2. **ISPICKVAL**
**Purpose:** Evaluate picklist values.

**Example:** Ensure "Reason for Loss" is provided when "Stage" is set to "Closed Lost".
```plaintext
AND(ISPICKVAL(StageName, "Closed Lost"), ISBLANK(Reason_for_Loss__c))
```
**Error Message:** "Reason for Loss is required for Closed Lost opportunities."

---

### 3. **CONTAINS**
**Purpose:** Check if a text field contains a specific substring.

**Example:** Prevent the use of certain words in a "Comments" field.
```plaintext
CONTAINS(Comments__c, "confidential")
```
**Error Message:** "The word 'confidential' is not allowed in Comments."

---

### 4. **REGEX**
**Purpose:** Validate input using regular expressions.

**Example:** Ensure a "Phone" field matches a specific format (e.g., (123) 456-7890).
```plaintext
NOT(REGEX(Phone, "^\\(\\d{3}\\) \\d{3}-\\d{4}$"))
```
**Error Message:** "Phone number must be in the format (123) 456-7890."

---

### 5. **LEN**
**Purpose:** Check the length of a text field.

**Example:** Ensure "Description" does not exceed 255 characters.
```plaintext
LEN(Description) > 255
```
**Error Message:** "Description cannot exceed 255 characters."

---

### 6. **TEXT**
**Purpose:** Convert picklist or other non-text values to text.

**Example:** Validate that "Industry" is not set to "Other".
```plaintext
TEXT(Industry) = "Other"
```
**Error Message:** "Please specify a valid Industry."

---

### 7. **AND / OR**
**Purpose:** Combine multiple conditions.

**Example:** Ensure "Budget" is provided for high-priority opportunities.
```plaintext
AND(ISPICKVAL(Priority__c, "High"), ISBLANK(Budget__c))
```
**Error Message:** "Budget is required for High Priority opportunities."

---

## 🌟 Best Practices for Validation Rules

- **Use Descriptive Names:** Ensure rule names clearly reflect their purpose.
- **Combine Conditions Smartly:** Use `AND` and `OR` effectively for complex conditions.
- **Test Thoroughly:** Verify rules in a sandbox environment before deploying.
- **Provide User-Friendly Error Messages:** Write clear, actionable messages.
- **Minimize Errors:** Avoid overly restrictive rules that may frustrate users.

---

## 📝 Resources for Learning
- Salesforce Trailhead: [Validation Rules Module](https://trailhead.salesforce.com/)
- Salesforce Help Documentation: [Validation Rules](https://help.salesforce.com/)

---

### 🎯 Key Takeaways
- Validation rules enhance data quality by enforcing business rules.
- Start simple, and gradually create advanced rules based on your needs.
- Always communicate the purpose of a rule through clear error messages.

✨ *Validation rules ensure the right data enters your Salesforce org—making your system smarter and more reliable!* ✨
