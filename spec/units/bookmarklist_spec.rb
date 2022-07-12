require 'BookmarkList'

describe BookmarkList do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = BookmarkList.all
      expect(bookmarks).to eq ["http://www.makersacademy.com", "http://www.bbc.com", "http://www.twitter.com"]
    end
  end
end
