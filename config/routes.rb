YanganeseServer::Application.routes.draw do
  resources :quizzes
  resources :questions, only: [:create, :update, :destroy]
end
