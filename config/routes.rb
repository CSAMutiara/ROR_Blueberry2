Rails.application.routes.draw do
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
