require 'rails_helper'

feature "User marks todo as incomplete" do
  scenario "successfully" do
    sign_in
    creates_todo("Buy a smoke")

    click_on "Mark complete"
    click_on "Mark incomplete"
    expect(page).not_to display_completed_todo "Buy a smoke"
  end
end
