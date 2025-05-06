# Day 12: Page Layouts, Compact Layouts, and List Views in Salesforce

## 1. **Page Layouts**
### What is a Page Layout?
Page layouts in Salesforce control the organization and display of fields, buttons, custom links, related lists, and other elements on record pages. They define how information is arranged for users when they view or edit a record.

### Why Use Different Page Layouts?
Different page layouts are used to:
- **Customize user experience**: Tailor the interface based on user roles or profiles.
- **Simplify data entry**: Show only relevant fields to reduce clutter.
- **Improve productivity**: Provide users with access to the necessary tools and data for their tasks.
- **Enhance data visibility**: Highlight important details through layouts specific to business needs.

### Key Features:
- **Field Placement**: Arrange fields logically for better user understanding.
- **Related Lists**: Add related lists to provide context.
- **Actions**: Include buttons and links for quick access to tasks.
- **Assignment by Profile**: Assign layouts to specific user profiles to meet varying role requirements.

---

## 2. **Compact Layouts**
### What is a Compact Layout?
Compact layouts control which fields appear in the highlight panel of a record, especially in the Salesforce mobile app and Lightning Experience. They display key information at a glance, such as record summaries.

### Why Use Compact Layouts?
- **Quick Access**: Display critical details in a concise format.
- **Mobile Optimization**: Optimize record viewing for mobile users.
- **Improved Decision-Making**: Highlight vital data for faster evaluations.

### Key Features:
- **Field Selection**: Choose up to 10 fields to display.
- **Role-Specific Views**: Customize for different user groups.
- **Usage**: Primarily used in the highlight panel and for related lists in Lightning.

---

## 3. **Types of List Views**
List views in Salesforce allow users to filter, sort, and display records based on criteria. They streamline data management and accessibility.

### Common Types of List Views:
1. **Standard List Views**:
   - Predefined by Salesforce (e.g., Recently Viewed, My Open Cases).
   - Accessible to all users.

2. **Custom List Views**:
   - Created by users to filter records based on specific conditions (e.g., "High-Priority Accounts").
   - Shareable with groups or individual users.

3. **Kanban View**:
   - Displays records visually in a board format, categorized by a field such as Stage or Status.
   - Allows drag-and-drop functionality.

4. **Split View**:
   - Combines a list view and a record view for efficient navigation.
   - Useful for managing related tasks or cases.

5. **Table View**:
   - A tabular representation of records for better comparison and sorting.

---

## 4. **Real-Time Examples**

### Example 1: **Sales Team Page Layout**
- **Scenario**: A sales team needs to focus on lead details.
- **Page Layout**: Includes key fields like Contact Information, Lead Source, and Stage. Excludes fields irrelevant to sales processes.
- **Compact Layout**: Displays Name, Company, Phone, and Lead Status in the highlight panel.
- **List View**: Custom view showing "Leads with High Potential."

### Example 2: **HR Recruitment Process**
- **Scenario**: The HR department manages job applications.
- **Page Layout**: Includes fields like Applicant Name, Position Applied, Status, and Interview Date.
- **Compact Layout**: Displays Applicant Name, Position, and Current Status for quick reference.
- **List View**: Custom view showing "Applications in Review Stage."

### Example 3: **Support Team Case Management**
- **Scenario**: A support team handles customer cases.
- **Page Layout**: Includes fields like Case Subject, Priority, Status, and Account.
- **Compact Layout**: Displays Case Number, Subject, and Priority.
- **List View**: Kanban view showing "Cases by Status" for easy tracking and updates.

---

