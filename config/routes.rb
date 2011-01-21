InstructMe::Application.routes.draw do

  resources :instructions, :only => %w(show)

  resource :session, :only => [] do
    resource :instruction, :only => %w(create)
  end

  root :to => "instructions#new"

end