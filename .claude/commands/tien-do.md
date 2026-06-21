---
description: Review tiến độ ôn thi + gợi ý bước học kế tiếp
argument-hint: (không cần tham số)
---

Giúp tôi review tiến độ học và gợi ý bước kế tiếp.

Các bước:
1. Đọc `documents/progress/tien-do.md` — xác định đang học cert nào, tuần/tháng mấy, % checklist hoàn thành.
2. Đọc `documents/progress/so-loi-sai.md` — tìm chủ đề yếu (sai nhiều) cần ôn lại.
3. Đối chiếu với lộ trình trong `.claude/plans/lo-trinh-hoc.md` — đang đúng tiến độ, sớm hay trễ?
4. Tính **đếm ngược ngày thi** nếu `tien-do.md` có ghi ngày thi dự kiến (so với ngày hiện tại).

Trả về:
- **Tóm tắt 1 dòng:** đang ở đâu so với kế hoạch.
- **3 chủ đề ưu tiên tuần này** (ưu tiên chủ đề yếu trong sổ lỗi + chủ đề % cao trong đề).
- **Gợi ý lệnh cụ thể** để dùng tiếp (vd `/on-tap [chủ đề]`, `/kiem-tra sql 10`).
- **Nhắc cập nhật** `tien-do.md` sau buổi học nếu thấy đã lâu chưa update.
