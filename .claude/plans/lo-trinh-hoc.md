# Plan: Lộ Trình Học 12-15 Tháng

## Tổng quan

| Giai đoạn | Thời gian | Chứng chỉ | Lý do thứ tự |
|-----------|-----------|-----------|--------------|
| 1 | Tháng 1-3 | 1Z0-071 Oracle SQL | Dễ nhất, tạo đà (momentum) |
| 2 | Tháng 4-9 | 1Z0-830 Java SE 21 | Khó nhất, cần nhiều thời gian |
| 3 | Tháng 10-13 | 2V0-72.22 Spring Pro | Cần nền Java vững từ giai đoạn 2 |

---

## Giai Đoạn 1: Oracle Database SQL (Tháng 1-3)

### Mục tiêu
Đạt 63%+ trong kỳ thi 1Z0-071 (63 câu, 120 phút).

### Tuần 1-2: Nền tảng
- [ ] Clone repo `resources/sql/1z0-071-main`
- [ ] Đọc tổng quan exam syllabus (DBExam link)
- [ ] Thiết lập Oracle XE hoặc dùng Oracle LiveSQL để thực hành
- [ ] Ôn lại SQL cơ bản: SELECT, WHERE, ORDER BY

### Tuần 3-6: Nội dung chính
- [ ] Relational Database concepts + SELECT statements
- [ ] Restricting và Sorting Data (WHERE, ORDER BY, FETCH)
- [ ] Single-Row Functions (string, number, date, conversion)
- [ ] Group Functions (COUNT, SUM, AVG, GROUP BY, HAVING)
- [ ] Multiple Tables (INNER JOIN, OUTER JOIN, CROSS JOIN, Natural JOIN)

### Tuần 7-10: Nội dung nâng cao
- [ ] Subqueries (single-row, multi-row, correlated)
- [ ] SET Operators (UNION, INTERSECT, MINUS)
- [ ] DDL: CREATE, ALTER, DROP TABLE
- [ ] DML: INSERT, UPDATE, DELETE, MERGE
- [ ] Views, Sequences, Synonyms, Indexes

### Tuần 11-12: Luyện đề
- [ ] Làm mock exam mỗi ngày (DBExam free questions)
- [ ] Review các câu sai, ghi chú điểm yếu
- [ ] Đạt >75% trong mock exam liên tục trước khi đăng ký thi

### Tài nguyên chính
- Repo: `resources/sql/1z0-071-main`
- Practice: Oracle LiveSQL (https://livesql.oracle.com/)
- Mock exam: DBExam free questions

---

## Giai Đoạn 2: Java SE 21 Developer (Tháng 4-9)

### Mục tiêu
Đạt 68%+ trong kỳ thi 1Z0-830 (50 câu, 120 phút).

### Tháng 4: Java Core & OOP
- [ ] Clone repo `resources/java/ocpj21-book`
- [ ] Đọc qua toàn bộ mục lục ocpj21-book
- [ ] Java basics: types, operators, control flow
- [ ] OOP: classes, interfaces, inheritance, polymorphism
- [ ] Enums, Records, Sealed Classes (Java 14-17-21 features)

### Tháng 5: Generics, Collections, Streams
- [ ] Generics và type inference
- [ ] Collections framework (List, Set, Map, Queue)
- [ ] Iterator, Comparable, Comparator
- [ ] Lambda expressions và Functional interfaces
- [ ] Stream API (filter, map, reduce, collect)

### Tháng 6: Modern Java Features
- [ ] Pattern Matching (instanceof, switch)
- [ ] Text Blocks
- [ ] Optional class
- [ ] Date/Time API (LocalDate, LocalTime, ZonedDateTime)
- [ ] String methods mới trong Java 21

### Tháng 7: I/O, Modules, Exceptions
- [ ] Exception handling (checked, unchecked, multi-catch)
- [ ] Java I/O: Files, Paths, NIO.2
- [ ] Java Module System (JPMS)
- [ ] Localization và Internationalization

### Tháng 8: Concurrency
- [ ] Threads và Runnable
- [ ] Concurrency utilities (ExecutorService, Future)
- [ ] Synchronization, locks, deadlocks
- [ ] Virtual Threads (Java 21)
- [ ] Concurrent collections

### Tháng 9: Luyện đề
- [ ] Làm full mock exam mỗi ngày
- [ ] Review sai từng câu, vẽ mindmap tổng kết
- [ ] Đạt >80% trong mock exam liên tục trước khi thi
- [ ] Đặc biệt chú ý: tricky questions về operator precedence, scoping

### Tài nguyên chính
- Repo: `resources/java/ocpj21-book` (đọc hết từng chapter)
- Practice: IntelliJ IDEA + Java 21
- Mock exam: Enthuware, javinpaul Udemy practice tests

---

## Giai Đoạn 3: Spring Certified Professional (Tháng 10-13)

### Mục tiêu
Đạt 300/500 điểm trong kỳ thi 2V0-72.22 (60 câu, 130 phút).

### Tháng 10: Spring Core
- [ ] Clone repo `resources/spring/study-guide-main`
- [ ] IoC Container và Application Context
- [ ] Bean lifecycle, scopes (singleton, prototype, request, session)
- [ ] Dependency Injection (constructor, setter, field)
- [ ] @Component, @Service, @Repository, @Controller
- [ ] @Autowired, @Qualifier, @Primary

### Tháng 11: Spring Boot & AOP
- [ ] Spring Boot auto-configuration
- [ ] Spring Boot Actuator
- [ ] Spring AOP: pointcut, advice, aspect
- [ ] Spring MVC: DispatcherServlet, controllers, views
- [ ] REST API với Spring MVC

### Tháng 12: Spring Data & Security
- [ ] Spring Data JPA: repositories, queries
- [ ] Spring Data transactions (@Transactional)
- [ ] Spring Security: authentication, authorization
- [ ] OAuth2 basics

### Tháng 13: Testing & Luyện đề
- [ ] Spring Testing: @SpringBootTest, @MockBean, @WebMvcTest
- [ ] Integration tests
- [ ] Làm mock exam và review
- [ ] Đạt >65% trong mock exam liên tục

### Tài nguyên chính
- Repo: `resources/spring/study-guide-main` (đọc kỹ)
- Thực hành: Spring Initializr + IntelliJ
- Mock exam: Whizlabs Spring Professional

---

## Lịch Học Hàng Tuần (Gợi ý)

| Thứ | Hoạt động |
|-----|-----------|
| Thứ 2 | Học lý thuyết mới (2-3 chủ đề) |
| Thứ 3 | Thực hành code / SQL |
| Thứ 4 | Học lý thuyết tiếp (2-3 chủ đề) |
| Thứ 5 | Thực hành + giải bài tập |
| Thứ 6 | Ôn lại tuần, dùng `/on-tap` với Claude |
| Thứ 7 | Mock exam (10-20 câu), review sai |
| Chủ nhật | Nghỉ hoặc đọc thêm tài liệu nhẹ |

---

## Mốc Quan Trọng

- [ ] Tháng 1: Clone xong toàn bộ resources
- [ ] Tháng 3: Thi 1Z0-071 lần đầu
- [ ] Tháng 9: Thi 1Z0-830 lần đầu
- [ ] Tháng 13: Thi 2V0-72.22 lần đầu
- [ ] Tháng 15: Hoàn thành cả 3 chứng chỉ (có buffer nếu cần thi lại)
