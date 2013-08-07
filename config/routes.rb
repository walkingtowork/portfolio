Portfolio::Application.routes.draw do
  scope "api" do
    resources :projects
  end

  root :to => "home#index"
end
