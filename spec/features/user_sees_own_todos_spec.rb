require 'rails_helper'

feature 'user sees own todos' do
  scenario "doesn't see others' todos" do
    Todo.create!(title:"Buy a smoke", email: "abc@yeah.com")

    sign_in_as "abcd@yeah.com"

    expect(page).not_to display_todo "Buy a smoke"
  end
end
