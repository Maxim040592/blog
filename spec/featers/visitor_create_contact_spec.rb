
require 'rails_helper'

feature "Contact Creator" do 
  scenario "allow acees to contacts page" do
      visit '/contacts'

      expect(page).to have_content I18n.t('contacts.contacts_us')
  end
end
  