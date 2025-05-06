# Understanding Profiles and Permission Sets in Salesforce

## 1. What is a Profile in Salesforce?

A **profile** is a collection of settings and permissions that determine what a user can **see, access, and do** in Salesforce. Think of it as a "job role" in your organization that dictates the user's level of access to various functionalities in Salesforce.

### Profiles Control:
- **Access to Objects:** Which objects (like Accounts, Contacts, or custom objects) a user can access.
- **Field-Level Security:** Which fields on objects a user can view or edit.
- **Page Layouts:** How records appear to the user.
- **App Access:** Which apps a user can see.
- **Record-Level Security:** Basic permissions (like Create, Read, Edit, Delete) on records.

### Types of Profiles in Salesforce
#### 1. **Standard Profiles** (provided by Salesforce):  
These are pre-built profiles that come with Salesforce, like:
- **System Administrator**: Full access to all data and features.
- **Standard User**: Access to standard functionality but limited admin features.
- **Read-Only**: Can view records but cannot make any changes.
- **Marketing User**: Access to campaigns and marketing-related features.
- **Solution Manager**: Special access to manage solutions and knowledge articles.

#### 2. **Custom Profiles** (created by admins):  
Tailored profiles to meet specific business needs. For example, you can create a **Sales Executive Profile** that allows access to only the sales-related features.

---

## 2. What is a Permission Set in Salesforce?

A **Permission Set** is like an **add-on** to a profile. While profiles control the baseline permissions, permission sets are used to **extend** or **fine-tune** those permissions for specific users without modifying their profiles.

### Why Permission Sets?  
Imagine you want to give additional access to a few users in your organization but don't want to create a completely new profile for them. You can assign a permission set instead!

### Key Features of Permission Sets:
- They **grant additional permissions** (cannot restrict permissions).
- You can assign **multiple permission sets** to a single user.
- Used to provide **temporary or role-specific access**, like giving access to a particular app or a field.

---

## Differences Between Profiles and Permission Sets

| Feature                  | Profile                              | Permission Set                      |
|--------------------------|--------------------------------------|-------------------------------------|
| **Purpose**              | Base level access and settings.     | Add-on access for specific users.  |
| **Scope**                | Assigned to all users with the same role. | Assigned individually to users.    |
| **Number per User**      | One profile per user.               | Multiple permission sets per user. |
| **Restrict Permissions** | Can grant and restrict permissions. | Can only grant additional permissions. |

---

## Tasks to Practice and Understand Profiles and Permission Sets

### Task 1: **Create a Custom Profile**
1. Create a custom profile called **Sales Manager**.
2. Assign permissions to:
   - Access **Leads** and **Opportunities** objects.
   - Allow **Create, Read, Edit, and Delete** permissions for Opportunities.
   - Restrict access to Accounts.
3. Assign the profile to a test user.

---

### Task 2: **Create a Permission Set**
1. Create a permission set called **Access Reports**.
2. Grant access to:
   - View and run reports in the Reports app.
   - Read-only access to the **Accounts** object.
3. Assign this permission set to the same user from Task 1.

---

### Task 3: **Test the Functionality**
1. Log in as the test user:
   - Verify that the user can access Leads and Opportunities as per the profile.
   - Check that the user cannot access Accounts initially.
2. Assign the **Access Reports** permission set:
   - Confirm the user can now access Accounts (read-only) and run reports.

---

## Reflection Questions:
- What happens if you remove the permission set? 
- How would you handle temporary access needs using permission sets? 
- Why might you choose permission sets over creating new profiles for every unique requirement? 

Try these tasks and let me know if you have any questions!
