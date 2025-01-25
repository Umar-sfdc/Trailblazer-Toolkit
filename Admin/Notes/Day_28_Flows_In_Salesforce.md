# Understanding Salesforce Flows

## What is a Flow?
A **Flow** in Salesforce is an automation tool that enables you to collect, manipulate, and act on data within Salesforce. It provides a user-friendly interface to design complex business processes without writing much code, making it ideal for admins and developers to create automated workflows. 

Flows allow you to:
- Automate repetitive tasks.
- Guide users through step-by-step processes (wizards).
- Update, create, or delete records dynamically.
- Integrate with other systems using APIs.

---

## Why Use Flows?
Flows offer flexibility and efficiency for solving complex business requirements. Here are some reasons to use flows:

1. **Improved User Experience**: Create interactive wizards for guided processes.
2. **Automation**: Streamline manual operations and minimize human errors.
3. **Dynamic Behavior**: Make decisions or branch logic based on user input.
4. **Reusability**: Flows can be reused across various applications and processes.
5. **Integration**: They can connect with external systems using HTTP callouts.

---

## Types of Flows in Salesforce
Salesforce provides several types of flows, each suited for specific purposes:

### 1. **Screen Flow**
- **Purpose**: Used to guide users through a series of screens for data collection or processes.
- **Example**: Creating a wizard for onboarding new employees.

### 2. **Record-Triggered Flow**
- **Purpose**: Runs automatically when a record is created, updated, or deleted.
- **Example**: Sending an email when a case is closed.

### 3. **Schedule-Triggered Flow**
- **Purpose**: Executes at a specific time or interval.
- **Example**: Automatically deactivating expired accounts.

### 4. **Platform Event-Triggered Flow**
- **Purpose**: Responds to platform events in real-time.
- **Example**: Triggering notifications when a payment fails.

### 5. **Autolaunched Flow**
- **Purpose**: Invoked programmatically, like from Apex or another flow.
- **Example**: Performing complex calculations in the background.

### 6. **Subflow**
- **Purpose**: A flow that is invoked by another flow to modularize processes.
- **Example**: Reusing a common approval process.

---

## Creating a Welcome Message Screen Flow
Let’s create a simple **Screen Flow** to display a welcome message to users.

### Steps to Create the Screen Flow:

#### 1. **Access Flow Builder**
   - Go to **Setup**.
   - Search for **Flows** in the Quick Find box and select **Flows**.
   - Click on **New Flow**.

#### 2. **Choose Flow Type**
   - Select **Screen Flow** and click **Create**.

#### 3. **Add a Screen Element**
   - Drag the **Screen** element from the toolbox onto the canvas.
   - Configure the screen:
     - **Label**: `Welcome Message`
     - Add a **Display Text** component:
       - **API Name**: `WelcomeText`
       - **Text**: `Welcome to Salesforce! We're glad to have you here.`
   - Click **Done**.

#### 4. **Connect Elements**
   - Connect the **Start** element to the **Welcome Message** screen element.

#### 5. **Activate the Flow**
   - Save the flow with a name like `Welcome_Message_Flow`.
   - Click **Activate** to make it available.

#### 6. **Run the Flow**
   - Click **Run** to test the flow and view the welcome message.

---
