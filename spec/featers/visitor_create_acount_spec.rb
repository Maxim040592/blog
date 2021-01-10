
require 'rails_helper'
require 'support/session_helper' # файл с функцией проверки регистрации sign_up

feature "Account Creation" do 
  scenario "allow guest to create account" do
    
    sign_up # метод 
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
    
  end  
end


  