Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "main#home"

  get  "/note_form" => "main#note_form"
  post "/note_form_submit" => "main#note_form_submit"
end
