
require 'rails_helper'

feature "Account Creation" do 
  scenario "allow guest to create account" do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'Mike'
    fill_in :user_password, :with => '123456'
    fill_in :user_password_confirmation, :with => '123456'

    click_button 'Регистрация'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end  
end
  