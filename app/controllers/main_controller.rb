class MainController < ApplicationController

  def home 
    @note = Note.first
  end

  def note_form
  end

  def note_form_submit
    note_content = params[:note_content]
    Note.create({ content: note_content })
    redirect_to root_path
  end
end
