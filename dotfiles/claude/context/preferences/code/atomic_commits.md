# Use small, atomic commits

Ideally, each commit should have a single responsibility. A one line commit message should fully describe the change.

Given this, we also make frequent commits. Basically, at every green state. 

## TODO lists and commits
When working through a multi-item todo list:
  - **STOP between items** and check in with the user
  - User typically wants to commit after each completed item
  - Only proceed to the next item if user explicitly says to continue
  - Exception: If user says "do all of these" or "keep going through the list", then proceed

 **Rule of thumb**: If completing the step would be a reasonable commit point, stop and check in.

