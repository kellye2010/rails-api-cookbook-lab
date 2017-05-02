# frozen_string_literal: true
Rails.application.routes.draw do

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :ingredients, only: [:index, :show, :destroy, :update, :create]
  resources :recipes, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  resources :recipe_ingredients, except: [:new, :edit]
end
