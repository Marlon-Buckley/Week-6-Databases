describe '.create' do
  it 'creates a new bookmark' do
    BookmarkList.create(url: 'http://www.example.org')

    expect(BookmarkList.all).to include 'http://www.example.org'
  end
end