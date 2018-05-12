Rails.application.routes.draw do
  resources :grants
  resources :collabswfaculties
  resources :collabswstudents
    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
        resources :iactivities
        resources :rfactivities
    end 
    root 'reports#index'
    
    resources :references do
        resources :books
    end
end
