InstructMe::Application.routes.draw do

  resources :instructions, :only => %w(new create show edit update)

  root :to => "instructions#new"

end

