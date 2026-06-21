# 🎯 Lộ Trình Ôn Thi 3 Chứng Chỉ Oracle & Spring

> Lộ trình 12-15 tháng, tổng chi phí ~$900 USD

## Chứng Chỉ Mục Tiêu

| # | Chứng chỉ | Mã kỳ thi | Thời gian | Phí |
|---|-----------|-----------|-----------|-----|
| 1 | Oracle Database SQL Associate | 1Z0-071 | Tháng 1-3 | $245 |
| 2 | Java SE 21 Developer | 1Z0-830 | Tháng 4-9 | $245 |
| 3 | Spring Certified Professional | 2V0-72.22 | Tháng 10-13 | $250 |

## Cấu Trúc Repo

```
.
├── CLAUDE.md                # Context cho Claude mỗi session (đọc đầu tiên)
├── README.md
├── documents/
│   ├── idea.md              # Tài liệu tổng hợp: links, resources, lộ trình
│   └── progress/            # Tiến độ học (cập nhật liên tục)
│       ├── tien-do.md       # Đang ở đâu: checklist, đếm ngược ngày thi, lịch ôn
│       └── so-loi-sai.md    # Sổ lỗi sai — câu sai + chủ đề yếu
├── resources/               # GitHub repos đã clone (xem .claude/plans/clone-resources.md)
│   ├── java/  ├── sql/  └── spring/   # (không commit — .gitignore)
└── .claude/
    ├── commands/            # Slash command DÙNG ĐƯỢC
    │   ├── giai-thich.md    # /giai-thich — giải thích khái niệm
    │   ├── tu-vung.md       # /tu-vung — học từ vựng tiếng Anh
    │   ├── on-tap.md        # /on-tap — ôn tập chủ đề
    │   ├── kiem-tra.md      # /kiem-tra — mock exam
    │   ├── tong-hop.md      # /tong-hop — tổng hợp tài liệu
    │   ├── tien-do.md       # /tien-do — review tiến độ
    │   ├── lich-su-sai.md   # /lich-su-sai — sổ lỗi sai
    │   └── flashcard.md     # /flashcard — xuất Anki .csv
    ├── plans/               # Kế hoạch học tập chi tiết
    │   ├── clone-resources.md    # Hướng dẫn clone repos
    │   ├── lo-trinh-hoc.md       # Lộ trình 12-15 tháng
    │   ├── tu-vung-tieng-anh.md  # Kế hoạch học từ vựng
    │   └── ke-hoach-tuan.md      # Template kế hoạch tuần
    └── user-prompts/        # Lưu prompt gốc khởi tạo repo
```

## Bắt Đầu Nhanh

### Bước 1: Clone tài nguyên học tập
```bash
# 3 repos quan trọng nhất — đọc chi tiết trong .claude/plans/clone-resources.md
git clone https://github.com/eh3rrera/ocpj21-book.git resources/java/ocpj21-book
git clone https://github.com/chatelao/1z0-071_Oracle_Database_SQL_Associate.git resources/sql/1z0-071-main
git clone https://github.com/davidarchanjo/spring-certified-developer-study-guide.git resources/spring/study-guide-main
```

### Bước 2: Đọc lộ trình học
Xem [`.claude/plans/lo-trinh-hoc.md`](.claude/plans/lo-trinh-hoc.md) để có kế hoạch chi tiết từng tháng.

### Bước 3: Dùng Claude hỗ trợ học

Các lệnh nằm trong `.claude/commands/` — gõ `/` trong Claude Code để tự động gợi ý.

| Lệnh | Tác dụng | Ví dụ |
|------|----------|-------|
| `/giai-thich [khái niệm]` | Giải thích bằng tiếng Việt | `/giai-thich sealed class` |
| `/tu-vung [từ hoặc đoạn]` | Học từ vựng kỹ thuật | `/tu-vung encapsulation` |
| `/on-tap [chủ đề]` | Ôn tập + câu hỏi kiểm tra | `/on-tap GROUP BY sql` |
| `/kiem-tra [chứng chỉ] [số câu]` | Mock exam tương tác | `/kiem-tra sql 10` |
| `/tong-hop [file/chủ đề]` | Tóm tắt tài liệu tiếng Anh | `/tong-hop Spring AOP` |
| `/tien-do` | Review tiến độ + bước kế tiếp | `/tien-do` |
| `/lich-su-sai [chủ đề?]` | Ghi/phân tích câu làm sai | `/lich-su-sai` |
| `/flashcard [chủ đề]` | Xuất flashcard Anki (.csv) | `/flashcard java streams` |

## Lộ Trình Tóm Tắt

```
Tháng 1-3   ──►  1Z0-071 Oracle SQL    (dễ nhất, tạo đà)
Tháng 4-9   ──►  1Z0-830 Java SE 21    (khó nhất, cần thời gian)
Tháng 10-13 ──►  2V0-72.22 Spring Pro  (cần nền Java vững)
```

## Theo Dõi Tiến Độ

- **Đang ở đâu (checklist + đếm ngược ngày thi):** [`documents/progress/tien-do.md`](documents/progress/tien-do.md) — cập nhật sau mỗi buổi học
- **Sổ lỗi sai (chủ đề yếu):** [`documents/progress/so-loi-sai.md`](documents/progress/so-loi-sai.md)

## Tài Liệu Chi Tiết

- **Context cho Claude:** [`CLAUDE.md`](CLAUDE.md)
- **Tổng hợp links, resources:** [`documents/idea.md`](documents/idea.md)
- **Kế hoạch clone repos:** [`.claude/plans/clone-resources.md`](.claude/plans/clone-resources.md)
- **Lộ trình học 12-15 tháng:** [`.claude/plans/lo-trinh-hoc.md`](.claude/plans/lo-trinh-hoc.md)
- **Kế hoạch học từ vựng:** [`.claude/plans/tu-vung-tieng-anh.md`](.claude/plans/tu-vung-tieng-anh.md)
- **Template kế hoạch tuần:** [`.claude/plans/ke-hoach-tuan.md`](.claude/plans/ke-hoach-tuan.md)

## Mẹo Tiết Kiệm Chi Phí

- Mua khóa Udemy khi **sale** ($9.9-14.99 thay vì $80+)
- Dùng **tài liệu miễn phí**: Oracle docs, Spring docs, Baeldung
- Theo dõi **Oracle Race to Certification** — đôi khi có voucher free
- Dùng **Oracle LiveSQL** và **Oracle XE** để thực hành SQL miễn phí
- Đăng ký **Spring Academy** để học khóa chính thức miễn phí

---

*Cập nhật: 2026-06-22*
