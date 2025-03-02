# **Understanding Salesforce Apex Triggers, Events, and Context Variables**  

#### **1. What is an Apex Trigger?**  
An **Apex Trigger** is a piece of code in Salesforce that runs **automatically** when a specific event occurs on a **record (like Insert, Update, Delete, etc.)**. It is similar to a **database trigger** in SQL.  

##### **Example:**  
Imagine you have a `Student__c` custom object, and you want to automatically set the `Status__c` field to `"Enrolled"` when a new student record is inserted. Instead of manually updating it, an **Apex Trigger** can handle it automatically.

---

#### **2. Trigger Events in Salesforce**  
Trigger events determine **when** a trigger should execute. There are **two types** of events:  

✅ **Before Triggers:** Used to update or validate data **before** it is saved to the database.  
✅ **After Triggers:** Used to access field values that are already saved in the database.  

| Event Type          | When does it run? | Use Case Example |
|---------------------|------------------|------------------|
| `before insert`    | Before a record is inserted into the database | Set default field values before saving |
| `before update`    | Before a record is updated | Validate data before updating |
| `before delete`    | Before a record is deleted | Prevent deletion based on a condition |
| `after insert`     | After a record is inserted | Send a welcome email after creation |
| `after update`     | After a record is updated | Log changes or trigger a related action |
| `after delete`     | After a record is deleted | Store deleted record details for audit |
| `after undelete`   | After a record is restored from the Recycle Bin | Recover related records |

---

#### **3. Context Variables in Triggers**  
Context variables provide access to the records that triggered the event.  

| Context Variable | Description | Example Use Case |
|------------------|-------------|------------------|
| `Trigger.isBefore` | Returns `true` if trigger runs before event | Used for modifying records before save |
| `Trigger.isAfter` | Returns `true` if trigger runs after event | Used for operations after record is committed |
| `Trigger.isInsert` | Returns `true` for insert operations | Used to check if records are being created |
| `Trigger.isUpdate` | Returns `true` for update operations | Used to check if records are being modified |
| `Trigger.isDelete` | Returns `true` for delete operations | Used to check if records are being removed |
| `Trigger.isUndelete` | Returns `true` when restoring records | Used to handle record recovery |
| `Trigger.new` | Holds a list of new records (only for insert/update) | Access field values of new records |
| `Trigger.old` | Holds a list of old records (only for update/delete) | Access field values before update/delete |
| `Trigger.newMap` | Map of new records with their IDs | Used for bulk updates |
| `Trigger.oldMap` | Map of old records with their IDs | Used to track changes |

---

#### **4. Simple Example of an Apex Trigger**  
Here’s a basic **"before insert"** trigger for the `Student__c` object:  

```apex
trigger StudentStatusTrigger on Student__c (before insert) {
    for (Student__c student : Trigger.new) {
        student.Status__c = 'Enrolled'; // Automatically set status to "Enrolled"
    }
}
```
