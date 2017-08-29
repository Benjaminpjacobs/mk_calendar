require 'rails_helper'
RSpec.describe "/" do
  
  it "can visit root path" do
    visit root_path
    expect(current_path).to eq(root_path)
  end
  
end
