Rails.application.routes.draw do
  root 'dhh#home_page'
  get 'reader', to:'dhh#reader'
  get 'dhh/word'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
