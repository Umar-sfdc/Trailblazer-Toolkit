# Understanding If-Else and Switch Case in Salesforce

## If-Else Statements
The `if-else` statement is a fundamental control structure that allows you to execute different blocks of code based on conditions.

---

### Syntax
```apex
if (condition) {
    // Code to execute if condition is true
} else if (anotherCondition) {
    // Code to execute if anotherCondition is true
} else {
    // Code to execute if all conditions are false
}
```

---

### Example: Basic If-Else
```apex
public class DiscountCalculator {
    public static void calculateDiscount(Integer amount) {
        if (amount > 1000) {
            System.debug('Discount: 20%');
        } else if (amount > 500) {
            System.debug('Discount: 10%');
        } else {
            System.debug('No Discount');
        }
    }
}

// Usage
DiscountCalculator.calculateDiscount(1200); // Output: Discount: 20%
DiscountCalculator.calculateDiscount(700);  // Output: Discount: 10%
DiscountCalculator.calculateDiscount(300);  // Output: No Discount
```

---

### Advanced Example: Nested If-Else
```apex
public class TaxCalculator {
    public static void calculateTax(String country, Double income) {
        if (country == 'USA') {
            if (income > 100000) {
                System.debug('Tax Rate: 30%');
            } else {
                System.debug('Tax Rate: 20%');
            }
        } else if (country == 'Canada') {
            if (income > 80000) {
                System.debug('Tax Rate: 25%');
            } else {
                System.debug('Tax Rate: 15%');
            }
        } else {
            System.debug('Tax Rate: Unknown for this country');
        }
    }
}

// Usage
TaxCalculator.calculateTax('USA', 120000);    // Output: Tax Rate: 30%
TaxCalculator.calculateTax('Canada', 60000); // Output: Tax Rate: 15%
TaxCalculator.calculateTax('India', 50000);  // Output: Tax Rate: Unknown for this country
```

---

## Switch Case Statements
The `switch` statement simplifies code by allowing multiple conditions to be handled in a cleaner and more readable way.

---

### Syntax
```apex
switch on variable {
    when value1 {
        // Code to execute for value1
    }
    when value2 {
        // Code to execute for value2
    }
    when else {
        // Code to execute if no case matches
    }
}
```

---

### Example: Basic Switch
```apex
public class DayChecker {
    public static void checkDay(Integer day) {
        switch on day {
            when 1 {
                System.debug('Monday');
            }
            when 2 {
                System.debug('Tuesday');
            }
            when 3 {
                System.debug('Wednesday');
            }
            when else {
                System.debug('Invalid Day');
            }
        }
    }
}

// Usage
DayChecker.checkDay(1); // Output: Monday
DayChecker.checkDay(5); // Output: Invalid Day
```

---

### Advanced Example: Using Multiple Values in a Case
```apex
public class GradeChecker {
    public static void checkGrade(String grade) {
        switch on grade {
            when 'A', 'A+' {
                System.debug('Excellent');
            }
            when 'B', 'B+' {
                System.debug('Good');
            }
            when 'C' {
                System.debug('Average');
            }
            when else {
                System.debug('Invalid Grade');
            }
        }
    }
}

// Usage
GradeChecker.checkGrade('A');  // Output: Excellent
GradeChecker.checkGrade('B+'); // Output: Good
GradeChecker.checkGrade('F');  // Output: Invalid Grade
```

---

### Example: Nested Switch Case
```apex
public class RegionChecker {
    public static void checkRegion(String region, String state) {
        switch on region {
            when 'USA' {
                switch on state {
                    when 'California' {
                        System.debug('West Coast');
                    }
                    when 'New York' {
                        System.debug('East Coast');
                    }
                    when else {
                        System.debug('Other Region in USA');
                    }
                }
            }
            when 'India' {
                switch on state {
                    when 'Maharashtra' {
                        System.debug('Western India');
                    }
                    when 'West Bengal' {
                        System.debug('Eastern India');
                    }
                    when else {
                        System.debug('Other Region in India');
                    }
                }
            }
            when else {
                System.debug('Region Unknown');
            }
        }
    }
}

// Usage
RegionChecker.checkRegion('USA', 'California'); // Output: West Coast
RegionChecker.checkRegion('India', 'West Bengal'); // Output: Eastern India
RegionChecker.checkRegion('Canada', 'Ontario'); // Output: Region Unknown
```

---

## Common Errors in If-Else and Switch Case

### 1. Missing Else Block
**Error:** No default action is taken when all conditions are false.
**Fix:** Always include an `else` or `when else` block to handle unexpected cases.

### 2. Overlapping Conditions in If-Else
**Error:** Multiple conditions can be true, leading to logical errors.
**Fix:** Ensure conditions are mutually exclusive or prioritize using `else if`.

### 3. Unsupported Data Types in Switch Case
**Error:** Switch does not support certain data types like `Decimal`.
**Fix:** Convert the unsupported type to a compatible type like `String` or `Integer` before switching.

### 4. Missing Break Statement in If-Else Logic
**Error:** Leads to unintended fall-through in complex conditions.
**Fix:** Explicitly handle each case with separate `if`, `else if`, or `switch` cases.

---

## Summary
- Use `if-else` for simple or dynamic condition checks.
- Use `switch` for cleaner and more structured code when working with multiple fixed values.
- Always include fallback cases to handle unexpected scenarios.
- Test thoroughly to ensure logical correctness and error handling in both structures.

