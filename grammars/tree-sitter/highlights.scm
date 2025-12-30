; https://github.com/RubixDev/tree-sitter-asm/blob/main/queries/asm/highlights.scm

; General
(label
  [(ident) (word)] @entity.name.label.asm)

(reg) @support.storage.type.builtin.asm

(meta
  kind: (_) @support.other.namespace.asm)

(instruction
  kind: (_) @entity.name.function.asm)

(instruction
  kind:  (word) @keyword.control.asm
  (ident) @support.other.namespace.asm
  (#eq? @keyword.control.asm "section"))

(const
  name: (word) @constant.numeric.asm)

; Comments
(line_comment) @comment.line.asm
(block_comment) @comment.block.asm

; Literals
(int) @number.literal.constant.asm

(float) @number.float.literal.constant.asm

(string) @string.quoted.double.asm

; Keywords
[
  "byte"
  "word"
  "dword"
  "qword"
  "ptr"
  "rel"
  "label"
  "const"
] @keyword.control.asm

; Operators & Punctuation
[
  "+"
  "-"
  "*"
  "/"
] @keyword.operator.arithmetic.asm

[
  "%"
  "|"
  "^"
  "&"
] @keyword.operator.bitwise.asm

[
  "("
  ")"
  "["
  "]"
] @punctuation.definition.bracket.asm

[
  ","
  ":"
] @punctuation.seperator.asm
