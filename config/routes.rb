Rails.application.routes.draw do
    
  root 'reports#index'
    
    resources :reports do
      resources :tactivities
      resources :sactivities
      resources :rsactivities
      resources :iactivities
      resources :rfactivities do 
        resources :collabswfaculties
        resources :collabswstudents
        resources :books
      end 
    end 
    
    resources :collabswfaculties
    resources :collabswstudents
    
    get 'books/new'
end
