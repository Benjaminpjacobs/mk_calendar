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
    expect(page).to have_content('Start_Time: 2:00am')
    expect(page).to have_content('End_Time: 5:00am')
  end
end
