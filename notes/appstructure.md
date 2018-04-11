* app dir holds subdirs for MVC, asets, helpers and mailers
* bin dir contains app executables (ruby scripts)
* config dir contains config codes 
    * remember ruby uses convention over config, for ex: 
        * environments subdir holds config files for rail environments
        * database.yml file where config database needed for each environments
            (rails uses default SQLlite but might eventually change to mySQL)
        * routes.rb file handles mapping of incoming web requests &  where we 
            will add new routes based on the features builded for app
* db dir contains files in migration subdir
    * as we build apps we will create db migrations which is how we can create
        modify tables in the db 
    * also contains schema.rb (a snapshot of app's db) which should not be
        modified directly, but always through use of migrations
    * seed.rb file is how to set up app with pre-loaded data
* lib dir is for reuse code libraries 
    * has two dirs: assets & tasks
    * unless you have custom stuff, it doesn't make sense to have our most
        of our stuff to live in this dir
* log dir contains app log files (good for debugging)
* public dir contains files that will allow dir to still work even if app
    crashes (such as 404.html or 500.html... error pages)
* test dir hosts test for the app to make sure it runs the way it should
    * test-driven development idea of writing test first, then writing code to
        make test pass
* tmp dir is for temporary files (cash/pid/session) for intermediary processing
* vendor dir hosts assets needed by 3rd party gems, but probably wont be used
    because most assets needed are already handled by bundle

* Gemfile & Gemile.lock where dependencies are needed in app, used by bundler
    gem (which again, is used to install and update gems)
* Rakefile used to locate and load tasks which can be run from command line
* README.rdoc instruction manual
