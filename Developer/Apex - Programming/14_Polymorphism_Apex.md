
# Polymorphism in Apex: From Simple to Advanced

## 1. Compile-time Polymorphism (Method Overloading)

In method overloading, you define multiple methods with the same name, but different parameters (either type or number).

### Example: Method Overloading in Apex
```apex
public class Calculator {
    
    // Method for adding two integers
    public Integer add(Integer num1, Integer num2) {
        return num1 + num2;
    }
    
    // Method for adding two doubles
    public Double add(Double num1, Double num2) {
        return num1 + num2;
    }
    
    // Method for adding a list of integers
    public Integer add(List<Integer> numbers) {
        Integer sum = 0;
        for (Integer num : numbers) {
            sum += num;
        }
        return sum;
    }
}

Calculator calc = new Calculator();

// Overloaded methods are invoked based on parameters
System.debug(calc.add(2, 3)); // Output: 5
System.debug(calc.add(2.5, 3.5)); // Output: 6.0
System.debug(calc.add(new List<Integer>{1, 2, 3})); // Output: 6
```

## 2. Run-time Polymorphism (Method Overriding)

In method overriding, a subclass provides its own specific implementation of a method that is already defined in its parent class.

### Example: Method Overriding in Apex
```apex
public class Animal {
    // Base class method
    public virtual void makeSound() {
        System.debug('Animal makes a sound');
    }
}

public class Dog extends Animal {
    // Overriding the method in the subclass
    public override void makeSound() {
        System.debug('Dog barks');
    }
}

public class Cat extends Animal {
    // Overriding the method in the subclass
    public override void makeSound() {
        System.debug('Cat meows');
    }
}

Animal myAnimal = new Animal();
Animal myDog = new Dog();
Animal myCat = new Cat();

// The method called depends on the object type at runtime
myAnimal.makeSound(); // Output: Animal makes a sound
myDog.makeSound(); // Output: Dog barks
myCat.makeSound(); // Output: Cat meows
```

## Conclusion

- **Compile-time Polymorphism (Method Overloading)** allows methods to be differentiated based on parameters.
- **Run-time Polymorphism (Method Overriding)** allows subclass methods to replace or extend the functionality of parent class methods.

These techniques make code more flexible and reusable, following the principles of object-oriented design.
