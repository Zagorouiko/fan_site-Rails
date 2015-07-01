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
    expect(page).to have_content 'Nintendo'
  end

  it "edits the name of a company" do
    visit companies_path
    click_on 'Add Company'
    fill_in 'Name', :with => 'Sony'
    click_on 'Create Company'
    click_on 'Sony'
    click_on 'Edit'
    fill_in 'Name', :with => 'Microsoft'
    click_on 'Update Company'
    expect(page).to have_content 'Microsoft'
  end

  it 'deletes the name of a company' do
    visit companies_path
    click_on 'Add Company'
    fill_in 'Name', :with => 'Nintendo'
    click_on 'Create Company'
    click_on 'Nintendo'
    click_on "Delete"
    expect(page).to have_content 'Companies'
  end
end
