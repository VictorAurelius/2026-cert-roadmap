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
CLAUDE.md                    # File này — context cho mỗi session (PHẢI là MD)
README.md                    # Tổng quan + hướng dẫn nhanh
scripts/render-html.sh       # Render MD nguồn → HTML đẹp (qua html-anything CLI)
documents/
├── idea.md                  # SOURCE OF TRUTH: links, sách, khóa học, repo theo từng cert
├── output/                  # ⭐ Bản HTML người đọc (render ra — để học/ôn/in) — commit
└── progress/                # Tiến độ học (LIVING DOCS — cập nhật liên tục)
    ├── tien-do.md           # Đang ở đâu: % checklist, đếm ngược ngày thi, lịch ôn
    └── so-loi-sai.md        # Sổ lỗi sai — câu làm sai + chủ đề yếu (ôn lại đúng chỗ)
.claude/
├── commands/                # Slash command DÙNG ĐƯỢC (PHẢI là MD)
├── plans/                   # Kế hoạch chi tiết (+ html-output-workflow.md)
└── user-prompts/            # Lưu lại prompt gốc
resources/                   # Repo học clone về — KHÔNG commit (đã .gitignore)
../html-anything/            # Engine render HTML (repo NGOÀI, clone song song)
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

## Output HTML-first (engine: html-anything)
Repo theo hướng **HTML-first**: **MD = nguồn/nháp, HTML = bản người đọc**. Tài liệu để học/ôn/in render ra HTML thiết kế đẹp; chỉ giữ MD ở **lớp harness bắt buộc** (file này + `.claude/commands/*.md` — Claude Code chỉ đọc đúng định dạng MD).

- **Engine:** [`html-anything`](https://github.com/nexu-io/html-anything) CLI tại `../html-anything` (reuse session `claude` sẵn, $0).
- **Render:** `scripts/render-html.sh <file.md> [template]` → ra `documents/output/<tên>.html`.
- **Workflow + map template ↔ artifact:** `.claude/plans/html-output-workflow.md`.
- Khi tạo nội dung học mới (qua command MD hoặc viết tay), bước cuối **render sang HTML** rồi để bản HTML trong `documents/output/` cho người đọc.

## Quy ước (rules nhẹ)
1. **Living docs:** sau mỗi buổi học/mock exam, cập nhật `documents/progress/tien-do.md` (tick checklist) và ghi câu sai vào `so-loi-sai.md`.
2. **HTML-first:** sản phẩm để đọc/ôn/in render ra HTML (`documents/output/`); MD chỉ giữ ở nguồn + lớp harness bắt buộc. Sửa MD nguồn rồi render lại, KHÔNG sửa tay file HTML.
3. **Đề thi giả lập phải giống đề thật:** dùng đúng % phân bố chủ đề trong `.claude/commands/kiem-tra.md`; câu hỏi viết tiếng Anh, giải thích tiếng Việt.
4. **Không commit `resources/`** — chỉ là tài liệu clone để tra cứu (đã .gitignore).
5. **Một nguồn sự thật:** links/tài liệu chỉ sửa ở `documents/idea.md`, rồi đồng bộ ra README nếu cần — tránh lệch giữa nhiều file.
6. **Kỷ luật ngày tháng:** khi sửa doc có dòng "Cập nhật:", set đúng ngày hiện tại.
7. Repo cá nhân, nhẹ — **không** thêm CI/governance nặng; ưu tiên thứ trực tiếp giúp học.

## Khi bắt đầu một session
1. Đọc `documents/progress/tien-do.md` để biết đang học cert nào, tuần mấy.
2. Liếc `so-loi-sai.md` xem chủ đề yếu cần ôn lại.
3. Tài nguyên chi tiết tra trong `documents/idea.md` + `.claude/plans/`.
