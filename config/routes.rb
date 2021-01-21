Rails.application.routes.draw do
    root 'pages#home'
    get 'about', to: 'pages#about'
    get 'personality', to: 'pages#personality'
    resources :gamelists
end
