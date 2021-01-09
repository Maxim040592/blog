require "spec_helper"
require 'rails_helper'

describe Comment do 

  it { should belong_to :article } 
   #т.е сущность comment должна емть одну статью 
   #т.е в модели Comment должен быть прописан код belong_to :article
 
end