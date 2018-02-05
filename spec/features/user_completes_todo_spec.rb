require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    click_on "Add a new todo"
    fill_in "Title", with: "Buy a smoke"
    click_on 'Submit'

    click_on "Mark complete"
    expect(page).to display_completed_todo "Buy a smoke"
  end
end
