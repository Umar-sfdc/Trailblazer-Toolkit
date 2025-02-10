# Day 14: Salesforce IP Range, Network Access, Login History, and Login Hours: In-Depth Guide

## What Are IP Ranges in Salesforce?
**IP Ranges** define specific IP addresses or ranges of addresses that Salesforce trusts for login purposes. When a user logs in from an IP address within the defined range, they are granted access without requiring additional verification (e.g., email or SMS verification).

### Key Details:
- Configured at the **Organization Level** or **Profile Level**.
- Helps enforce security by restricting access to trusted networks.

### Benefits:
- Prevents unauthorized access from unknown networks.
- Reduces the risk of phishing or unauthorized login attempts.

---

## What Is Network Access?
**Network Access** in Salesforce allows administrators to define trusted IP ranges for the entire organization. It ensures that users logging in from these ranges don’t require identity verification.

### Steps to Configure Network Access:
1. Navigate to **Setup** > **Network Access**.
2. Click **New**.
3. Define the **Start IP Address** and **End IP Address** for the range.
4. Save the configuration.

### Real-World Use Case:
A company restricts login access to users connected via its corporate network. Only IP addresses from the company’s office locations are allowed in the network access list.

---

## What Is Login History in Salesforce?
**Login History** is a feature that tracks user login attempts. It provides details about successful and unsuccessful logins, including:
- **Date and Time** of login.
- **User** attempting the login.
- **IP Address** and **Browser Information**.
- **Login Status** (Success/Failure).

### How to View Login History:
1. Navigate to **Setup** > **Login History**.
2. View or export the login records.

### Benefits:
- **Monitoring Security**: Detect unusual login patterns or attempts.
- **Troubleshooting**: Identify why a user cannot log in (e.g., incorrect credentials or IP restrictions).
- **Auditing**: Track compliance and access for audits.

### Real-World Use Case:
An admin notices repeated failed login attempts for a user. By analyzing login history, they identify the IP address of the suspicious attempts and block it.

---

## What Are Login Hours in Salesforce?
**Login Hours** restrict the time periods during which users can log in. These settings are applied at the **Profile Level**.

### Steps to Configure Login Hours:
1. Navigate to **Setup** > **Profiles**.
2. Select the desired profile.
3. Under **Login Hours**, click **Edit**.
4. Define the allowed login hours for each day of the week.
5. Save the changes.

### Benefits:
- Prevents unauthorized access outside of working hours.
- Aligns with business operations, ensuring users log in during approved times.

### Real-World Use Case:
A retail company sets login hours for its employees to ensure they can only access Salesforce during store hours, reducing the risk of unauthorized after-hours changes.

---

## Real-World Example: Implementing IP Ranges, Network Access, Login History, and Login Hours

### Scenario:
A global company wants to enhance Salesforce security by:
1. Allowing access only from office networks.
2. Ensuring logins happen only during business hours.
3. Monitoring login attempts to detect anomalies.

### Steps:
#### Step 1: Configure IP Ranges
1. Add office network IP ranges under **Network Access**.
2. Configure IP restrictions at the **Profile Level** for sensitive roles like administrators.

#### Step 2: Set Login Hours
1. For each profile, define login hours to match regional business hours.

#### Step 3: Monitor Login History
1. Regularly review **Login History** for failed login attempts.
2. Set up alerts for multiple failed attempts to detect possible breaches.

### Result:
- Employees can log in securely from trusted networks.
- Access outside working hours is blocked, improving operational security.
- Anomalous login attempts are detected and acted upon promptly.

---

## Conclusion
Salesforce’s IP Ranges, Network Access, Login History, and Login Hours provide robust tools for managing security and ensuring compliance. By combining these features, organizations can control access, monitor login activity, and protect sensitive data effectively.

