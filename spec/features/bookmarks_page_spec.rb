require 'pg'
# require 'spec/setup_test_database'

feature 'bookmarks page' do
  scenario 'visit bookmarks page and user is shown list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    BookmarkList.create(url: "http://www.makersacademy.com")
    BookmarkList.create(url: "http://www.bbc.com")
    BookmarkList.create(url: "http://www.twitter.com")
    

    visit '/bookmarks'
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.bbc.com')
    expect(page).to have_content('http://www.twitter.com')
  end
end