* IMPORTANT TAGS
    * to embed Ruby, wrap with <% %>
    * same but to also print to screen, wrap with <%= %>
    * <br> are html line breaks
    * <h#></h#> designate headers
    * <div></div> designate divisions
    * <%= @model.attr_name %> (dont forget to nest them inside Ruby tags) to 
        display instance's attribute

    * for example:
    <h1><%= @post.title %></h1>
    <div>
        <%= @post.body %>
    </div>

* FORMS
    * form_for is a Rails helper for showing form in view & saves data to
        corresponding model/table
    * |f| and the f in f.label/f.text_etc
        * f could be anything, but common practice is to use f for "form"
        * .label/.text_etc indicate the form element used
        * the :attr indicated afterwards is the model column that part of the
            form wants to interact with
    * .submit will accept the input and save it to the model/table db
    * IOW: we want rails to evaluate the Ruby & output result into the view

    * for example: 
    <%= form_for @post do |f| %>
        <%= f.label :title %><br>
        <%= f.text_field :title %><br>
        <br>
        <%= f.label :body %><br>
        <%= f.text_area :body %><br>
        <br>
        <%= f.submit %>
    <% end %>
    
        * @post is the post instance variable (that will be generated from
            the submitted input data) from the model
        * form_for saves data to @post once controller is tweaked accly
        * notice that the two attributes from the model generation are
            addressed in this form so that submitted data will be saved to
            the correct attribute columns in the model (posts) table/model
        * the form will save the f.text_field input to the title attribute
            column in the post model/table once f.submit is activated
            
* READING DATA (&ITERATION)
    * use .each do |x|
    * truncate() allows us to view excerpts
    * links: <%= link_to <"Link Label">, route %>

    * for example
    <% @posts.each do |post| %>
        <h2><%= post.title %></h2>
        <div><%= truncate(post.body, :length => 35) %></div>
        <br>
        <%= link_to "Read Post", post %>
    <% end %>
    
        * each post.body is truncated to 35 characters
        * the link labeled "Read Post" redirects to the specific post's view
        
* PARTIALS
    * start view file name with "_" to indicate that it is a partial
    * replace repetitive code with <%= render <'route_name'> %> in views 