---
description: Xuất flashcard Anki (.csv) từ một chủ đề / từ vựng / câu sai
argument-hint: [chủ đề hoặc nhóm từ vựng]
---

Tạo bộ flashcard để học spaced repetition (Anki) cho: **$ARGUMENTS**

Các bước:
1. Sinh 10-20 flashcard chất lượng cao về chủ đề (ưu tiên điểm dễ nhầm + hay hỏi trong đề).
   - Nếu input là "so-loi-sai" hoặc "câu sai" → đọc `documents/progress/so-loi-sai.md` và tạo card từ các lỗi đó.
2. **Mặt trước (Front):** câu hỏi/khái niệm tiếng Anh (giống ngôn ngữ đề thi).
3. **Mặt sau (Back):** giải thích ngắn gọn tiếng Việt + code/ví dụ nếu cần.
4. Xuất ra file CSV import thẳng vào Anki: `documents/progress/flashcards/<chu-de>.csv`
   - Định dạng: 2 cột, phân tách bằng dấu `;` (front;back), mỗi card 1 dòng, escape `;` trong nội dung.
   - Dòng đầu là comment hướng dẫn import (Anki: File → Import → Fields separated by Semicolon).
5. In ra màn hình 3 card mẫu để tôi xem trước.

Quy ước Anki: dùng `<br>` cho xuống dòng trong 1 ô, bọc code trong `<code>...</code>`.
