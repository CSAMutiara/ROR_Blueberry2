Rails.application.routes.draw do
  resources :collabswfaculties
  resources :collabswstudents
  resources :books
    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
        resources :iactivities
        resources :rfactivities
    end 
    root 'reports#index'
end
