# Interfaces in Salesforce

## What is an Interface in Salesforce?

In Salesforce, an **interface** is a blueprint for a class. It defines methods that must be implemented by any class that implements the interface. Interfaces are used to enforce a contract that ensures specific behaviors in the implementing classes.

In Apex, an interface:
- Contains method signatures (method names, parameters, and return types).
- Cannot contain method bodies (no implementation).
- Must be implemented by classes, which provide the actual logic for the methods defined in the interface.

---

## Why Do We Use Interfaces?

- **Code Flexibility and Reusability**: Interfaces allow you to define generic behaviors that can be implemented differently by various classes.
- **Abstraction**: They provide a way to abstract implementation details and focus on the behavior.
- **Loosely Coupled Architecture**: You can create loosely coupled components that rely on interfaces instead of concrete implementations, making the system more modular and easier to maintain.
- **Polymorphism**: Interfaces enable polymorphic behavior, allowing objects of different classes to be treated uniformly if they implement the same interface.

---

## Key Properties of Interfaces

1. **Method Signatures Only**: Interfaces only define the method names, parameters, and return types without providing the actual implementation.
2. **Implemented by Classes**: Any class implementing the interface must define all the methods declared in the interface.
3. **No Constructors or Variables**: Interfaces cannot have constructors, instance variables, or static variables.
4. **Inheritance**: Interfaces support multiple inheritance, meaning a class can implement multiple interfaces.
5. **Use with Triggers**: Interfaces are commonly used with triggers to implement trigger handlers for better code organization.

---

## Errors You May Encounter

1. **`Class must implement the interface methods`**: Occurs when a class does not implement all methods defined in the interface.
2. **`Return type mismatch`**: Happens if the return type of a method in the class does not match the return type defined in the interface.
3. **`Access modifier restrictions`**: Errors occur if the method implementation in the class has a more restrictive access modifier than the interface definition.
4. **`Syntax errors`**: Occurs if the interface definition is incorrect (e.g., adding method bodies in the interface).

---

## Examples of Interfaces

### Simple Example

#### Interface Definition
```apex
public interface Shape {
    Decimal calculateArea();
}
```

#### Implementing Class
```apex
public class Circle implements Shape {
    private Decimal radius;

    public Circle(Decimal radius) {
        this.radius = radius;
    }

    public Decimal calculateArea() {
        return Math.PI * radius * radius;
    }
}
```

#### Usage
```apex
Shape circle = new Circle(5);
System.debug('Area of the circle: ' + circle.calculateArea());
```

---

### Complex Example: Interface for Trigger Handlers

#### Interface Definition
```apex
public interface TriggerHandler {
    void beforeInsert(List<SObject> newRecords);
    void afterInsert(List<SObject> newRecords);
}
```

#### Implementing Class
```apex
public class AccountTriggerHandler implements TriggerHandler {
    public void beforeInsert(List<SObject> newRecords) {
        for (Account acc : (List<Account>) newRecords) {
            acc.Description = 'Account created on ' + DateTime.now();
        }
    }

    public void afterInsert(List<SObject> newRecords) {
        System.debug('Accounts inserted: ' + newRecords);
    }
}
```

#### Trigger Using the Interface
```apex
trigger AccountTrigger on Account (before insert, after insert) {
    TriggerHandler handler = new AccountTriggerHandler();

    if (Trigger.isBefore && Trigger.isInsert) {
        handler.beforeInsert(Trigger.new);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        handler.afterInsert(Trigger.new);
    }
}
```

---

## Summary

Interfaces in Salesforce help ensure consistent behavior, promote modularity, and enable polymorphism. They are particularly useful in trigger frameworks, enforcing reusable design patterns, and building scalable solutions.
