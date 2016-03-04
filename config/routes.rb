Rails.application.routes.draw do
  root to: 'stickers#index'

  mount ActionCable.server => '/cable'
end
