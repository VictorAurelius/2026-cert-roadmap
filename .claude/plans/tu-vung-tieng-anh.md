# Plan: Học Từ Vựng Tiếng Anh Kỹ Thuật

## Mục tiêu
Đọc hiểu tài liệu tiếng Anh (Oracle docs, Java docs, Spring docs, câu hỏi thi) mà không cần tra từ điển liên tục.

---

## Giai đoạn 1: Từ vựng chung (tuần đầu tiên)

### Từ vựng học thuật hay gặp trong tài liệu kỹ thuật

| Từ | Nghĩa | Ghi chú |
|----|-------|---------|
| deprecated | đã lỗi thời, không nên dùng nữa | Hay gặp trong Java docs |
| encapsulate | đóng gói | OOP concept |
| instantiate | khởi tạo (instance của class) | `new Object()` |
| invoke | gọi (method) | "invoke a method" |
| override | ghi đè | Kế thừa OOP |
| overload | nạp chồng | Nhiều method cùng tên |
| polymorphism | tính đa hình | OOP |
| inheritance | tính kế thừa | OOP |
| abstraction | tính trừu tượng | OOP |
| constraint | ràng buộc | SQL |
| aggregate | tổng hợp | GROUP BY, COUNT... |
| retrieve | lấy dữ liệu | SELECT |
| transaction | giao dịch | COMMIT/ROLLBACK |
| propagation | lan truyền | Spring @Transactional |
| scope | phạm vi | Bean scope, variable scope |

---

## Giai đoạn 2: Từ vựng Java SE 21

### Java Core

| Từ/Cụm từ | Nghĩa tiếng Việt |
|-----------|-----------------|
| compile-time | lúc biên dịch |
| runtime | lúc chạy chương trình |
| heap / stack | vùng nhớ heap / stack |
| garbage collection | thu gom rác (quản lý bộ nhớ) |
| autoboxing / unboxing | tự động đóng hộp / mở hộp kiểu dữ liệu |
| widening / narrowing conversion | mở rộng / thu hẹp kiểu dữ liệu |
| checked exception | ngoại lệ được kiểm tra (phải khai báo) |
| unchecked exception | ngoại lệ không kiểm tra (RuntimeException) |
| functional interface | interface chỉ có 1 abstract method |
| lambda expression | biểu thức lambda (hàm ẩn danh) |
| method reference | tham chiếu phương thức (`::`) |
| sealed class | class được niêm phong (giới hạn class con) |
| record | kiểu dữ liệu bất biến đơn giản |
| pattern matching | so khớp mẫu |
| text block | khối văn bản nhiều dòng |
| virtual thread | luồng ảo (Project Loom, Java 21) |
| structured concurrency | đồng thời có cấu trúc |

### Java Collections & Streams

| Từ/Cụm từ | Nghĩa tiếng Việt |
|-----------|-----------------|
| iterate / iteration | duyệt qua / lần lặp |
| element | phần tử |
| terminal operation | thao tác kết thúc stream |
| intermediate operation | thao tác trung gian stream |
| lazy evaluation | đánh giá lười (chỉ thực thi khi cần) |
| predicate | vị từ / điều kiện (trả về boolean) |
| consumer | tiêu thụ (nhận giá trị, không trả về) |
| supplier | cung cấp (không nhận, trả về giá trị) |
| collector | bộ thu gom (gom stream thành collection) |

---

## Giai đoạn 3: Từ vựng Oracle SQL

| Từ/Cụm từ | Nghĩa tiếng Việt |
|-----------|-----------------|
| relational database | cơ sở dữ liệu quan hệ |
| primary key | khóa chính |
| foreign key | khóa ngoại |
| unique constraint | ràng buộc duy nhất |
| not null constraint | ràng buộc không null |
| check constraint | ràng buộc kiểm tra |
| index | chỉ mục (tăng tốc truy vấn) |
| join | nối bảng |
| subquery | truy vấn con |
| correlated subquery | truy vấn con tương quan |
| aggregate function | hàm tổng hợp (COUNT, SUM...) |
| scalar function | hàm vô hướng (trả về 1 giá trị) |
| partition | phân vùng |
| window function | hàm cửa sổ (OVER PARTITION BY) |
| DDL (Data Definition Language) | ngôn ngữ định nghĩa dữ liệu |
| DML (Data Manipulation Language) | ngôn ngữ thao tác dữ liệu |
| DQL (Data Query Language) | ngôn ngữ truy vấn dữ liệu |
| truncate | xóa toàn bộ dữ liệu (không rollback được) |
| rollback | hoàn tác giao dịch |
| commit | xác nhận giao dịch |
| sequence | đối tượng tạo số tự động tăng |
| synonym | tên bí danh cho object |

---

## Giai đoạn 4: Từ vựng Spring Framework

| Từ/Cụm từ | Nghĩa tiếng Việt |
|-----------|-----------------|
| inversion of control (IoC) | đảo ngược quyền kiểm soát |
| dependency injection (DI) | tiêm phụ thuộc |
| application context | ngữ cảnh ứng dụng (container Spring) |
| bean | đối tượng do Spring quản lý |
| bean definition | định nghĩa cấu hình của bean |
| autowiring | tự động ghép nối dependencies |
| aspect | khía cạnh (AOP) |
| pointcut | điểm cắt (nơi áp dụng advice) |
| advice | lời khuyên (code chạy tại pointcut) |
| join point | điểm nối (nơi advice có thể được áp dụng) |
| weaving | dệt (quá trình áp dụng aspect) |
| dispatcher servlet | servlet điều phối (cổng vào MVC) |
| auto-configuration | tự động cấu hình |
| starter | gói khởi động (spring-boot-starter-*) |
| actuator | cơ cấu chấp hành (monitoring endpoints) |
| repository | kho lưu trữ (tầng truy cập dữ liệu) |
| transaction management | quản lý giao dịch |
| propagation behavior | hành vi lan truyền transaction |

---

## Phương pháp học từ vựng

### Mỗi ngày 15-20 phút:
1. **Đọc 5 từ mới** từ bảng phù hợp với giai đoạn đang học
2. **Dùng `/tu-vung [từ]`** để Claude giải thích chi tiết hơn
3. **Gặp từ lạ khi đọc tài liệu** → dùng `/tu-vung [từ đó]` ngay
4. **Cuối tuần**: Ôn lại 25-30 từ trong tuần, ghi vào flashcard

### Công cụ hỗ trợ:
- **Anki** (free): Tạo flashcard từ vựng, học theo spaced repetition
- **Claude** `/tu-vung`: Giải thích chi tiết trong ngữ cảnh kỹ thuật
- **Context reading**: Đọc nguyên bản tiếng Anh, tra từ khi thực sự cần

### Nguyên tắc:
- Ưu tiên hiểu **nghĩa trong ngữ cảnh kỹ thuật**, không cần thuộc nghĩa từ điển
- Học từ vựng **song song với học lý thuyết**, không tách riêng
- Câu hỏi thi thường dùng **ngôn ngữ tự nhiên của tài liệu gốc** — quen thuật ngữ gốc là lợi thế lớn
