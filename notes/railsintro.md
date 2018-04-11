* Open-sourced web framework
* Written in Ruby programming language
* Quickly build powerful and robust web applications
* Designed to make designing easier
    * By making assumptions about what you need to get started when you create a new web app
    * Allows you to write less code while accomplishing more

* Principles:
    * MVC architecture: separates architecture into 3 parts
        * Model
            * Business logic & heavy lifting
            * Talks with DB
            * Validates data
        * View
            * Templates render data from models
            * Handle presentation logic of what user sees/interacts with
        * Controller
            * Between models and view
            * Controls the flow of the app
            * Handles requests
            * initiates changes to models
    * Convention over configuration
        * “Rails way”
        * Set of assumptions/defaults as to the best way to do things
        * Designed to discourage alternatives
            * So we can spend more time coding and less time setting up config files
    * DRY (don’t repeat yourself
        * Software principles aims to reduce repetition
            * For more maintainable, more extendable and less buggy apps

* Ruby basics
    * ’93 by Yujihiro Matsumoto (aka Matz)
    * Made for programmer productivity & fun
    * Meant to be understood by humans first, then computers second
    * Practice in irb (read-eval-print-loop) in command line/terminal

    * Types:
        * Numbers
            * Ruby can do simple math equations
            * Can check for qualities (9.odd? => true)
        * Strings
            * Can combine (with + or repeat with *)
        * Booelean
            * Expression that evaluates to true or false
            * Use &&/||/! to evaluate
            * ==, !=, >=, <=, >, <
        * Array
            * List of objects (including other arrays)
                * Can mix object types
            * Use []s (or example: my_array = [1, "two", 3, "four”])
            * Can add elements using + or << (for single elements)
        * Symbols
            * Similar to Strings, but not wrapped in “” but prefaced with a :
                * So :ruby (vs “Ruby”)
            * More memory efficient (can check with .object_id … the smaller the id, the less memory used)
        * Hashes
            * Collection/set of key value pairs
            * Similar to arrays except indexes can be any object type (not just ints)
            * Use {}s (for example: who_am_i = { :first => "Ayesha", :last => "Mutiara”})

    * Variables
    * Method
        * Block of code wrapped with “def” and “end”
    * conditional (all ended with “end”)
        * If, unless, elseif and else
        * Unless is opposite of if
    * iteration
        * Use .each do |var| or .each { |var| puts number * 8}