# Method

1. play.rb created
1. readme.md created
1. bundle init for gemfile
1. bundle binstubs rspec-core - just run - bin/rspec -
1. bin/rspec --init - to create .rspec & create spec/spec_helper.rb
1. test pending with running 'rspec' (amber)
1. full test written
1. rspec --format documentation
1. problem -rspec passing with no expect
1. Fixed: successfully wrote failing test (red) - new error - name error: uninitialized constant
1. require .rb file with - require ''
1. added class to rb file
1. new error - NoMethodError
1. added method
1. new error - ArgumentError
1. added argument
1. new error 'expected: '' got ''
1. Fixed: passing test created

- run with: 'ruby lib/filename.rb'
- created mini calculator app for testing

# Build

- select a word between 5 and 12 characters.

- display which correct letters have already been chosen

- allow the player to make a guess of a letter (case insensitive)

- Update the display to reflect whether the letter was correct or incorrect

- player should also have the option to save the game

- add in an option that allows you to open one of your saved games

## build method

- hangman class
  - initialize method
    - inside initialize add the alphabet as an array. (instance variables)
      .sample() - random element from array.
  - words method - 2d array of words (and clues).
  - begin method
    puts prompt and word size.
    puts clue
    puts instruction
    gets guess into variable
    puts guess
  - teaser method (shows correct guesses)
    loop over word size and add underscores
- initialize class object and call method

# Development errors

- Mini calculator app for testing

- rspec expects floating number but gets nil

-IRB

- require './lib/filename.rb'

- calc = Calculator.new
  => #<Calculator:0x0000013adbb69420>

calc.calculate(3,'+',3)

6.0

=> nil

- fix: due to 'puts' in method
