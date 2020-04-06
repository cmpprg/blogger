require "rails_helper"

RSpec.describe "When I visit a articles index page", type: :feature do
  it "I can see all articles" do
    article1 = Article.create!(title: "Title 1", body: "Body 1")
    article2 = Article.create!(title: "Title 2", body: "Body 2")

    visit '/articles'

    expect(page).to have_content(article1.title)
    expect(page).to have_content(article2.title)
  end

  it "I can click on a title and be taken to article show page" do
    article1 = Article.create!(title: "Title 1", body: "Body 1")

    visit articles_path

    click_link(article1.title)

    expect(current_path).to eql(article_path(article1))
  end

  it "I can click a create article link and be taken to the new article form." do
    visit articles_path

    click_link("New Article")

    expect(current_path).to eql(new_article_path)
  end
end
