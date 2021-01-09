require "spec_helper"
require 'rails_helper'

describe Contact do 

  it { should validate_presence_of :email } # В модели Contact должна присутвовать валидация поля :email
  it { should validate_presence_of :message } 
 
 
end