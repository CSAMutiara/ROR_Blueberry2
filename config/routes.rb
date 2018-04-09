Rails.application.routes.draw do
    resources :reports do
        resources :tactivities
    end 
    root 'reports#index'
end
