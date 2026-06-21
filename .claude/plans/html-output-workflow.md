# Plan: Quy Trình Output HTML (html-anything)

> Repo chuyển **HTML-first**: MD là **nguồn/nháp**, HTML là **bản người đọc**.
> Engine render = [`html-anything`](https://github.com/nexu-io/html-anything) (CLI) — clone song song ở `../html-anything`.

## Vì sao
Theo triết lý html-anything: *"Markdown is the draft. HTML is what humans read. Your local agent writes it."*
Tài liệu để **học/ôn/in/chia sẻ** ra HTML thiết kế đẳng cấp; file cấu hình agent (CLAUDE.md, `.claude/commands/*.md`) buộc giữ MD vì harness chỉ đọc đúng định dạng đó.

## Cài engine (1 lần)
```bash
git clone https://github.com/nexu-io/html-anything ../html-anything
cd ../html-anything
pnpm install --filter @html-anything/cli      # chỉ deps CLI, nhẹ
pnpm -F @html-anything/cli build
node cli/dist/run.js agents                    # xác nhận thấy ✓ claude
```
CLI **reuse session `claude login` sẵn** → không cần API key, chi phí biên $0.

## Render (từ trong repo cert-roadmap)
```bash
scripts/render-html.sh <file.md> [template] [agent]   # chỉ định template
scripts/render-html.sh --auto documents/idea.md        # tự match template
scripts/render-html.sh --all                            # render bộ mặc định
```
Output luôn vào `documents/output/<tên>.html` (single-file, mở bằng browser).

## Bản đồ template → artifact ôn thi
Repo có 78 template. Gợi ý map (đổi tùy gu):

| Nguồn MD | Template | Lý do |
|----------|----------|-------|
| `lo-trinh-hoc.md`, `idea.md`, cheat-sheet, tóm tắt dài | `doc-kami-parchment` | văn bản dài, dễ đọc, in được |
| `tien-do.md` | `live-dashboard` | dashboard tiến độ Notion-style |
| `tu-vung-tieng-anh.md`, bảng dữ liệu | `data-report` | bảng + số liệu |
| Slide ôn theo chủ đề | `deck-swiss-international` / `deck-guizang-editorial` | keynote đẹp để lướt ôn |
| Cheat-sheet 1 trang để dán tường | `magazine-poster` / `poster-hero` | poster A-size |
| Flashcard hình | `card-xiaohongshu` / `social-carousel` | card đẹp share/ôn |
| Đề mock exam tĩnh | `doc-kami-parchment` / `blog-post` | đọc + tự chấm |

Liệt kê đầy đủ: `node ../html-anything/cli/dist/run.js templates`.

## Quy trình học hằng ngày (HTML-first)
1. Dùng command MD như cũ (`/tong-hop`, `/on-tap`, `/giai-thich`) → tạo nội dung **nháp MD** (lưu vào `documents/` nếu muốn giữ).
2. Render bản nháp → HTML đẹp: `scripts/render-html.sh <file.md> <template>`.
3. Mở `documents/output/*.html` để ôn / in / chia sẻ.
4. Cập nhật `tien-do.md` (MD nguồn) → render lại dashboard khi cần.

## Lưu ý
- HTML output dùng Tailwind CDN + Google Fonts (cần mạng khi mở). Muốn offline hoàn toàn thì tự inline sau.
- Mỗi lần convert gọi `claude` CLI ~2-3 phút/ file (AI sinh HTML). Render `--all` sẽ lâu.
- `documents/output/` được commit (đó là sản phẩm để xem); `resources/` thì không.
