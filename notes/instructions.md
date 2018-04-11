* CREATE NEW RAILS APP
    * command: rails new <app_name>
        * ex: rails new <blog>
    
* RUN APP
    * command (locally): rails server
    * command (on C9): rails s -b $IP -p $PORT
    * found @http://workspacename-username.c9users.io
        * ex: http://cs3053-amutiara.c9users.io

* CREATE MODEL
    * command: rails generate model <model_name> <att_name>:<in>
        * ex w/ attr: rails generate model Post title:string body:text
        * reminder: this creates migration, not just model file
* CREATE SCHEMA
    * migration command: rake db:migrate
    * needed to use the model table

* CREATE CONTROLLERS (& VIEWS)
    * command: rails generate controller <model_name_plural>
        * ex: rails generate controller Posts
        * optional <ctrlr_action> @end
            * ex w/ attr: rails generate controller Posts index
            * this command also generates route & view(s)
    * for controller file, test unit, helper unit, assets (such as coffee file)
        & scss file (routes & view(s) made manually)
* 'GET' VIEWS
    * check routes.rb for view route
    * modify url in browser to include new route
    * refresh

* CREATE MODEL INSTANCES
    * find currently existing routes
        * command: rake routes
    * find all necessary (existing & remaining) CRUD routes
        * (in routes.rb file) replace listed route w/: 
            resources :<model_name_plural>
        * run command: rake routes (again)
    * define new method in model controller
    * create corresponding 'new' view
    * define create method in model controller
    * define private model_params method @bottom model controller
    * add conditional in create method for to call 'show'
    * define show method in model controller
    * create corresponding 'show' view

* READING MODEL INSTANCES (INDEX)
    * define desired table(s) inside index def method in model controller
    * update 'index' view to iterate over instances to display their attrs
    * assign app root in routes.rb using: root <'route'>
        * ex: root 'posts#index'
    
* UPDATE MODEL INSTANCES
    * define before_actions in model controller for DRY principle
    * use before_action :baction_name, only: [:<relevant methods>]
        * define baction_name method (otherwise repeated code) under private
    * define edit def method in model controller
    * define update def method in model controller
    * create (form) partials
    * create corresponding 'edit' view file
        * add 'edit' link on 'show' view

* DELETE MODEL INSTANCES
    * define destroy def method in model controller
        * use model.destroy
        * then redirect (ex: redirect_to root_path)
    * add 'delete' link on 'show' view

* VIEWS/LAYOUTS/APPLICATION.HTML.ERB
    * everything on file will be rendered on every single page of the app
    * <%= yield %> command imports the content from the views into this
        app layout
        * where we the headers, heads and footers