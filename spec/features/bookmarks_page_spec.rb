feature 'bookmarks page' do
  scenario 'visit bookmarks page and user is shown list of bookmarks' do
    visit '/bookmarks'
    wipe_test_database
    add_to_test_database
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.bbc.com')
    expect(page).to have_content('http://www.twitter.com')
  end
end