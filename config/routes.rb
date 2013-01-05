YanganeseServer::Application.routes.draw do
  root to: 'application#index'
  resources :quizzes
  resources :questions, only: [:create, :update, :destroy]
end
