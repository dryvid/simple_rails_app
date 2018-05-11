class MainController < ApplicationController

  def home 
    @note = "This is a note."
  end

  def note_form
  end

  def note_form_submit
    # TODO: create note in db
    redirect_to root_path
  end
end
