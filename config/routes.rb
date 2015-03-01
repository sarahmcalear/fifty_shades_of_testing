Rails.application.routes.draw do

  root 'contracts#index'

  get '/contract' => 'contracts#new'
  resources :contracts

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
end
