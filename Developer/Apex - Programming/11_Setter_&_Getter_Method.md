# Understanding Getter and Setter Methods in Salesforce

In Salesforce Apex, getter and setter methods are used to access and modify the properties of a class. They play a crucial role in encapsulation by allowing controlled access to private variables.

## What Are Getter and Setter Methods?

### Getter Method
A **getter method** is used to retrieve the value of a private variable. It is typically defined with the `get` keyword and returns the value of the variable.

### Setter Method
A **setter method** is used to set or update the value of a private variable. It is defined with the `set` keyword and accepts a parameter to assign to the variable.

## Why Use Getter and Setter Methods?
1. **Encapsulation:** They provide controlled access to private variables, ensuring better encapsulation.
2. **Validation:** Setter methods can include logic to validate or transform the input before assigning it to the variable.
3. **Lazy Loading:** Getter methods can include logic to initialize or compute a value on demand.
4. **Separation of Concerns:** They decouple data access from data representation.

## Syntax of Getter and Setter Methods
```apex
public class MyClass {
    private String myVariable;

    // Getter method
    public String getMyVariable() {
        return myVariable;
    }

    // Setter method
    public void setMyVariable(String value) {
        myVariable = value;
    }
}
```

## Example Usage

### Example 1: Basic Getter and Setter
```apex
public class Product {
    private String productName;

    // Getter method
    public String getProductName() {
        return productName;
    }

    // Setter method
    public void setProductName(String name) {
        productName = name;
    }
}

// Usage
Product p = new Product();
p.setProductName('Laptop');
System.debug('Product Name: ' + p.getProductName());
```

### Example 2: Adding Validation in Setter
```apex
public class Employee {
    private Integer age;

    // Getter method
    public Integer getAge() {
        return age;
    }

    // Setter method with validation
    public void setAge(Integer value) {
        if (value < 18) {
            throw new IllegalArgumentException('Age must be 18 or older.');
        }
        age = value;
    }
}

// Usage
Employee e = new Employee();
e.setAge(25);
System.debug('Employee Age: ' + e.getAge());
```

### Example 3: Lazy Loading with Getter
```apex
public class UserInfo {
    private String userFullName;

    // Getter with lazy loading
    public String getUserFullName() {
        if (userFullName == null) {
            userFullName = UserInfo.getName(); // Simulated data fetch
        }
        return userFullName;
    }
}

// Usage
UserInfo u = new UserInfo();
System.debug('User Full Name: ' + u.getUserFullName());
```

### Example 4: Using Getter and Setter with Visualforce
```apex
public class AccountController {
    private String accountName;

    // Getter
    public String getAccountName() {
        return accountName;
    }

    // Setter
    public void setAccountName(String value) {
        accountName = value;
    }
}
```
**Visualforce Page:**
```html
<apex:page controller="AccountController">
    <apex:form>
        <apex:inputText value="{!accountName}" />
        <apex:commandButton value="Submit" action="{!save}" />
    </apex:form>
</apex:page>
```

## Best Practices
1. **Keep Variables Private:** Always use `private` variables to enforce encapsulation.
2. **Validate Inputs:** Use setter methods to validate or sanitize input data.
3. **Lazy Loading:** Use getter methods to initialize values only when needed to optimize performance.
4. **Descriptive Names:** Name your getter and setter methods clearly to reflect the purpose of the variable.

## Conclusion
Getter and setter methods are essential tools in Salesforce Apex for achieving encapsulation, data validation, and better control over the internal state of a class. By using them effectively, you can write clean, maintainable, and robust code.

