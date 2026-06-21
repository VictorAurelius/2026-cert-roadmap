# Claude Code Instructions — Repo Ôn Thi Chứng Chỉ

## Ngôn ngữ
- **LUÔN giao tiếp bằng tiếng Việt** trong mọi giải thích, tóm tắt, phản hồi.
- **Giữ nguyên thuật ngữ kỹ thuật tiếng Anh** (sealed class, dependency injection, GROUP BY...) — không dịch cứng, vì đề thi dùng tiếng Anh. Lần đầu xuất hiện thì chú thích nghĩa.
- Code, đường dẫn, tên riêng, status enum giữ nguyên English.

## Mục đích repo
Lộ trình tự học + ôn 3 chứng chỉ (12-15 tháng, ~$900):

| Thứ tự | Chứng chỉ | Mã thi | Giai đoạn | Ngưỡng đạt |
|--------|-----------|--------|-----------|------------|
| 1 | Oracle Database SQL Associate | 1Z0-071 | Tháng 1-3 | 63% |
| 2 | Java SE 21 Developer | 1Z0-830 | Tháng 4-9 | 68% |
| 3 | Spring Certified Professional | 2V0-72.22 | Tháng 10-13 | 300/500 |

Học SQL trước (tạo đà) → Java (khó nhất) → Spring (cần nền Java).

## Bản đồ repo
```
CLAUDE.md                    # File này — context cho mỗi session
README.md                    # Tổng quan + hướng dẫn nhanh
documents/
├── idea.md                  # SOURCE OF TRUTH: links, sách, khóa học, repo theo từng cert
└── progress/                # Tiến độ học (LIVING DOCS — cập nhật liên tục)
    ├── tien-do.md           # Đang ở đâu: % checklist, đếm ngược ngày thi, lịch ôn
    └── so-loi-sai.md        # Sổ lỗi sai — câu làm sai + chủ đề yếu (ôn lại đúng chỗ)
.claude/
├── commands/                # Slash command DÙNG ĐƯỢC (/giai-thich, /on-tap...)
├── plans/                   # Kế hoạch chi tiết (lộ trình, tuần, clone repo, từ vựng)
└── user-prompts/            # Lưu lại prompt gốc
resources/                   # Repo học clone về — KHÔNG commit (đã .gitignore)
```

## Slash commands (trong `.claude/commands/`)
| Lệnh | Tác dụng |
|------|----------|
| `/giai-thich [khái niệm]` | Giải thích khái niệm Java/SQL/Spring bằng tiếng Việt |
| `/tu-vung [từ/đoạn]` | Học từ vựng kỹ thuật tiếng Anh |
| `/on-tap [chủ đề]` | Tóm tắt lý thuyết + câu hỏi luyện tập |
| `/kiem-tra [cert] [số câu]` | Mock exam tương tác theo phân bố đề thật |
| `/tong-hop [file/chủ đề]` | Tóm tắt tài liệu tiếng Anh thành tiếng Việt |
| `/tien-do` | Review tiến độ + gợi ý bước học kế tiếp |
| `/lich-su-sai [chủ đề?]` | Ghi/phân tích câu làm sai vào sổ lỗi |
| `/flashcard [chủ đề]` | Xuất flashcard Anki (.csv) để học spaced repetition |

## Quy ước (rules nhẹ)
1. **Living docs:** sau mỗi buổi học/mock exam, cập nhật `documents/progress/tien-do.md` (tick checklist) và ghi câu sai vào `so-loi-sai.md`.
2. **Đề thi giả lập phải giống đề thật:** dùng đúng % phân bố chủ đề trong `.claude/commands/kiem-tra.md`; câu hỏi viết tiếng Anh, giải thích tiếng Việt.
3. **Không commit `resources/`** — chỉ là tài liệu clone để tra cứu (đã .gitignore).
4. **Một nguồn sự thật:** links/tài liệu chỉ sửa ở `documents/idea.md`, rồi đồng bộ ra README nếu cần — tránh lệch giữa nhiều file.
5. **Kỷ luật ngày tháng:** khi sửa doc có dòng "Cập nhật:", set đúng ngày hiện tại.
6. Repo cá nhân, nhẹ — **không** thêm CI/governance nặng; ưu tiên thứ trực tiếp giúp học.

## Khi bắt đầu một session
1. Đọc `documents/progress/tien-do.md` để biết đang học cert nào, tuần mấy.
2. Liếc `so-loi-sai.md` xem chủ đề yếu cần ôn lại.
3. Tài nguyên chi tiết tra trong `documents/idea.md` + `.claude/plans/`.
