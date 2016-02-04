class NotesController < ApplicationController

  def show
    @note = Note.last || Note.create!
    render component: 'NoteEditor', props: { note: @note }, tag: 'div', class: 'note-editor'
  end

  def update
    params.require(:id)
    params.require(:note).permit!

    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      render json: @note.to_json(root: false)
    else
      render json: @note.errors.to_json, status: 406
    end
  end

end
