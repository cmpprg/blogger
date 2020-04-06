require "rails_helper"

RSpec.describe "When I visit a articles index page", type: :feature do
  it "I can see all articles" do
    article1 = Article.create!(title: "Title 1", body: "Body 1")
    article2 = Article.create!(title: "Title 2", body: "Body 2")

    visit '/articles'

    expect(page).to have_content(article1.title)
    expect(page).to have_content(article2.title)
  end
end
