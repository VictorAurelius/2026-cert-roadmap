# Plan: Clone Tài Nguyên GitHub

## Mục tiêu
Clone các GitHub repo quan trọng nhất về máy để học offline và tra cứu nhanh.

---

## Bước 1: Tạo cấu trúc thư mục

```bash
mkdir -p resources/java
mkdir -p resources/sql
mkdir -p resources/spring
```

---

## Bước 2: Clone repos theo từng chứng chỉ

### Java SE 21 (1Z0-830)

```bash
# ⭐ PHẢI CÓ - Study guide đầy đủ, đọc online free
git clone https://github.com/eh3rrera/ocpj21-book.git resources/java/ocpj21-book

# Code examples theo từng chủ đề Java 21
git clone https://github.com/ThiagoBfim/java-21-certification.git resources/java/java-21-certification

# Code từ sách OCP Java SE 21 (Boyarsky & Selikoff) - chương modules
git clone https://github.com/boyarsky/sybex-1Z0-830-chapter-12.git resources/java/sybex-chapter-12

# Code demo từ O'Reilly Crash Course
git clone https://github.com/SimonHGR/Java21CertStudy.git resources/java/java21-cert-study
```

### Oracle SQL (1Z0-071)

```bash
# ⭐ PHẢI CÓ - Cập nhật mới, tổ chức theo folder từng chủ đề (exam topic)
git clone https://github.com/chatelao/1z0-071_Oracle_Database_SQL_Associate.git resources/sql/1z0-071-main

# Câu hỏi mẫu miễn phí (dump questions)
git clone https://github.com/aamirpatel23/Oracle-Database-SQL-1Z0-071-Free-Dump-Questions.git resources/sql/dump-questions
```

> **Lưu ý (đã xác minh 2026-06-22):** 2 repo SQL phổ biến cũ đã bị xóa / set private, KHÔNG còn clone được — đã loại khỏi danh sách:
> - ~~`Lewotobi/1Z0-071_Oracle_Database_SQL_Associate`~~ — 404
> - ~~`Zaanne/1Z0-071`~~ — 404
>
> `chatelao/...` thay thế làm repo SQL chính.

### Spring Professional (2V0-72.22)

```bash
# ⭐ PHẢI CÓ - 143 stars, study guide cực kỳ chi tiết, có official study guide PDF
git clone https://github.com/davidarchanjo/spring-certified-developer-study-guide.git resources/spring/study-guide-main

# Notes chi tiết theo từng câu hỏi trong official study guide
git clone https://github.com/MrR0807/SpringCertification5.0.git resources/spring/spring-cert-notes

# Tips thi thực tế từ người đã thi
git clone https://github.com/seanjgildea/CoreSpring5CertificationGuide.git resources/spring/core-spring-guide

# Trả lời đầy đủ câu hỏi trong Pivotal Study Guide
git clone https://github.com/bachnxhedspi/spring-core-cert-notes-5.0.git resources/spring/pivotal-guide-answers

# Notes + code ví dụ theo từng module
git clone https://github.com/aketza-ayo/spring5-cert-study-notes.git resources/spring/spring5-notes
```

---

## Bước 3: Clone nhanh 3 repos quan trọng nhất (shortcut)

```bash
# Chạy lệnh này nếu muốn clone nhanh 3 repos PHẢI CÓ
git clone https://github.com/eh3rrera/ocpj21-book.git resources/java/ocpj21-book
git clone https://github.com/chatelao/1z0-071_Oracle_Database_SQL_Associate.git resources/sql/1z0-071-main
git clone https://github.com/davidarchanjo/spring-certified-developer-study-guide.git resources/spring/study-guide-main
```

---

## Bước 4: Kiểm tra sau khi clone

```bash
# Xem danh sách repos đã clone
ls resources/java/
ls resources/sql/
ls resources/spring/

# Kiểm tra repo quan trọng nhất cho Java
ls resources/java/ocpj21-book/

# Kiểm tra repo SQL
ls resources/sql/1z0-071-main/

# Kiểm tra repo Spring
ls resources/spring/study-guide-main/
```

---

## Ưu tiên clone theo lộ trình

| Tháng | Clone ngay | Ghi chú |
|-------|-----------|---------|
| 1-3 (SQL) | `1z0-071-main` (chatelao), `dump-questions` | Học SQL trước |
| 4-9 (Java) | `ocpj21-book`, `java-21-certification` | Java là khó nhất |
| 10-13 (Spring) | `study-guide-main`, `spring-cert-notes` | Cần Java vững trước |

---

## Lưu ý
- Các repo này **không cần commit** vào repo chính, chỉ dùng để học
- Thêm `resources/` vào `.gitignore` nếu muốn giữ repo gọn
- Cập nhật repo học tập bằng `git pull` định kỳ
