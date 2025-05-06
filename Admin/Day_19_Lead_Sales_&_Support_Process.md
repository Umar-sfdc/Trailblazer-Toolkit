# **Day 19: Processes in Salesforce: Lead Process, Sales Process, and Support Process**  

## **1. What Are Processes in Salesforce?**  
In Salesforce, **Processes** refer to structured workflows that guide users through specific business operations, such as handling **Leads, Sales Opportunities, and Cases**. These processes help organizations standardize workflows, ensuring users follow predefined steps when interacting with records.  

### **Why Use Processes in Salesforce?**  
Processes are used to:  
✅ Standardize business operations across teams.  
✅ Ensure users follow consistent stages when handling records.  
✅ Improve efficiency and productivity.  
✅ Enforce compliance with business rules.  
✅ Customize record lifecycle stages based on business needs.  

Salesforce provides three main process types:  
1. **Lead Process** – Used for managing Lead qualification stages.  
2. **Sales Process** – Defines stages in an Opportunity lifecycle.  
3. **Support Process** – Determines statuses in a Case lifecycle.  

---

## **2. Lead Process in Salesforce**  

### **📌 What is a Lead Process?**  
A **Lead Process** defines the **Lead Status** values available for Leads. It helps in tracking Leads from their creation to conversion, ensuring proper qualification before moving them to Opportunities, Accounts, or Contacts.  

### **📌 Why Use a Lead Process?**  
- Helps **Sales teams qualify leads effectively** before converting them.  
- Allows organizations to customize **Lead Status values** based on their business requirements.  
- Ensures that Lead management follows a **structured approach** before handing over to the Sales team.  

### **📌 How to Enable & Create a Lead Process?**  
Follow these steps to create a **Lead Process**:  

#### **Step 1: Navigate to Lead Process**
1️⃣ Go to **Setup**  
2️⃣ Search for **Lead Processes** in Quick Find Box  
3️⃣ Click **Lead Processes**  
4️⃣ Click **New**  

#### **Step 2: Define Lead Process**
5️⃣ Enter a **Process Name** (e.g., "B2B Lead Process")  
6️⃣ Select an **Existing Process** to clone (if applicable)  
7️⃣ Click **Save**  

#### **Step 3: Customize Lead Status Values**
8️⃣ Choose which **Lead Status values** should be available in this process  
9️⃣ Click **Save**  

#### **Step 4: Assign Lead Process to a Record Type**
🔟 Create a **Lead Record Type** and associate it with the Lead Process to make it available for users.  

### **Example Lead Status Values in a Lead Process**
| Lead Status | Description |
|-------------|------------|
| Open | New lead created, not yet contacted |
| Contacted | Lead has been reached out to |
| Qualified | Lead is interested and ready to be converted |
| Unqualified | Lead is not a good fit for business |

---

## **3. Sales Process in Salesforce**  

### **📌 What is a Sales Process?**  
A **Sales Process** defines the **stages** that an Opportunity goes through before closing a deal. It allows businesses to tailor the Opportunity pipeline based on their sales cycle.  

### **📌 Why Use a Sales Process?**  
- Helps **Sales teams track opportunities effectively** through predefined stages.  
- Allows different sales divisions (e.g., B2B vs. B2C) to have **customized sales cycles**.  
- Ensures sales representatives follow the **right sequence** of steps in closing deals.  

### **📌 How to Enable & Create a Sales Process?**  
#### **Step 1: Navigate to Sales Process**
1️⃣ Go to **Setup**  
2️⃣ Search for **Sales Processes** in Quick Find Box  
3️⃣ Click **Sales Processes**  
4️⃣ Click **New**  

#### **Step 2: Define Sales Process**
5️⃣ Enter a **Process Name** (e.g., "Enterprise Sales Process")  
6️⃣ Select an **Existing Process** to clone (if applicable)  
7️⃣ Click **Save**  

#### **Step 3: Customize Opportunity Stages**
8️⃣ Choose which **Opportunity Stage values** should be available in this process  
9️⃣ Click **Save**  

#### **Step 4: Assign Sales Process to a Record Type**
🔟 Create an **Opportunity Record Type** and associate it with the Sales Process.  

### **Example Opportunity Stages in a Sales Process**
| Stage | Probability (%) | Description |
|-------|----------------|------------|
| Prospecting | 10% | Initial contact with potential customer |
| Qualification | 20% | Determining if the lead is a good fit |
| Proposal Sent | 50% | Sending pricing and offer details |
| Negotiation | 75% | Adjusting the deal based on customer feedback |
| Closed Won | 100% | Deal successfully closed |
| Closed Lost | 0% | Opportunity did not result in a sale |

---

## **4. Support Process in Salesforce**  

### **📌 What is a Support Process?**  
A **Support Process** defines the **Case Status values** available for Cases. It helps organizations structure their customer support workflow efficiently.  

### **📌 Why Use a Support Process?**  
- Helps **Support teams track cases** through predefined resolution steps.  
- Customizes **Case Status values** based on business needs.  
- Ensures support agents follow a **structured workflow** in handling customer issues.  

### **📌 How to Enable & Create a Support Process?**  
#### **Step 1: Navigate to Support Process**
1️⃣ Go to **Setup**  
2️⃣ Search for **Support Processes** in Quick Find Box  
3️⃣ Click **Support Processes**  
4️⃣ Click **New**  

#### **Step 2: Define Support Process**
5️⃣ Enter a **Process Name** (e.g., "Premium Customer Support")  
6️⃣ Select an **Existing Process** to clone (if applicable)  
7️⃣ Click **Save**  

#### **Step 3: Customize Case Status Values**
8️⃣ Choose which **Case Status values** should be available in this process  
9️⃣ Click **Save**  

#### **Step 4: Assign Support Process to a Record Type**
🔟 Create a **Case Record Type** and associate it with the Support Process.  

### **Example Case Status Values in a Support Process**
| Case Status | Description |
|-------------|------------|
| New | Case just created, yet to be reviewed |
| In Progress | Case is being worked on by a support agent |
| Escalated | Case requires higher-level support intervention |
| Closed | Case has been resolved and closed |

---

## **5. Key Differences Between Lead, Sales, and Support Processes**  

| Feature | Lead Process | Sales Process | Support Process |
|---------|-------------|--------------|----------------|
| **Applies To** | Leads | Opportunities | Cases |
| **Defines** | Lead Status | Opportunity Stages | Case Status |
| **Purpose** | Tracks Lead qualification lifecycle | Tracks Opportunity sales cycle | Tracks customer support lifecycle |
| **Related Object** | Leads | Opportunities | Cases |
| **Customization** | Customize Lead Status values | Customize Opportunity Stages | Customize Case Status values |

---

## **6. Additional Notes**  
🔹 **Processes are always linked to Record Types**—you must create a **Record Type** to apply a process to specific user profiles.  
🔹 **You can create multiple processes** for different business units (e.g., different sales teams can have different Sales Processes).  
🔹 **Workflow automation** (like Process Builder or Flow) can be used to enforce process compliance.  

---

## **7. Conclusion**  
- **Lead Processes** manage Lead Statuses to track qualification stages before conversion.  
- **Sales Processes** define Opportunity Stages to track sales cycles.  
- **Support Processes** determine Case Statuses to track customer issue resolutions.  

Each of these processes helps Salesforce users **standardize workflows**, **increase efficiency**, and **ensure compliance** with business rules.
