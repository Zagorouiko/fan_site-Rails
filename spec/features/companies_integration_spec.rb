require 'rails_helper'

describe "the add a company list" do
  it "adds a new company" do
    visit companies_path
    click_on 'Add Company'
    fill_in 'Name', :with => 'Platinum Games'
    click_on 'Create Company'
    expect(page).to have_content 'Platinum Games'
  end

  it "gives an error when no company is entered" do
    visit new_company_path
    click_on 'Create Company'
    expect(page).to have_content 'errors'
  end
end

describe 'the show company path' do
  it 'displays the company on the show page' do
    visit companies_path
    click_on 'Add Company'
    fill_in 'Name', :with => 'Nintendo'
    click_on 'Create Company'
    click_on 'Nintendo'
    click_on 'Go To Nintendo Company Page'
    expect(page).to have_content 'Nintendo Details'
  end
end
