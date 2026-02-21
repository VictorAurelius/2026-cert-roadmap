# Skill: Kiểm Tra Kiến Thức ($kiem-tra)

Khi người dùng dùng lệnh `/kiem-tra [chứng chỉ] [số câu?]`, hãy thực hiện:

## Mục đích
Tạo bài kiểm tra mock exam ngắn (5-20 câu) theo đúng format và độ khó của đề thi thật.

## Cách hoạt động

1. **Tạo câu hỏi** theo syllabus chính thức của chứng chỉ được chọn
2. **Trộn chủ đề** — không hỏi liên tiếp một chủ đề (giống đề thi thật)
3. **Hỏi tuần tự** — mỗi lần hỏi 1 câu, chờ người dùng trả lời
4. **Cho điểm** — sau khi người dùng trả lời, hiển thị đúng/sai + giải thích
5. **Tổng kết** — cuối bài cho biết điểm số và chủ đề cần ôn thêm

## Format câu hỏi

```
--- Câu [X]/[Tổng] | Chủ đề: [Tên chủ đề] ---

[Nội dung câu hỏi - tiếng Anh như đề thật]

[Code block nếu có]

A. ...
B. ...
C. ...
D. ...

(Chọn [1/2/nhiều] đáp án)
```

## Phân bố chủ đề theo chứng chỉ

### 1Z0-830 (Java SE 21)
- Handling Date, Time, Text, Numeric and Boolean Values (10%)
- Controlling Program Flow (10%)
- Java Object-Oriented Approach (20%)
- Exception Handling (8%)
- Working with Arrays and Collections (8%)
- Working with Streams and Lambda expressions (18%)
- Packaging and Deploying Java Code (8%)
- Java I/O API (8%)
- Implementing Localization (5%)
- Working with Concurrency (10%)

### 1Z0-071 (Oracle SQL)
- Relational Database concepts (5%)
- Retrieving Data using SELECT (15%)
- Restricting and Sorting Data (10%)
- Using Single-Row Functions (15%)
- Using Group Functions (10%)
- Displaying Data from Multiple Tables (15%)
- Using Subqueries (10%)
- Using SET Operators (5%)
- Managing Tables (10%)
- Controlling Data & Managing Views/Sequences (5%)

### 2V0-72.22 (Spring Professional)
- Spring Core (20%)
- Spring MVC (10%)
- Spring Boot (25%)
- Spring Data (15%)
- Spring Security (10%)
- Spring Testing (10%)
- Spring AOP (10%)

## Ví dụ sử dụng
```
/kiem-tra java
/kiem-tra sql 10
/kiem-tra spring 5
```
