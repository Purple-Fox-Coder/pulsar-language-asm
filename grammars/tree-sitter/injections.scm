; https://github.com/RubixDev/tree-sitter-asm/blob/main/queries/asm/injections.scm

; NOTE: I will probably not implement this in lib/ until I understand what it is
;       trying to do, for now it will remain here

([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))
