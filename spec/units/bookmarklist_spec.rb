require 'BookmarkList'

describe BookmarkList do
  describe '.all' do
    it 'returns all bookmarks' do
      wipe_test_database
      add_to_test_database
      bookmarks = BookmarkList.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.bbc.com")
      expect(bookmarks).to include("http://www.twitter.com")
    end
  end
end
