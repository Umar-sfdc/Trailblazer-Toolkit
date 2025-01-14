# Solutions to Constructor Problems

## Problem 4: Constructor Validation

### Description:
Create a class `Product` with fields:
- `name` (String)
- `price` (Decimal)

Write a constructor that validates:
1. The `name` should not be `null` or empty.
2. The `price` should be greater than `0`.

Throw appropriate exceptions if the validation fails.

### Solution:
```apex
public class Product {
    private String name;
    private Decimal price;

    // Constructor with validation
    public Product(String name, Decimal price) {
        // Validate name
        if (String.isEmpty(name)) {
            throw new IllegalArgumentException('Product name cannot be empty.');
        }

        // Validate price
        if (price <= 0) {
            throw new IllegalArgumentException('Price must be greater than 0.');
        }

        this.name = name;
        this.price = price;
    }

    // Method to display product details
    public void printProductDetails() {
        System.debug('Product Name: ' + name + ', Price: $' + price);
    }
}

// Usage
try {
    Product validProduct = new Product('Laptop', 1200.99);
    validProduct.printProductDetails(); // Output: Product Name: Laptop, Price: $1200.99

    // Invalid product examples
    Product invalidProduct1 = new Product('', 100); // Throws exception: Product name cannot be empty.
    Product invalidProduct2 = new Product('Phone', -50); // Throws exception: Price must be greater than 0.
} catch (Exception e) {
    System.debug('Error: ' + e.getMessage());
}
```

### Key Points:
1. **Validation Logic:** Ensures objects are always in a valid state when created.
2. **Exceptions:** Provide feedback about invalid inputs during object creation.
3. **Usage:** Tests both valid and invalid cases to confirm functionality.

---

## Problem 5: Constructor in Inheritance

### Description:
Create a base class `Shape` with:
- A constructor that accepts the `color` of the shape.

Create a subclass `Rectangle` that extends `Shape` and includes:
- Fields `length` and `width`.
- A constructor that takes `color`, `length`, and `width`, and uses the base class constructor to initialize the `color`.

### Solution:
```apex
// Base class
public class Shape {
    protected String color;

    // Constructor for Shape
    public Shape(String color) {
        this.color = color;
    }

    // Method to display shape details
    public void printShapeDetails() {
        System.debug('Color: ' + color);
    }
}

// Subclass
public class Rectangle extends Shape {
    private Decimal length;
    private Decimal width;

    // Constructor for Rectangle
    public Rectangle(String color, Decimal length, Decimal width) {
        super(color); // Call base class constructor
        this.length = length;
        this.width = width;
    }

    // Method to calculate area
    public Decimal calculateArea() {
        return length * width;
    }

    // Override to display rectangle details
    public void printRectangleDetails() {
        super.printShapeDetails();
        System.debug('Length: ' + length + ', Width: ' + width + ', Area: ' + calculateArea());
    }
}

// Usage
Rectangle rect = new Rectangle('Blue', 5, 10);
rect.printRectangleDetails();
// Output:
// Color: Blue
// Length: 5, Width: 10, Area: 50
```

### Key Points:
1. **Inheritance:** Demonstrates constructor chaining between the subclass and the base class using `super`.
2. **Encapsulation:** Ensures `length` and `width` are private and accessible through methods.
3. **Polymorphism:** Allows shared and overridden functionality, such as `printRectangleDetails()`.

### Edge Case:
- Forgetting to call `super(color)` in the subclass constructor will result in an error, as the base class constructor is required to initialize its fields.

---

These examples demonstrate constructor validation, inheritance, and advanced object initialization techniques.


