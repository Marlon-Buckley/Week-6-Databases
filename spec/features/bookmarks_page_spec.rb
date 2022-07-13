require 'pg'
# require 'spec/setup_test_database'

feature 'bookmarks page' do
  scenario 'visit bookmarks page and user is shown list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.bbc.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")

    visit '/bookmarks'
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.bbc.com')
    expect(page).to have_content('http://www.twitter.com')
  end
end