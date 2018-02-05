require 'rails_helper'

feature "User creates a todo" do
  scenario "successfully" do
    sign_in
    creates_todo "Buy a smoke"
    expect(page).to  display_todo "Buy a smoke"
  end
end
