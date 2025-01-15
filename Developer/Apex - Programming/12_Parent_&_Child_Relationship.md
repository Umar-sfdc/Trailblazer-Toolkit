# Understanding Parent and Child Classes in Apex

In Apex, you can define a parent class and a child class in the same file. A child class inherits properties and methods from the parent class, allowing for code reuse and flexibility. This is achieved using the `extends` keyword.

## Creating Parent and Child Classes

### Syntax for Defining Parent and Child Classes
```apex
public class ParentClass {
    // Parent class variable
    public String parentVariable = 'Parent Variable';

    // Parent class method
    public void parentMethod() {
        System.debug('This is a method in the parent class.');
    }
}

public class ChildClass extends ParentClass {
    // Child class variable
    public String childVariable = 'Child Variable';

    // Child class method
    public void childMethod() {
        System.debug('This is a method in the child class.');
    }
}
```

### Accessing Variables and Methods of Parent and Child Classes

#### Example:
```apex
// Instantiate the child class
ChildClass child = new ChildClass();

// Accessing parent class variables and methods through the child class
System.debug(child.parentVariable); // Output: Parent Variable
child.parentMethod(); // Output: This is a method in the parent class.

// Accessing child class variables and methods
System.debug(child.childVariable); // Output: Child Variable
child.childMethod(); // Output: This is a method in the child class.
```

### Limitations of Parent and Child Classes
1. **Private Members:** Private variables and methods in the parent class cannot be accessed directly by the child class.
2. **Constructors:** Parent class constructors are not inherited by the child class. If a parent class has a parameterized constructor, the child class must explicitly call it using `super`.
3. **Overriding Restrictions:** A method in the parent class can only be overridden if it is marked as `virtual` or `abstract`.
4. **Multiple Inheritance:** Apex does not support multiple inheritance (a class cannot extend multiple classes).

### Example of Parent and Child Classes with Constructor
```apex
public class ParentClass {
    public String name;

    // Parameterized constructor in the parent class
    public ParentClass(String name) {
        this.name = name;
    }

    public void displayName() {
        System.debug('Name: ' + name);
    }
}

public class ChildClass extends ParentClass {
    public Integer age;

    // Constructor in the child class
    public ChildClass(String name, Integer age) {
        super(name); // Calling the parent class constructor
        this.age = age;
    }

    public void displayDetails() {
        System.debug('Name: ' + name + ', Age: ' + age);
    }
}

// Usage
ChildClass child = new ChildClass('Alice', 25);
child.displayName(); // Output: Name: Alice
child.displayDetails(); // Output: Name: Alice, Age: 25
```

## Real-Time Scenario: Employee and Manager

### Problem Statement
In an organization, there are employees and managers. All employees have common properties like `name` and `employeeId`, while managers have additional responsibilities like managing a `teamSize`. Implement a solution using parent and child classes.

### Solution

#### Implementation
```apex
// Parent class: Employee
public class Employee {
    public String name;
    public Integer employeeId;

    // Constructor
    public Employee(String name, Integer employeeId) {
        this.name = name;
        this.employeeId = employeeId;
    }

    public void displayEmployeeDetails() {
        System.debug('Employee Name: ' + name + ', Employee ID: ' + employeeId);
    }
}

// Child class: Manager
public class Manager extends Employee {
    public Integer teamSize;

    // Constructor
    public Manager(String name, Integer employeeId, Integer teamSize) {
        super(name, employeeId); // Call to parent class constructor
        this.teamSize = teamSize;
    }

    public void displayManagerDetails() {
        System.debug('Manager Name: ' + name + ', Employee ID: ' + employeeId + ', Team Size: ' + teamSize);
    }
}

// Usage
Manager manager = new Manager('Bob', 101, 5);
manager.displayEmployeeDetails(); // Output: Employee Name: Bob, Employee ID: 101
manager.displayManagerDetails(); // Output: Manager Name: Bob, Employee ID: 101, Team Size: 5
```

### Key Points
1. The `Employee` class serves as the parent class.
2. The `Manager` class extends `Employee` and adds additional functionality.
3. Constructors and methods demonstrate how to initialize and display details for both parent and child classes.

By utilizing inheritance, this approach reduces redundancy and improves code maintainability.

