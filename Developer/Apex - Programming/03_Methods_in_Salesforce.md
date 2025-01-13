# Methods and Constants in Salesforce

## **Methods in Salesforce**
A method is a block of code designed to perform a specific task. Methods allow for modular programming, reusability, and organization of code, making applications easier to maintain and extend.

### **Key Characteristics of Methods:**
- Encapsulation of functionality.
- Reusability within a program.
- Can take input parameters and return values.
- Help in implementing business logic effectively.

### **Types of Methods in Salesforce**

#### **1. Apex Class Methods**
These methods are defined within an Apex class and perform specific business logic or utility tasks.

##### **Structure:**
```apex
[Access Modifier] [Return Type] methodName(Parameter List) {
    // Method body
}
```
##### **Example:**
```apex
public class MovieUtils {
    public static String getMovieGenre(String movieName) {
        // Logic to fetch the genre
        return 'Action';
    }
}
```

#### **2. Getter and Setter Methods**
Used in Visualforce and LWC to pass data between Apex controllers and the UI.

##### **Getter Method:**
Automatically invoked when a property is accessed.
```apex
public String movieName {
    get {
        return movieName;
    }
    set {
        movieName = value;
    }
}
```

##### **Setter Method:**
Allows you to assign values to properties.

#### **3. Static Methods**
Methods defined with the `static` keyword. These do not require an instance of the class to be called.

##### **Example:**
```apex
public class MathUtils {
    public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }
}
```

#### **4. Instance Methods**
Require an instance of the class to be invoked.

##### **Example:**
```apex
public class Greeting {
    public String sayHello(String name) {
        return 'Hello, ' + name;
    }
}
```

#### **5. Web Service Methods**
These methods are exposed as a web service to external systems using the `@AuraEnabled` or `@WebService` annotations.

##### **Example:**
```apex
@AuraEnabled
public static List<Account> fetchAccounts() {
    return [SELECT Id, Name FROM Account];
}
```

#### **6. Test Methods**
Specific methods used to test Apex code.

##### **Key Points:**
- Use the `@isTest` annotation.
- Cannot be invoked by end-users.

##### **Example:**
```apex
@isTest
static void testAddNumbers() {
    Integer result = MathUtils.addNumbers(5, 3);
    System.assertEquals(8, result);
}
```

---

## **Constants in Salesforce**
A constant is a variable whose value cannot be modified after initialization. Constants are typically declared using the `final` keyword in Apex.

### **Key Characteristics of Constants:**
- Value is immutable once assigned.
- Enhances code readability and maintainability.
- Used to define fixed values like thresholds, API keys, or configuration settings.

### **Syntax:**
```apex
final DataType CONSTANT_NAME = value;
```

### **Example:**
```apex
public class Configurations {
    public static final String API_KEY = '12345-ABCDE';
    public static final Integer MAX_RETRIES = 5;
}
```

### **Key Points to Initialize a Constant:**
1. **Declare as `final`:** Ensures the value cannot be changed after initialization.
2. **Assign a value at the time of declaration:** A constant must be initialized either during declaration or in the constructor (for instance constants).
3. **Static Constants:** Use the `static` keyword for class-level constants that can be accessed without creating an instance.

---

## **Best Practices**
- Use descriptive names for methods and constants.
- Keep methods concise and focused on a single responsibility.
- Define constants for reusable or fixed values.
- Leverage static methods for utility functions and instance methods for specific object logic.
- Use test methods to validate business logic thoroughly.

---

### **Markdown Representation Example**
This file provides a structured overview of Salesforce methods and constants. Use it as a reference for coding best practices and designing robust Apex solutions.
