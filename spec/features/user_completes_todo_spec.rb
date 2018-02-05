require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    creates_todo "Buy a smoke"
    
    click_on "Mark complete"
    expect(page).to display_completed_todo "Buy a smoke"
  end
end
