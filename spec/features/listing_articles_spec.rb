require "rails_helper"

RSpec.feature "Listing Articles" do
  before do
    @article1 = Article.create(title:"Title first", body: "First body")
    @article2 = Article.create(title:"Title second", body: "Second ispsum")
  end
  scenario "A user list all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)

    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)
  end
end
