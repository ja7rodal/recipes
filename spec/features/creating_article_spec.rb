require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "An User create an article" do
    visit "/"
    click_link "New Article"
    fill_in "Title", with: "Creating a Blog "
    fill_in "Body", with: "Lorem ipsum body"
    click_button "Create Article"
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end
