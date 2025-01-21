# Feed Tracking and Field History Tracking in Salesforce

## Feed Tracking

### Overview
Feed tracking in Salesforce allows updates to specific fields to appear in the Chatter feed of a record. This feature is particularly useful for monitoring changes and collaborating with team members directly from the record's Chatter feed.

- **Default Behavior:**
  - For standard objects, feed tracking is enabled by default.
  - For custom objects, feed tracking must be manually enabled.

### Example
When feed tracking is enabled for a field, such as **Account Name**, any changes made to that field will appear as an update in the record's Chatter feed, notifying users of the modification.

### How to Enable Feed Tracking
1. Navigate to **Setup** in Salesforce.
2. Go to **Features** > **Chatter** > **Feed Tracking**.
3. Select the object for which you want to enable feed tracking.
4. Enable feed tracking for the object.
5. Select the specific fields you want to track.

> **Note:** Simply enabling feed tracking for an object does not automatically track changes to fields. You must select specific fields for tracking.

### Limitations
- Feed tracking is only available if Chatter is enabled.
- You can track a maximum of **20 fields** per object.

---

## Field History Tracking

### Overview
Field history tracking records changes made to specific fields on an object. Unlike feed tracking, these changes are not visible in the Chatter feed but are stored in the record's related list.

- **Use Case:**
  - Ideal for auditing purposes and tracking field modifications over time.

### How to Enable Field History Tracking

#### Step 1: Enable Field History Tracking for the Object
1. Navigate to **Setup** > **Object Manager**.
2. Select the object you want to enable field history tracking for.
3. Click **Edit**.
4. In the **Features** section, check the box for **Allow Field History Tracking**.
5. Save your changes.

> You can also enable field history tracking during object creation by selecting the same option in the Features section.

#### Step 2: Enable Field History Tracking for Specific Fields
1. Go to **Object Manager** > **Fields & Relationships**.
2. Click on **Set History Tracking** (located in the top-right corner).
3. Select the fields you want to track.
4. Save your settings.

### Viewing Field History
Field history tracking records are not automatically visible in the object or Chatter. To display field history:
1. Go to **Object Manager** > **Page Layouts**.
2. Select the relevant page layout.
3. Drag and drop the related list for **Field History Tracking** into the layout.
4. Save your changes.

### Limitations
- Field history tracking does not store changes for:
  - Multi-select picklists.
  - Long text area fields.
- The related list displays up to **20 fields** for tracking.

---

## Key Differences Between Feed Tracking and Field History Tracking

| Feature                | Feed Tracking                          | Field History Tracking                 |
|------------------------|----------------------------------------|----------------------------------------|
| **Visibility**         | Changes appear in Chatter feed.       | Changes appear in the related list.    |
| **Purpose**            | Collaboration and updates.            | Auditing and tracking changes.         |
| **Field Types**        | Supports most field types.            | Does not support multi-select picklists and long text area fields. |
| **Field Limit**        | Maximum 20 fields per object.         | Maximum 20 fields per related list.    |
| **Dependency**         | Requires Chatter to be enabled.       | Does not require Chatter.              |

---

### Conclusion
Both feed tracking and field history tracking serve distinct purposes in Salesforce. Feed tracking enhances collaboration by notifying users of field changes in the Chatter feed, while field history tracking focuses on auditing changes for compliance and historical reference. Understanding their features and limitations helps administrators decide which option best suits their business needs.

