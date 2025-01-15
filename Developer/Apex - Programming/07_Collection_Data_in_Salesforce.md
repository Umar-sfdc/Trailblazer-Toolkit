# Collection Data Types in Salesforce

Salesforce provides several collection data types in Apex for storing and managing groups of data. These include:

## 1. Lists
A **List** is an ordered collection of elements that can contain duplicate values. Lists are useful when the order of elements matters or when you need to reference elements by their position in the collection.

### Syntax
```apex
List<DataType> listName = new List<DataType>();
```

### Intermediate Example
```apex
// Creating and initializing a list
List<String> movieGenres = new List<String>{'Action', 'Comedy', 'Drama'};

// Adding elements
movieGenres.add('Thriller');
movieGenres.add('Sci-Fi');

// Updating an element
movieGenres[1] = 'Romantic Comedy';

// Iterating through a list
for (String genre : movieGenres) {
    System.debug('Genre: ' + genre);
}

// Removing an element
movieGenres.remove(0); // Removes 'Action'

System.debug('Final List: ' + movieGenres);
```

---

## 2. Sets
A **Set** is an unordered collection of unique elements. Sets are useful when you want to store data without duplicates and do not need to maintain order.

### Syntax
```apex
Set<DataType> setName = new Set<DataType>();
```

### Intermediate Example
```apex
// Creating and initializing a set
Set<String> movieLanguages = new Set<String>{'English', 'French', 'Spanish'};

// Adding elements
movieLanguages.add('German');
movieLanguages.add('English'); // Duplicate, won't be added

// Checking if an element exists
if (movieLanguages.contains('French')) {
    System.debug('French is in the set.');
}

// Iterating through a set
for (String language : movieLanguages) {
    System.debug('Language: ' + language);
}

// Removing an element
movieLanguages.remove('Spanish');

System.debug('Final Set: ' + movieLanguages);
```

---

## 3. Maps
A **Map** is a collection of key-value pairs, where each key is unique and maps to a single value. Maps are useful when you need to associate values with specific keys for quick lookups.

### Syntax
```apex
Map<KeyDataType, ValueDataType> mapName = new Map<KeyDataType, ValueDataType>();
```

### Intermediate Example
```apex
// Creating and initializing a map
Map<String, Integer> movieRatings = new Map<String, Integer>{
    'Inception' => 5,
    'Avatar' => 4,
    'Titanic' => 5
};

// Adding entries
movieRatings.put('The Matrix', 5);
movieRatings.put('Inception', 4); // Updates the existing rating for 'Inception'

// Accessing values
System.debug('Rating for Titanic: ' + movieRatings.get('Titanic'));

// Iterating through a map
for (String movie : movieRatings.keySet()) {
    System.debug(movie + ' has a rating of ' + movieRatings.get(movie));
}

// Removing an entry
movieRatings.remove('Avatar');

System.debug('Final Map: ' + movieRatings);
```

---

## Best Practices for Using Collections
1. **Use Sets for Uniqueness**: Use a Set when you want to ensure that elements are unique.
2. **Use Lists for Ordered Data**: Use a List when the order of elements matters or when you need to access elements by index.
3. **Use Maps for Key-Value Relationships**: Use a Map when you need to associate data with a unique key.
4. **Null Safety**: Always initialize collections before use to avoid `NullPointerException`.
5. **Bulkify Code**: Use collections in bulk operations to process multiple records efficiently in a single transaction.

---

This document covers the essential concepts and examples of List, Set, and Map in Salesforce. By leveraging these collection types effectively, you can manage data more efficiently in your Apex code.
