Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  put '/todos/clear_complete',   to: 'todos#clear_complete', as: 'clear_complete'
  get '/today',                  to: 'todos#today',          as: 'today'
  get '/tomorrow',               to: 'todos#tomorrow',       as: 'tomorrow'
  resources :todos
    
end
