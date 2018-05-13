Rails.application.routes.draw do
    resources :reports do
        resources :tactivities
        resources :sactivities
        resources :rsactivities
        resources :iactivities
        resources :rfactivities
    end 
    root 'reports#index'
    get 'pdf_pages', :to => 'rfactivities#index', format: 'pdf'
end