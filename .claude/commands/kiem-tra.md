---
description: Mock exam tương tác — hỏi từng câu theo phân bố chủ đề của đề thi thật
argument-hint: [cert: java|sql|spring] [số câu? mặc định 10]
---

Tạo bài mock exam tương tác cho: **$ARGUMENTS**

## Cách hoạt động
1. **Tạo câu hỏi** theo syllabus chính thức của cert được chọn, theo đúng % phân bố dưới đây.
2. **Trộn chủ đề** — không hỏi liên tiếp cùng một chủ đề (giống đề thật).
3. **Hỏi tuần tự** — mỗi lần 1 câu, CHỜ tôi trả lời rồi mới chấm.
4. **Chấm điểm** — sau mỗi câu: đúng/sai + giải thích tiếng Việt.
5. **Tổng kết** — cuối bài: điểm số, chủ đề cần ôn thêm, gợi ý ghi vào sổ lỗi (`/lich-su-sai`).

## Format câu hỏi
```
--- Câu [X]/[Tổng] | Chủ đề: [Tên] ---

[Câu hỏi tiếng Anh như đề thật]
[Code block nếu có]

A. ...   B. ...   C. ...   D. ...

(Chọn [1/nhiều] đáp án)
```

## Phân bố chủ đề

### 1Z0-830 (Java SE 21)
Handling Date/Time/Text/Numeric/Boolean (10%) · Controlling Program Flow (10%) · OOP (20%) · Exception Handling (8%) · Arrays & Collections (8%) · Streams & Lambda (18%) · Packaging & Deploying (8%) · Java I/O API (8%) · Localization (5%) · Concurrency (10%).

### 1Z0-071 (Oracle SQL)
Relational DB concepts (5%) · SELECT (15%) · Restricting & Sorting (10%) · Single-Row Functions (15%) · Group Functions (10%) · Multiple Tables / Joins (15%) · Subqueries (10%) · SET Operators (5%) · Managing Tables / DDL-DML (10%) · Views/Sequences (5%).

### 2V0-72.22 (Spring Professional)
Spring Core (20%) · Spring Boot (25%) · Spring Data (15%) · Spring MVC (10%) · Spring Security (10%) · Spring Testing (10%) · Spring AOP (10%).

Nếu không ghi số câu → mặc định 10. Cert: `java`/`sql`/`spring`.
