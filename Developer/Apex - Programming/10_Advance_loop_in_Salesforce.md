# Accessing Values in Collection Data Types Using Loops in Salesforce

In Salesforce, collections like Lists, Sets, and Maps are used to store and manipulate groups of related data. Accessing and iterating through these collections is a common requirement in Apex programming. Below are examples demonstrating how to work with these collections using loops.

## 1. **Accessing Values in a List**
A List is an ordered collection that allows duplicate elements. You can access values using a traditional for loop, a for-each loop, or other approaches.

### Example 1: Using For Loop with Index
```apex
List<String> fruits = new List<String>{'Apple', 'Banana', 'Cherry'};
for (Integer i = 0; i < fruits.size(); i++) {
    System.debug('Fruit at index ' + i + ': ' + fruits[i]);
}
```

### Example 2: Using For-Each Loop
```apex
List<String> fruits = new List<String>{'Apple', 'Banana', 'Cherry'};
for (String fruit : fruits) {
    System.debug('Fruit: ' + fruit);
}
```

### Example 3: Using Stream API
```apex
List<Integer> numbers = new List<Integer>{1, 2, 3, 4};
numbers.stream().forEach(number -> {
    System.debug('Number: ' + number);
});
```

### Example 4: Accessing with Conditional Logic
```apex
List<String> items = new List<String>{'Book', 'Pen', 'Notebook'};
for (String item : items) {
    if (item.startsWith('N')) {
        System.debug('Item starting with N: ' + item);
    }
}
```

## 2. **Accessing Values in a Set**
A Set is an unordered collection that does not allow duplicate elements. Since there is no index, you use a for-each loop to iterate through the elements.

### Example 1: Using For-Each Loop
```apex
Set<String> colors = new Set<String>{'Red', 'Green', 'Blue'};
for (String color : colors) {
    System.debug('Color: ' + color);
}
```

### Example 2: Convert Set to List for Indexed Access
```apex
Set<String> animals = new Set<String>{'Dog', 'Cat', 'Bird'};
List<String> animalList = new List<String>(animals);
for (Integer i = 0; i < animalList.size(); i++) {
    System.debug('Animal at index ' + i + ': ' + animalList[i]);
}
```

### Example 3: Using Conditional Logic in For-Each Loop
```apex
Set<Integer> ids = new Set<Integer>{101, 102, 103};
for (Integer id : ids) {
    if (id > 101) {
        System.debug('ID greater than 101: ' + id);
    }
}
```

### Example 4: Stream API with Sets
```apex
Set<String> shapes = new Set<String>{'Circle', 'Square', 'Triangle'};
shapes.stream().forEach(shape -> {
    System.debug('Shape: ' + shape);
});
```

## 3. **Accessing Values in a Map**
A Map is a collection of key-value pairs. You can iterate through keys, values, or both.

### Example 1: Iterating Through Keys
```apex
Map<String, String> countries = new Map<String, String>{'US' => 'United States', 'IN' => 'India', 'UK' => 'United Kingdom'};
for (String key : countries.keySet()) {
    System.debug('Country Code: ' + key);
}
```

### Example 2: Iterating Through Values
```apex
Map<String, String> countries = new Map<String, String>{'US' => 'United States', 'IN' => 'India', 'UK' => 'United Kingdom'};
for (String value : countries.values()) {
    System.debug('Country Name: ' + value);
}
```

### Example 3: Iterating Through Key-Value Pairs
```apex
Map<String, String> countries = new Map<String, String>{'US' => 'United States', 'IN' => 'India', 'UK' => 'United Kingdom'};
for (Map<String, String>.Entry<String, String> entry : countries.entrySet()) {
    System.debug('Key: ' + entry.getKey() + ', Value: ' + entry.getValue());
}
```

### Example 4: Filtering Key-Value Pairs
```apex
Map<Integer, String> employees = new Map<Integer, String>{101 => 'Alice', 102 => 'Bob', 103 => 'Charlie'};
for (Integer key : employees.keySet()) {
    if (key > 101) {
        System.debug('Employee ID: ' + key + ', Name: ' + employees.get(key));
    }
}
```

## Best Practices for Accessing Collection Data
1. Use **for-each loops** for better readability when you don’t need an index.
2. Use **keySet()**, **values()**, or **entrySet()** to access specific parts of a map efficiently.
3. Avoid modifying collections while iterating to prevent unexpected behavior.
4. Use **conditional checks** for selective processing of collection data.

By leveraging the appropriate looping methods and practices, you can effectively handle and process collection data in Salesforce Apex.

