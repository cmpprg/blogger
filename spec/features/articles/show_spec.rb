require "rails_helper"

RSpec.describe "When I visit an articles' show page", type: :feature do
  it "I can see title and body of that article" do
    article1 = Article.create!(title: "Title 1", body: "Body 1")
    article2 = Article.create!(title: "Title 2", body: "Body 2")

    visit(article_path(article1))

    expect(page).to have_content(article1.title)
    expect(page).to have_content(article1.body)
    expect(page).to have_no_content(article2.title)
    expect(page).to have_no_content(article2.body)
  end
end
