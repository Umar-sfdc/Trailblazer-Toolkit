# All About REGEX in Salesforce

## **What is REGEX?**
**Regular Expressions (RegEx)** are powerful string-matching patterns used to search, match, or validate text. In Salesforce, the `REGEX()` function allows you to enforce specific formats or patterns in validation rules, helping maintain data integrity.

---

## **Syntax of the REGEX() Function**
```plaintext
REGEX(text, regex_pattern)
```
- **text**: The input value to validate.
- **regex_pattern**: The regular expression pattern to match against the text.

---

## **Common Use Cases in Salesforce**
The `REGEX()` function is typically used in **validation rules** to enforce formatting for email addresses, phone numbers, IDs, and more. It can also prevent unwanted characters or enforce specific formats for text fields.

---

## **Examples of REGEX Validation Rules**

### **1. Email Validation**
```plaintext
NOT(REGEX(Email, "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"))
```
**Explanation:** Ensures the email field follows a standard email format (e.g., `user@example.com`).

---

### **2. Phone Number (10 Digits)**
```plaintext
NOT(REGEX(Phone, "\\d{10}"))
```
**Explanation:** Validates that the phone number contains exactly 10 digits.

---

### **3. Postal Code (5 Digits)**
```plaintext
NOT(REGEX(PostalCode, "\\d{5}"))
```
**Explanation:** Ensures a valid 5-digit postal code.

---

### **4. Website URL**
```plaintext
NOT(REGEX(Website, "(http|https)://[\\w.-]+(\\.[\\w\\.-]+)+[/#?]?.*$"))
```
**Explanation:** Ensures the website starts with `http://` or `https://` and follows a valid domain format.

---

### **5. Custom ID Validation (e.g., ABC-123)**
```plaintext
NOT(REGEX(Custom_Field__c, "ABC-\\d{3}"))
```
**Explanation:** Ensures the value matches the format `ABC-123` (specific prefix followed by 3 digits).

---

### **6. Prevent Special Characters**
```plaintext
REGEX(Name, "[^a-zA-Z0-9 ]")
```
**Explanation:** Matches any text containing special characters. Add `NOT()` to disallow special characters.

---

## **How to Implement REGEX in Salesforce Validation Rules**

1. **Navigate to Validation Rules:**
   - Go to **Setup** → **Object Manager** → Select your object (e.g., Account).
   - Click on **Validation Rules** → **New**.

2. **Write the Validation Rule:**
   - Use the `REGEX()` function in combination with logical functions like `NOT()`, `ISBLANK()`, etc., to define your condition.

3. **Add an Error Message:**
   - Specify an error message to guide users.

4. **Save and Test:**
   - Test the validation rule by entering invalid data.

---

## **Key REGEX Patterns**

### **Basic Syntax**
| Pattern      | Description                                   |
|--------------|-----------------------------------------------|
| `.`          | Matches any single character except newline   |
| `\d`        | Matches a digit (0-9)                        |
| `\D`        | Matches a non-digit                          |
| `\w`        | Matches a word character (alphanumeric)      |
| `\W`        | Matches a non-word character                 |
| `\s`        | Matches a whitespace character               |
| `\S`        | Matches a non-whitespace character           |
| `*`          | Matches 0 or more occurrences                |
| `+`          | Matches 1 or more occurrences                |
| `?`          | Matches 0 or 1 occurrence                    |
| `{n}`        | Matches exactly n occurrences                |
| `{n,}`       | Matches n or more occurrences                |
| `{n,m}`      | Matches between n and m occurrences          |

---

### **Escaping Special Characters**
Since Salesforce requires double escape sequences (`\\`), always escape special characters like `.` or `\` properly.

---

## **Best Practices for Using REGEX in Salesforce**

1. **Test Patterns:** Use online tools like [regex101](https://regex101.com/) to validate your expressions before implementing them in Salesforce.

2. **User-Friendly Error Messages:** Provide clear guidance in the error message to help users correct their input.

3. **Keep It Simple:** Avoid overly complex patterns that can be difficult to maintain.

4. **Combine with Other Functions:** Use functions like `ISBLANK()` to handle edge cases where fields might be empty.

---

## **Advanced REGEX Examples**

### **1. Validate Password Strength:**
```plaintext
NOT(REGEX(Password__c, "(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[!@#$%^&*])[A-Za-z\\d!@#$%^&*]{8,}"))
```
**Explanation:**
- Minimum 8 characters.
- At least one uppercase letter.
- At least one lowercase letter.
- At least one digit.
- At least one special character (!@#$%^&*).

---

### **2. Match Specific Date Format (YYYY-MM-DD):**
```plaintext
NOT(REGEX(Date__c, "\\d{4}-\\d{2}-\\d{2}"))
```
**Explanation:** Validates that the field matches the `YYYY-MM-DD` format.

---

### **3. Prevent Sequential Characters (e.g., 12345, abcde):**
```plaintext
REGEX(Custom_Field__c, "(012|123|234|345|456|567|678|789|890|abc|bcd|cde|def)")
```
**Explanation:** Disallows common sequential patterns.

---

## **Helpful Tools**
- [Regex101](https://regex101.com/): Test and debug your regular expressions.
- [RegExr](https://regexr.com/): Another great tool to test and learn regex patterns.

---

With the flexibility of REGEX in Salesforce, you can enforce strict data entry rules to ensure clean and reliable data in your org. If you need further clarification or specific examples, let me know!

