require 'acceptance/acceptance_helper'

feature 'Edit note', %q{
  In order to not forget stuff
  As a forgetful programmer
  I want to edit a note
} do

  #=====================================================================#
  # Helpers
  #=====================================================================#

  def note_textarea_element
    find('#note_text')
  end

  def fill_in_note_textarea_with(value)
    note_textarea_element.set(value)
  end

  #=====================================================================#
  # Scenarios
  #=====================================================================#

  scenario 'should be able to edit a note and have its value persist' do
    visit '/'
    fill_in_note_textarea_with "Testing 123"
    wait_for_ajax

    visit '/'
    expect(note_textarea_element).to have_content("Testing 123")
  end

end
