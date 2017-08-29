require 'rails_helper'
RSpec.describe "/" do
  
  it "can visit root path" do
    visit root_path
    expect(current_path).to eq(root_path)
  end

  it "can create an event" do
    visit root_path
    fill_in :events, with: '[{"start_time": "02:00", "end_time": "05:00"}]'
    click_on 'Add Events'
    
    expect(current_path).to eq(root_path)
    expect(page).to have_content('Event: 1')
    expect(page).to have_content('Start Time: 01/01/2000 02:00am')
    expect(page).to have_content('End Time: 01/01/2000 05:00am')
  end
end
