## **Day 20: Lightning Record Page in Salesforce**  

### **What is a Lightning Record Page?**  
A **Lightning Record Page** is a customizable **user interface (UI)** in Salesforce Lightning Experience that displays **record-specific** information. It allows users to view, edit, and interact with Salesforce records efficiently using **Lightning components**.  

A **Lightning Record Page** is built using the **Lightning App Builder**, which enables **drag-and-drop** customization without requiring code.  

---

### **Why Use Lightning Record Pages?**  

1. **Enhanced User Experience**  
   - Provides a modern and responsive UI for interacting with Salesforce records.  
   
2. **Customization Without Code**  
   - Users can modify page layouts with **point-and-click** tools using Lightning App Builder.  

3. **Component-Based Architecture**  
   - Users can add **Lightning components, custom components, and third-party components** to the page.  

4. **Optimized for Business Needs**  
   - Tailor the page layout for **different roles, profiles, or record types** to improve workflow efficiency.  

5. **Performance Improvements**  
   - Uses **dynamic visibility rules** to display only relevant components, reducing page clutter and load times.  

6. **Mobile-Friendly**  
   - Fully compatible with the **Salesforce Mobile App**, ensuring accessibility on any device.  

---

### **How to Set Up a Lightning Record Page?**  

#### **Step 1: Navigate to Lightning App Builder**  
1. Go to **Setup** (⚙️).  
2. In the Quick Find box, type **Lightning App Builder** and select it.  
3. Click **New** and choose **Record Page**.  

#### **Step 2: Configure Basic Details**  
1. **Enter a Label** for the Lightning Record Page.  
2. Select the **Object** for which you are creating the record page (e.g., Account, Opportunity).  
3. Choose a **Page Template** (e.g., Header, Subheader, Left Sidebar).  
4. Click **Next**.  

#### **Step 3: Customize the Page Using Components**  
1. **Drag and Drop** Standard or Custom **Lightning Components** onto the canvas.  
2. Use the **Properties Panel** to configure each component.  
3. Add **Dynamic Filters** to display components conditionally.  

#### **Step 4: Save and Activate the Page**  
1. Click **Save**.  
2. Click **Activate** to make it available for users.  
3. Choose where to assign the page:  
   - **Org Default**: For all users.  
   - **App Default**: For specific apps.  
   - **App, Record Type, Profile**: Assign to specific apps, record types, or profiles.  
4. Click **Save & Finish**.  

---

### **Additional Features of Lightning Record Pages**  

✅ **Dynamic Forms** – Configure field visibility based on conditions.  
✅ **Custom Components** – Add **LWC (Lightning Web Components)** or **Aura components** for advanced customization.  
✅ **Lightning Actions** – Add quick actions for enhanced user interaction.  
✅ **Tabs and Related Lists** – Organize sections effectively.  
