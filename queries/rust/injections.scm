 (macro_invocation
   macro: (identifier) @_macro_def (#not-eq? @_macro_def "html")
   (token_tree) @rust)

(macro_definition
  (macro_rule
    left: (token_tree_pattern) @rust
    right: (token_tree) @rust))

[
  (line_comment)
  (block_comment)
] @comment

(call_expression
  function: (scoped_identifier
    path: (identifier) @_regex (#eq? @_regex "Regex")
    name: (identifier) @_new (#eq? @_new "new"))
  arguments: (arguments
    (raw_string_literal) @regex))

(call_expression
  function: (scoped_identifier
    path: (scoped_identifier (identifier) @_regex (#eq? @_regex "Regex").)
    name: (identifier) @_new (#eq? @_new "new"))
  arguments: (arguments
    (raw_string_literal) @regex))
