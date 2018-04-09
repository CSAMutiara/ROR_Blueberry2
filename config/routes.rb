Rails.application.routes.draw do
    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
    end 
    root 'reports#index'
end
