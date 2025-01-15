# Advanced Examples of Salesforce Collections

Below are advanced examples of Salesforce collection data types: **List**, **Set**, and **Map**.

## 1. Advanced List Example
### Scenario
You are building a feature to manage a streaming service's movie catalog, where you need to process and sort a list of movies by ratings and filter movies of a specific genre.

```apex
// List of Movies with ratings and genres
public class Movie {
    public String name;
    public Decimal rating;
    public String genre;

    public Movie(String name, Decimal rating, String genre) {
        this.name = name;
        this.rating = rating;
        this.genre = genre;
    }
}

List<Movie> movieCatalog = new List<Movie>{
    new Movie('Inception', 8.8, 'Sci-Fi'),
    new Movie('The Godfather', 9.2, 'Crime'),
    new Movie('Interstellar', 8.6, 'Sci-Fi'),
    new Movie('Pulp Fiction', 8.9, 'Crime')
};

// Filter movies by genre "Sci-Fi"
List<Movie> sciFiMovies = new List<Movie>();
for (Movie m : movieCatalog) {
    if (m.genre == 'Sci-Fi') {
        sciFiMovies.add(m);
    }
}

// Sort movies by rating in descending order
movieCatalog.sort(new Comparator<Movie>() {
    public Integer compare(Movie a, Movie b) {
        return b.rating.compareTo(a.rating);
    }
});

System.debug('Sorted Movie Catalog: ' + movieCatalog);
System.debug('Sci-Fi Movies: ' + sciFiMovies);
```

---

## 2. Advanced Set Example
### Scenario
You are handling a user base where duplicate email addresses need to be identified and removed while preserving unique emails for notification.

```apex
// List of emails with duplicates
List<String> emails = new List<String>{
    'user1@example.com', 'user2@example.com', 'user3@example.com',
    'user1@example.com', 'user4@example.com', 'user3@example.com'
};

// Use a Set to remove duplicates
Set<String> uniqueEmails = new Set<String>();
uniqueEmails.addAll(emails);

System.debug('Unique Emails: ' + uniqueEmails);

// Identify duplicates
Set<String> duplicates = new Set<String>();
for (String email : emails) {
    if (!uniqueEmails.add(email)) {
        duplicates.add(email);
    }
}

System.debug('Duplicate Emails: ' + duplicates);
```

---

## 3. Advanced Map Example
### Scenario
You need to build a system where each movie has multiple showtimes, and you need to display showtimes grouped by movie.

```apex
// Map of Movies and their Showtimes
Map<String, List<String>> movieShowtimes = new Map<String, List<String>>();

// Add showtimes for each movie
movieShowtimes.put('Inception', new List<String>{'10:00 AM', '2:00 PM', '6:00 PM'});
movieShowtimes.put('The Godfather', new List<String>{'11:00 AM', '3:00 PM', '7:00 PM'});
movieShowtimes.put('Interstellar', new List<String>{'12:00 PM', '4:00 PM', '8:00 PM'});

// Access and display all showtimes for a specific movie
String movieName = 'Inception';
if (movieShowtimes.containsKey(movieName)) {
    System.debug('Showtimes for ' + movieName + ': ' + movieShowtimes.get(movieName));
} else {
    System.debug('Movie not found.');
}

// Iterate over all movies and their showtimes
for (String movie : movieShowtimes.keySet()) {
    System.debug('Movie: ' + movie + ', Showtimes: ' + movieShowtimes.get(movie));
}
```

---

## Key Takeaways
1. **Lists**: Used for ordered data manipulation and sorting.
2. **Sets**: Excellent for ensuring uniqueness and detecting duplicates.
3. **Maps**: Ideal for key-value data storage and retrieval.

These examples demonstrate the practical use of Salesforce collections for handling real-world scenarios efficiently in Apex.
