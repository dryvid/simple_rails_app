# Creating A Simple Rails App

## Features

It's a simple app that allows the user to create notes, which are just simple string messages.

Pages:
  1. home page - shows all the notes in a list
  2. note form page - shows a form for creating new notes

## Technical Info

Ruby and Rails Versions:

  - Rails 5.2.0
  - Ruby 2.5.1

MVC Composition:

  - 3 routes
  - 1 controller with 3 actions
  - 2 views
  - 1 model

Generators Used:

  - `rails new`
  - `rails generate controller`
  - `rails generate model`

## Commentary for the Commits:

  ### init `b97724a`
  1. Generate the app template with `rails new notes`.
  
  ### render note `2e43097`
  2. Generate controller with `rails generate controller main`.
  3. In `main_controller.rb`, Create action `home`. 
  4. In `routes.rb`, send the `root` path to the `home` action. 
  5. Set up the `@note` variable in the `home` action.
  6. Create new page `home.erb`, render `@note` in HTML.
  
  ### note form `bc68542`
  7. Create new form page `note_form.erb` for adding new notes using the `form_tag` ...
  8. In `main_controller.rb`, create an empty action `note_form` for rendering the form page ...
  9. In `routes.rb`, send a GET path to the `note_form` action.
  10. In `main_controller.rb`, create action `note_form_submit` to process form submission, and redirect to the root path at the end of the action ...
  11. In `routes.rb`, send a POST path to the `note_form_submit` action.
  
  ### link `596c743`
  13. In `home.erb`, add a link to the form page using the `link_to` helper.
  
  ### create note in db `43222b5`
  14. Generate a model with `rails generate model note content:string`.
  15. Create the database with `rails db:migrate`.
  16. In `main_controller.rb`, inside the `note_form_submit` action, extract the form data from params, and create a note in the database using `Note.create`.
  17. Inside the `home` action, fetch the first note with `Note.first`.
  18. In `home.erb`, render `@note.content` instead of `@note`.
  
  ### render all notes `536b1bc`
  19. In `main_controller.rb`, inside the `home` action, use `Note.all` to get all notes instead of just the first note.
  20. In `home.erb`, render all the notes with an `each` loop.

