Rails.application.routes.draw do
    resources :reports do
        resources :tactivities
        resources :sactivities
    end 
    root 'reports#index'
end
