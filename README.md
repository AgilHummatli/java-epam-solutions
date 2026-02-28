# ☕ EPAM Java Introduction: Full Course Solutions

> *"Don't be fooled by the word 'Basics' in the title."*

My solutions for the **[Beginner] Java Introduction** course by EPAM, a structured 141-hour Java curriculum across 6 modules. Despite the name, this course goes surprisingly deep. It took a few months of consistent work alongside a full-time job, and it genuinely changed how I think about software design.

---

## 📋 Course Overview

| Module | Topic | Focus |
|--------|-------|-------|
| 01 | Java Essentials | Language foundations |
| 02 | Java Basics | Specialized class types |
| 03 | Java Collections | Data structures |
| 04 | Java I/O Streams | File & data I/O |
| 05 | Lambdas & Streams | Functional programming |
| 06 | Exam Tasks | Applied assessments |

---

## 🗂️ Repository Structure

```
src/
├── module_1_java_essentials/        # Core syntax & OOP foundations
├── module_2_java_basics/            # Nested classes, generics, enums
├── module_3_collections/            # Data structures & algorithms
├── module_4_io_streams/             # File I/O, NIO.2, serialization
├── module_5_lambdas_and_streams/    # Functional programming
└── module_6_exam_tasks/             # Final exam solutions
```

---

## 📚 What I Learned

### Module 1: Java Essentials

The foundation. This module goes much further than basic syntax and forces you to understand how Java works at the memory level.

- **First Programs & Data Types:** primitives vs objects, type casting, how the JVM handles memory for different types
- **Conditions & Loops:** control flow, subtleties of `switch`, loop optimization
- **Arrays:** single and multi-dimensional, in-place algorithms (cycle swap, spiral fill, matrix transposition, local maxima removal)
- **Classes:** constructors, method overloading, encapsulation, the `this` keyword, object lifecycle
- **OOP:** inheritance chains, polymorphism in practice, method overriding vs overloading, what abstraction actually means
- **Abstract Classes & Interfaces:** when to use which, default methods, `Comparable` vs `Comparator`
- **Working with Strings:** String pool internals, `StringBuilder` vs `StringBuffer`, regex, path conversion logic
- **Exceptions:** checked vs unchecked, exception chaining, custom exception hierarchies, `finally` block behavior

**Notable tasks:** Battleship 8x8 (bit manipulation using `long`), Spiral matrix fill, DecrementingCarousel (stateful OOP design), Sprint Planning (full inheritance hierarchy with real business logic)

---

### Module 2: Java Basics

Where Java starts feeling like a real language. Each topic unlocks a new level of expressiveness.

- **Nested Classes:** inner, static nested, anonymous, and local classes with practical use cases for each
- **Annotations:** built-in annotations, retention policies, how the compiler uses metadata
- **Generics:** type erasure, bounded wildcards (`<? extends T>`, `<? super T>`), generic methods, why raw types are dangerous
- **Enums:** enums as full classes with fields and methods, `EnumSet`, `EnumMap`
- **Wrapper Classes:** autoboxing/unboxing pitfalls, `Integer` cache behavior, static utility methods
- **Optional:** null-safe programming, chaining with `map`, `flatMap`, `orElseGet`
- **Code Documentation:** Javadoc conventions, self-documenting code principles

**Notable tasks:** ArithmeticExpressions DSL (anonymous classes), ContactBook (multiple nested class types), Battleship8x8 (bit operations via wrapper class statics)

---

### Module 3: Java Collections

The most practically dense module. You don't just use collections here, you understand their internals, time complexity, and when each one is the right choice.

- **Introduction:** the Collections Framework design, `Iterable` vs `Collection` vs `List`, iterator pattern
- **Lists & Queues:** `ArrayList` vs `LinkedList` tradeoffs, custom `SimpleArrayList` from scratch (dynamic resizing at 75% load factor), custom `DoublyLinkedList` from scratch with head/tail pointers
- **Sets:** `HashSet` (hash buckets), `LinkedHashSet` (insertion order), `TreeSet` (red-black tree), `EnumSet` (bit vector)
- **Maps:** `HashMap` internals (hashing, collision resolution), `TreeMap` with custom `Comparator`, `BooksCatalog` (TreeMap + Comparable), `StudentsGradebook` with nested `TreeMap<Student, HashMap<String, BigDecimal>>`
- **Legacy Collections:** `Vector`, `Stack`, `Hashtable`, `Properties` and why they're thread-safe but slow
- **Collection Algorithms:** `Collections.sort`, `Collections.shuffle`, `Collections.binarySearch`, Big O across all data structures

**Notable tasks:** Custom ArrayList from scratch, DoublyLinkedList from scratch, BooksCatalog with Comparable, BirthJournal (immutable Map), NewPostOfficeStorage (aggregate pattern)

---

### Module 4: Java I/O Streams

One of the trickier modules. I/O in Java is layered: byte streams, character streams, buffered streams, object streams. Knowing when to wrap what took real practice.

- **Byte & Character Streams:** `InputStream`/`OutputStream` vs `Reader`/`Writer`, the decorator pattern in the stream hierarchy
- **Other I/O Streams:** `BufferedReader`, `Scanner`, `DataInputStream`, `PrintWriter`, stream chaining
- **NIO.2:** `Path`, `Files`, `Paths`, directory walking with `Files.walk()`, building a file tree with size calculation
- **Serialization:** `Serializable`, `transient` keyword, `serialVersionUID`, complex object graph serialization with the `Order`/`Item`/`ItemCharacteristic` hierarchy

**Notable tasks:** FileTree (NIO.2 directory traversal with tree-style output), Order serialization (polymorphic object graph), VehicleRentalAgency IO task

---

### Module 5: Lambdas & Streams

Where Java starts feeling modern. Functional programming flips how you think about data: instead of writing loops that mutate state, you describe transformations as a pipeline.

- **Lambda Expressions:** syntax variations, effectively final variables, method references (`::`)
- **Functional Interfaces:** `Predicate`, `Consumer`, `Supplier`, `Function`, `BiFunction`, `UnaryOperator`, composing with `andThen`, `compose`, `negate`
- **Stream API:** lazy evaluation, intermediate vs terminal operations, `filter`, `map`, `flatMap`, `sorted`, `reduce`, `collect`, `groupingBy`, `partitioningBy`
- **Collectors:** `toList`, `toSet`, `toMap`, `groupingBy`, `joining`, `counting`, `averagingInt`
- **Optional with Streams:** combining them for null-safe pipelines

**Notable tasks:** MovieQueries (Stream API over a movie/person domain), VehicleRentalAgency (full domain model with Sort/Find interfaces using only Streams + Lambdas), client ranking by order totals

---

### Module 6: Exam Tasks

Standalone assessed tasks that combine everything. Closer to real mini-projects with UML diagrams, proper interfaces, and full test suites.

- **OOP Model Exam:** full domain model with inheritance, encapsulation, proper `equals`/`hashCode`/`toString`
- **Collections Exam:** filtering, sorting, grouping across multiple collection types
- **Streams Exam:** VehicleRentalAgency with full Stream API
- **IO Exam:** VehicleRentalAgency with CSV file handling

---

## 🛠️ Tech Stack

![Java](https://img.shields.io/badge/Java-11%2B-orange?style=flat-square&logo=java)
![Maven](https://img.shields.io/badge/Maven-build-blue?style=flat-square&logo=apachemaven)
![JUnit](https://img.shields.io/badge/JUnit-5-green?style=flat-square&logo=junit5)
![Gradle](https://img.shields.io/badge/Gradle-build-02303A?style=flat-square&logo=gradle)

---

## 💡 Things That Actually Stuck

A few things I didn't fully get until working through this:

**The Collections Framework is a great example of OOP design.** Understanding why `ArrayList` extends `AbstractList` which implements `List` which extends `Collection` which extends `Iterable` taught me more about interface design than any article I've read.

**Generics are purely a compile-time feature.** Type erasure means they don't exist at runtime. Once that clicked, wildcards stopped being confusing.

**Streams are lazy.** Nothing runs until a terminal operation is called. That's why you can chain 10 intermediate operations and still only make one pass through the data.

**Serialization is fragile.** Changing a class can break deserialization of previously serialized objects if you're not managing `serialVersionUID`. This is why most modern Java code uses JSON instead.

**Anonymous classes are not just pre-lambda lambdas.** They can hold state, implement multiple methods, and access the enclosing class, things a lambda can't do.

---

## 📊 Stats

- **Total hours:** ~141
- **Platform:** EPAM Learn with Autocode automated testing
- **Exercises:** 60+ individual coding tasks
- **Modules:** 6, each with multiple sub-topics

---

