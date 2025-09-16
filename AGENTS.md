# Code style
- Try hard to write lines less than 80 characters in length. Exceptions can be
  made for comment lines or string literals that would exceed 80 characters due
  to long URLs or other content. For code lines, readability is more important
  than length restrictions, so consider 100 characters a soft limit, but still
  just a guideline.
- Try to keep files to less than 1000 lines in length, but do what makes sense
  for the situation. For example, test code files, Markdown files, or code with
  large static tables may often exceed 1000 lines.
- Try not to split conditional expressions across multiple lines in control flow
  structures such as `for`, `if`, `else if`, and `while`. Instead, extract
  complex expressions into separate variables.
- When splitting function and method calls across multiple lines with no
  arguments on the same line at the opening parenthesis, put the corresponding
  closing parenthesis on its own line.
- Always end files with a trailing newline.
- Use only ASCII characters in comments unless non-ASCII characters are
  essential.
- Only comment in full sentences, always ending sentences with a period. Always
  comment all functions, types, enumeration values, fields, members, and
  methods, even for private or unexported code and test code. Comment in a style
  that is idiomatic for the language in which you're writing.
- Comment code liberally, even tests. Divide long code blocks into small
  comprehensible chunks (separated by empty lines), with each chunk preceded by
  a comment describing its function. Small, self-evident code blocks can exist
  without chunking or comments.
- Don't include empty lines between members in type declarations.
- Try to avoid high cyclomatic complexity.
- Avoid large memory allocations unless absolutely required.
- Opt to use functionality provided by a language's standard library rather than
  writing it yourself.
- Don't modify existing code unless it's necessary to complete your task.
- When editing existing code, attempt to match its style, but stick to the
  aforementioned commenting guidelines.

# Workflow
- When using Git, don't use any commands that would change the state of the
  repository or any associated remote repository.
- When writing Go code, ensure that it is formatted using `go fmt` once it is
  written and functional.
