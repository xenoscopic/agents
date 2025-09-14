# Code style
- Try hard to write lines less than 80 characters in length. Exceptions can be
  made for comment lines or string literals that would exceed 80 characters due
  to long URLs or other content, and for code that would be more readable when
  allowed to exceed 80 characters.
- Try to keep files to less than 1000 lines in length, but do what makes sense
  for the situation; test code files may often exceed this limit.
- Always end files with a trailing newline.
- Try to use only ASCII characters in comments unless essential.
- Only comment in full sentences, always ending sentences with a period. Always
  comment all functions, types, fields, and methods, even for private,
  unexported, or test code. Do so in a style that is idiomatic for the language
  in which you're writing.
- Comment code liberally, even tests. Segment code in function and method blocks
  into chunks that are prefixed by comments describing their function.
- Try to avoid high cyclomatic complexity.
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
