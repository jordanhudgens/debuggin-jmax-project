Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/features'

  get 'welcome/portfolio'

  get 'welcome/resume'

  resources :invoices
  
  root to: 'welcome#index'
  
end
