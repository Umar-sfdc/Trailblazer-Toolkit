# Type Conversion in Apex

Type conversion in Apex refers to the process of converting a variable from one data type to another. Apex supports both implicit and explicit type conversion. Understanding type conversion is crucial for handling variables in a strongly-typed language like Apex.

## Types of Type Conversion

### 1. **Implicit Type Conversion**
Implicit type conversion, also known as type coercion, occurs automatically when Apex converts a smaller data type into a larger data type without data loss.

#### Example:
```apex
Integer i = 10;
Double d = i; // Implicit conversion from Integer to Double
System.debug('Double value: ' + d);
```

### 2. **Explicit Type Conversion**
Explicit type conversion, or type casting, requires you to specify the target data type. It is used when converting between incompatible types.

#### Example:
```apex
Double d = 10.5;
Integer i = (Integer)d; // Explicit conversion from Double to Integer
System.debug('Integer value: ' + i); // Output: 10
```

### 3. **String Conversion**
Apex provides several ways to convert variables to and from strings. This is particularly useful when working with user inputs or serialized data.

#### Converting Other Types to String:
```apex
Integer num = 123;
String str = String.valueOf(num);
System.debug('String value: ' + str);
```

#### Converting String to Other Types:
```apex
String str = '456';
Integer num = Integer.valueOf(str);
System.debug('Integer value: ' + num);
```

### 4. **Date and DateTime Conversion**
Apex supports conversions between `Date`, `DateTime`, and `String` for handling temporal data.

#### Converting Date to String:
```apex
Date today = Date.today();
String dateStr = String.valueOf(today);
System.debug('Date as String: ' + dateStr);
```

#### Converting String to Date:
```apex
String dateStr = '2025-01-15';
Date date = Date.valueOf(dateStr);
System.debug('Date: ' + date);
```

#### Converting DateTime to String:
```apex
DateTime now = DateTime.now();
String dateTimeStr = now.format();
System.debug('DateTime as String: ' + dateTimeStr);
```

### 5. **List, Set, and Map Conversions**
Apex allows type conversions between collections like Lists, Sets, and Maps.

#### Example 1: List to Set
```apex
List<Integer> numbers = new List<Integer>{1, 2, 3, 3};
Set<Integer> uniqueNumbers = new Set<Integer>(numbers);
System.debug('Unique numbers: ' + uniqueNumbers);
```

#### Example 2: Set to List
```apex
Set<String> names = new Set<String>{'Alice', 'Bob'};
List<String> nameList = new List<String>(names);
System.debug('Names as List: ' + nameList);
```

#### Example 3: Map to List (Keys or Values)
```apex
Map<Integer, String> employeeMap = new Map<Integer, String>{101 => 'Alice', 102 => 'Bob'};
List<Integer> employeeIds = new List<Integer>(employeeMap.keySet());
System.debug('Employee IDs: ' + employeeIds);
```

### 6. **JSON Conversion**
Apex provides built-in methods for JSON serialization and deserialization, which effectively handle type conversions for complex objects.

#### Object to JSON:
```apex
Map<String, Object> data = new Map<String, Object>{'key1' => 'value1', 'key2' => 2};
String jsonData = JSON.serialize(data);
System.debug('JSON String: ' + jsonData);
```

#### JSON to Object:
```apex
String jsonData = '{"key1":"value1","key2":2}';
Map<String, Object> data = (Map<String, Object>)JSON.deserializeUntyped(jsonData);
System.debug('Deserialized Map: ' + data);
```

## Best Practices
1. **Validate Data:** Always validate data before converting, especially for explicit conversions, to avoid exceptions.
2. **Use Try-Catch:** Handle conversion errors gracefully using `try-catch` blocks.
3. **Avoid Data Loss:** Be cautious with explicit conversions to prevent unintended data loss.
4. **Use Built-in Methods:** Leverage Apex's built-in methods like `String.valueOf()`, `Date.valueOf()`, and `JSON.serialize()` for reliable conversions.

By mastering type conversion techniques, you can write robust and error-free Apex code that seamlessly handles diverse data types.

