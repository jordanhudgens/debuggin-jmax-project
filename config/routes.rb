Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/features'

  get 'welcome/portfolio'

  get 'welcome/resume'

  resources :invoices
  
  root to: 'invoices#index'
  
end
