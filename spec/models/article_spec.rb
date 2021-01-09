require "spec_helper"
require 'rails_helper'

describe Article do 

  it { should have_many :comments } 
  #т.е сущность articles должна емть много комментариев 
  #т.е в модели Article должен быть прописан код has_many :comments
 
 
end