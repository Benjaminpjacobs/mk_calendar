require 'rails_helper'

RSpec.describe Event do 
  it {should validate_presence_of(:start_time)}
  it {should validate_presence_of(:end_time)}
end