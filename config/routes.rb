Rails.application.routes.draw do

  root 'contracts#index'

  get '/contract' => 'contracts#show'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
end
