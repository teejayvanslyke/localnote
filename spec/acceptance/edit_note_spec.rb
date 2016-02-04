require 'acceptance/acceptance_helper'

feature 'Edit note', %q{
  In order to not forget stuff
  As a forgetful programmer
  I want to edit a note
} do

  scenario 'should be able to edit a note and have its value persist' do
    visit '/'
    fill_in "note_text", with: "Don't forget to buy your girlfriend some cheese!"

    visit '/'
    expect(page).to have_content("Don't forget to buy your girlfriend some cheese!")
  end

end
