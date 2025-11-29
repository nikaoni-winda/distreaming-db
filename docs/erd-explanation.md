# ERD Explanation – diStreaming

This document describes the table structure, primary keys, foreign keys, and the relationships used in the **diStreaming** database design.

---

# Primary Keys & Unique Constraints

## 1. users
- **PK:** `user_id`  
- **Unique:** `user_email`  
  Ensures that each user can only have one unique email address.

---

## 2. movies
- **PK:** `movie_id`

---

## 3. genres
- **PK:** `genre_id`  
- **Unique:** `genre_name`  
  Prevents duplicate genre names in the database.

---

## 4. actors
- **PK:** `actor_id`

---

## 5. watch_history
- **PK:** `watch_history_id`

---

## 6. reviews
- **PK:** `review_id`  
- **Unique:** `(user_id, movie_id)`  
  Ensures one user can only submit one review for a specific movie.

---

## 7. movie_genres (junction table)
- **Composite PK:** `(movie_id, genre_id)`

---

## 8. movie_actors (junction table)
- **Composite PK:** `(movie_id, actor_id)`

---

# Table Relationships

## users → watch_history
- **FK:** `watch_history.user_id → users.user_id`  
- **Relationship:** 1 → N  
  - One user can have multiple watch history entries.  
  - Each watch history record belongs to one user.

---

## movies → watch_history
- **FK:** `watch_history.movie_id → movies.movie_id`  
- **Relationship:** 1 → N  
  - One movie can appear multiple times in watch history.  
  - Each history record refers to a single movie.

---

## users → reviews
- **FK:** `reviews.user_id → users.user_id`  
- **Relationship:** 1 → N  
  - One user can write multiple reviews.  
  - Each review is written by exactly one user.

---

## movies → reviews
- **FK:** `reviews.movie_id → movies.movie_id`  
- **Relationship:** 1 → N  
  - A movie can receive multiple reviews from different users.
  - Each review is only for a single movie.

---

## movies ↔ genres (via movie_genres)
- **FKs:**  
  - `movie_genres.movie_id → movies.movie_id`  
  - `movie_genres.genre_id → genres.genre_id`  

- **Combined Relationship:** M ↔ N  
  - One movie can have multiple genres.  
  - One genre can be associated with multiple movies.

---

## movies ↔ actors (via movie_actors)
- **FKs:**  
  - `movie_actors.movie_id → movies.movie_id`  
  - `movie_actors.actor_id → actors.actor_id`  

- **Combined Relationship:** M ↔ N  
  - One movie can feature many actors.  
  - One actor can appear in multiple movies.

---

# Cardinality Summary

| Relationship            | Cardinality | Description                                             |
|-------------------------|-------------|---------------------------------------------------------|
| users → watch_history   | 1 : N       | One user has many watch history records                |
| movies → watch_history  | 1 : N       | One movie appears in many watch history entries        |
| users → reviews         | 1 : N       | One user can submit many reviews                       |
| movies → reviews        | 1 : N       | One movie can receive many reviews                     |
| movies ↔ genres         | M : N       | Many-to-many via `movie_genres`                        |
| movies ↔ actors         | M : N       | Many-to-many via `movie_actors`                        |
| genres → movie_genres   | 1 : N       | One genre can be linked to many movies                 |
| actors → movie_actors   | 1 : N       | One actor can be linked to many movies                 |

---

# Notes

- Primary keys use integer types for simplicity and performance.  
- Unique constraints help prevent logical duplication (e.g., one user reviewing one movie only once).  
- Junction tables (`movie_genres` and `movie_actors`) are used to represent many-to-many relationships.
