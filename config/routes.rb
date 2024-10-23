Rails.application.routes.draw do
  root 'calculations#new_square'

  get '/square/new', to: 'calculations#new_square'
  get '/square/results', to: 'calculations#square'

  get '/square_root/new', to: 'calculations#new_square_root'
  get '/square_root/results', to: 'calculations#square_root'

  get '/random/new', to: 'calculations#new_random'
  get '/random/results', to: 'calculations#random'

  get '/payment/new', to: 'calculations#new_payment'
  get '/payment/results', to: 'calculations#payment'
end
