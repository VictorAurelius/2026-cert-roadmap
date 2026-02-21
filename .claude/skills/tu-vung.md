# Skill: Học Từ Vựng Tiếng Anh ($tu-vung)

Khi người dùng dùng lệnh `/tu-vung [từ/cụm từ hoặc đoạn văn]`, hãy thực hiện:

## Mục đích
Giúp người học hiểu từ vựng tiếng Anh kỹ thuật xuất hiện trong tài liệu Oracle, Java, Spring docs để đọc hiểu tốt hơn.

## Định dạng đầu ra

### Nếu nhập 1 từ / cụm từ:
| Trường | Nội dung |
|--------|----------|
| Từ gốc | (từ tiếng Anh) |
| Phiên âm | /.../ |
| Nghĩa trong ngữ cảnh kỹ thuật | (tiếng Việt) |
| Nghĩa thông thường | (nếu khác) |
| Ví dụ câu | (câu ví dụ từ tài liệu kỹ thuật) |
| Từ đồng nghĩa / liên quan | (danh sách) |
| Gặp trong chứng chỉ | 1Z0-830 / 1Z0-071 / 2V0-72.22 |

### Nếu nhập đoạn văn tiếng Anh:
- Dịch toàn bộ đoạn ra tiếng Việt (tự nhiên, không dịch máy)
- Highlight và giải thích các từ kỹ thuật quan trọng
- Ghi chú những điểm liên quan đến đề thi

## Danh mục từ vựng theo chủ đề
Khi được yêu cầu, tạo bảng từ vựng theo chủ đề:
- `java-core`: encapsulation, polymorphism, inheritance, abstraction...
- `java-concurrency`: thread, synchronization, lock, deadlock, volatile...
- `sql-basics`: constraint, index, join, aggregate, subquery...
- `spring-core`: dependency injection, inversion of control, bean, scope, autowire...

## Ví dụ sử dụng
```
/tu-vung encapsulation
/tu-vung "A method that overrides a superclass method must not throw checked exceptions"
/tu-vung java-concurrency
```
