* we want ability to CRUD (create, read, update & destroy) posts

* MODELS (Ruby classes):
    * to store and manipulate data
    * CREATE MODEL
        * command: rails generate model <model_name>
            * ex: rails generate model Post
        * attributes
            * (if models->tables, attributes->columns)
            * :string for storing small data types like title columns
            * :text for storing longer pieces of textual data (such as paragraphs)
            * :integer for storing whole numbers
            * :binary for storing data such as images, audio/video
            * :booelan for storing true or false values
            * :datetime for storing date & time (:date & :time separately too)
            * :timestamp same, but uses UTC conversions (time zones)
            * :decimal for storing decimals (for exact values)
            * :float same, but used when precision isn't important
            * :primary_key for storing unique key that can uniquely identify 
                each row in table
    * migration file (under db/migrat subdir)
        * has CreateMethod class (in ex: class CreatePosts) which
            * which creates model table (in ex: :posts)
            * with attribute columns (in ex: :title & :body)
        * migration command: rake db:migrate
            * to use the model table, we need a schema.rb 
            * remember: schema.rb is a snapshot of current db state
            * schema.rb made by running migration files
    * model file
        * has method class (which inherits from Ruby module ActiveRecord::Base)
        * in ex: rails maps class of Post to Post table (model) in db through ^

* CONTROLLERS & VIEWS
    * to interact with new model, we need a controller
    * inherits from Ruby's ApplicationController
    * includes a controller action definition
        * this method collects info to write for the view
        * (in ex: def index end)
    * because remember: controllers get data from model and gives it to views
        to be rendered (lives between model and views)
    * CREATE CONTROLLER
        * command: rails generate controller <method_name_plural> <ctrlr_action>
            * ex: rails generate model Posts index
            * note: plural is important!
            * ctrlr action optional
        * this creates (w/o ctrlr action):
            * controller file (in ex: in app/controllers/posts_controller.rb)
            * test units (in ex: test/controllers/posts_controller_test.rb)
            * helper units (in ex: app/helpers/posts_helper.rb)
            * assets such as coffee & scss (in ex:)
                * app/assets/javascripts/posts.coffee
                * app/assets/stylesheets/posts.scss
        * this creates (w/ ctrlr action):
            * route (in ex: 'posts/index')
            * view file (in ex: app/views/posts)
                * and view directory: (in ex: app/views/index.html.erb)
    * views
        * generated file corresponds to def method in controller file
        * (in ex: index.html.erb)
    * routes.rb
        * lists generated routes
        * (includes in ex: get 'posts/index')
        * so if added to browser, new view will be displayed
        * you may remove rails' unneccessary & automatically generated comments