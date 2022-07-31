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
1. add simplecov gem

- run with: 'ruby lib/filename.rb'

# Build requirements

- select a word between 5 and 12 characters.

- display which correct letters have already been chosen

- allow the player to make a guess of a letter (case insensitive)

- Update the display to reflect whether the letter was correct or incorrect

- player should have the option to quit the game

- player should also have the option to save the game

- add in an option that allows you to open one of your saved games

## Build method

- hangman class
  - initialize method
    (instance variables)
    - inside initialize add the alphabet as an array.
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

### Gems

gem 'rspec', '~> 3.10'

gem 'simplecov', '~> 0.21.2'

# References

comments

<!-- > www.youtube.com. (n.d.). How to Use Attribute Accessors in Ruby. [online] Available at: https://www.youtube.com/watch?v=C4O7bcbItw4&t=1s&ab_channel=JesusCastello [Accessed 30 Jul. 2022]. -->

## Development troubleshooting

comments

<!--
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

# update_teaser
irb(main):011:0> hang.update_teaser('r')
=> "_____"
word is robot.

adding () to L35 increases spacing with each entry
new_teaser = @word_teaser.split('')

you guessed s
s _ _ _ _
enter a letter
m
Correct guess
you guessed m
s   _   _   _   _

additionally removing space from line 46 fixed the bug of the letters not updating.
@word_teaser = new_teaser.join('')

irb(main):> Hangman.new
=>
#<Hangman:0x0000013b7f3ffb90
 @correct_guesses=[],
 @letters=["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"],
 @lives=5,
 @word=["robot", "a moving metal object"],
 @word_teaser="_____">

  -->

**removing letters from alphabet**
irb
require './lib/play.rb'

hang = Hangman.new

hang.begin

enter a letter

a

wrong

enter a letter

r

Correct

r\_\_\_\_

enter a letter

o

Correct

ro*o*

enter a letter

b

Correct guess

you guessed b

robo\_

enter a letter

exit

hang
=>

```Hangman:0x000001c4642fae20
 @correct_guesses=["r", "o", "b"],
 @incorrect_guesses=["a"],
 @letters=["c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z"],
 @lives=4,
 @word=["robot", "a moving metal object"],
 @word_teaser="robo_">
```

### notes

comments

<!-- Rspec
to access instance variables use attr accessors - instance varibles as symbols -->
