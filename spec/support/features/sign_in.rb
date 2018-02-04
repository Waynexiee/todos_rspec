module Features
  def sign_in
    visit root_path
    fill_in 'Email',with: "abc@yeah.net"
    click_on "Sign in"
  end
end
