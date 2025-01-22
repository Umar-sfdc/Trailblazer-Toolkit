# Classic Email Templates in Salesforce

Classic Email Templates in Salesforce are designed to facilitate the creation of standardized email messages in the Classic interface. While not as feature-rich as Lightning Email Templates, they still offer substantial flexibility for businesses using Salesforce Classic.

---

## Types of Classic Email Templates

### 1. **Text Email Templates**
   - **Description**: Simple templates containing only plain text.
   - **Use Case**: Suitable for basic communications.

### 2. **HTML (with Letterhead) Email Templates**
   - **Description**: Allows branding elements like headers, footers, and logos.
   - **Use Case**: Ideal for formal, branded communications.

### 3. **Custom HTML Email Templates**
   - **Description**: Provides the flexibility to design emails using custom HTML.
   - **Use Case**: Used for highly customized or marketing emails.

### 4. **Visualforce Email Templates**
   - **Description**: Enables advanced logic and dynamic data rendering.
   - **Use Case**: Best for complex or data-driven email requirements.

---

## Common Errors Encountered During Creation

### 1. **Merge Field Errors**
   - **Issue**: Incorrect syntax for merge fields, such as `{!Contact.FirstName}`.
   - **Solution**: Use the merge field picker to ensure correct field references.

### 2. **Letterhead Not Available**
   - **Issue**: Letterheads are not set up or are unavailable for the user.
   - **Solution**: Create or enable letterheads under **Setup > Letterheads**.

### 3. **HTML Rendering Issues**
   - **Issue**: Broken formatting or styles in HTML templates.
   - **Solution**: Use inline styles and test the template across email clients.

### 4. **Access Restrictions**
   - **Issue**: User lacks permission to access or edit email templates.
   - **Solution**: Ensure the user has the **Manage Public Templates** permission.

### 5. **Dynamic Content Limitations**
   - **Issue**: Limited functionality in adding dynamic fields compared to Lightning.
   - **Solution**: Use Visualforce Email Templates for advanced use cases.

---

## Creating a Classic Email Template Path

### **Steps to Create a Classic Email Template**

1. **Navigate to Email Templates**:
   - Go to **Setup** > **Communication Templates** > **Email Templates**.

2. **Click on New Template**:
   - Choose the type of template: Text, HTML (with Letterhead), Custom HTML, or Visualforce.

3. **Define Basic Details**:
   - Enter the **Template Name**, **Description**, and **Folder**.
   - Specify whether the template is available for use.

4. **Configure Email Content**:
   - Add a subject and body content.
   - Insert merge fields for dynamic content (e.g., `{!Account.Name}`).

5. **Add Attachments (Optional)**:
   - Upload files or documents if required.

6. **Save and Test**:
   - Save the template and use the **Send Test and Verify Merge Fields** feature to ensure accuracy.

---

## Example: Creating a Classic Email Template

### **Scenario:**
You need to notify customers about an upcoming maintenance window.

### **Steps to Create the Template:**

1. Navigate to **Setup > Email Templates** and select **New Template**.
2. Choose **Text Template** for simplicity.
3. Fill in the details:
   - **Template Name**: Maintenance Notification
   - **Subject**: Upcoming System Maintenance
   - **Body**:
     ```
     Hello {!Contact.FirstName},

     We want to inform you of scheduled maintenance for our system:

     **Date:** {!Maintenance__c.Date}
     **Time:** {!Maintenance__c.Time}

     During this time, some services may be unavailable. We apologize for any inconvenience and appreciate your understanding.

     Best regards,
     The Support Team
     ```
4. Save the template.
5. Test the template by sending it to a sample email address and confirming that merge fields work correctly.

### **Sample Output:**

**Subject:**
Upcoming System Maintenance

**Body:**
Hello John,

We want to inform you of scheduled maintenance for our system:

**Date:** January 25, 2025  
**Time:** 2:00 AM to 6:00 AM UTC  

During this time, some services may be unavailable. We apologize for any inconvenience and appreciate your understanding.

Best regards,  
The Support Team

---

