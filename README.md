# Object Oriented Code 1, Encapsulation & Cohesion
# Exercise 4
Task taken from this exercise: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/encapsulation.md

## Instructions
Test-drive the secret diary example:

`SecretDiary`
  - `lock`
  - `unlock`
  - `add_entry`
  - `get_entries`

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.

## My notes
I initally organised this into one class in `secret_diary.rb` and then split it into two `diary_lock.rb` and `diary_entries.rb` to improve my understanding of encapsulation and cohesion. 
