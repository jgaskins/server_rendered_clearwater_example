Rails.application.routes.draw do
  root to: 'home#index'
  get '*all' => 'home#index'
end
