Rails.application.routes.draw do
  root 'pages#index'

  # for requests that are not xhr but are html
  get '*path', to: 'pages#index', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
