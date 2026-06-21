#!/usr/bin/env bash
# Render tài liệu MD (nguồn) → HTML thiết kế đẹp bằng html-anything CLI.
# Engine: ../html-anything (repo ngoài, clone song song). MD = nháp, HTML = bản đọc.
#
# Dùng:
#   scripts/render-html.sh <file.md> [template] [agent]
#   scripts/render-html.sh .claude/plans/lo-trinh-hoc.md doc-kami-parchment claude
#   scripts/render-html.sh --auto documents/idea.md          # tự match template
#   scripts/render-html.sh --all                              # render bộ mặc định
#
# Output luôn lưu vào documents/output/<tên>.html
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLI="$REPO_ROOT/../html-anything/cli/dist/run.js"
OUT_DIR="$REPO_ROOT/documents/output"
DEFAULT_TEMPLATE="doc-kami-parchment"
DEFAULT_AGENT="claude"

if [[ ! -f "$CLI" ]]; then
  echo "❌ Không thấy html-anything CLI tại: $CLI"
  echo "   Clone + build: git clone https://github.com/nexu-io/html-anything ../html-anything"
  echo "   cd ../html-anything && pnpm install --filter @html-anything/cli && pnpm -F @html-anything/cli build"
  exit 1
fi
mkdir -p "$OUT_DIR"

render() {  # $1=src  $2=template  $3=agent
  local src="$1" tpl="$2" agent="$3"
  local out="$OUT_DIR/$(basename "${src%.*}").html"
  echo "→ $src  →  $out   [tpl=$tpl agent=$agent]"
  node "$CLI" convert "$src" -t "$tpl" -a "$agent" -o "$out"
}

# Bộ mặc định: source MD → template phù hợp (xem .claude/plans/html-output-workflow.md)
render_all() {
  render "$REPO_ROOT/.claude/plans/lo-trinh-hoc.md"      "doc-kami-parchment" "$DEFAULT_AGENT"
  render "$REPO_ROOT/.claude/plans/ke-hoach-tuan.md"     "doc-kami-parchment" "$DEFAULT_AGENT"
  render "$REPO_ROOT/.claude/plans/tu-vung-tieng-anh.md" "data-report"        "$DEFAULT_AGENT"
  render "$REPO_ROOT/documents/idea.md"                  "doc-kami-parchment" "$DEFAULT_AGENT"
  render "$REPO_ROOT/documents/progress/tien-do.md"      "live-dashboard"     "$DEFAULT_AGENT"
}

case "${1:-}" in
  --all) render_all ;;
  --auto)
    [[ -n "${2:-}" ]] || { echo "Thiếu file. Vd: --auto documents/idea.md"; exit 1; }
    out="$OUT_DIR/$(basename "${2%.*}").html"
    node "$CLI" auto "$2" -a "${3:-$DEFAULT_AGENT}" -o "$out" ;;
  "" | -h | --help)
    grep '^#' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//' ;;
  *)
    render "$1" "${2:-$DEFAULT_TEMPLATE}" "${3:-$DEFAULT_AGENT}" ;;
esac
