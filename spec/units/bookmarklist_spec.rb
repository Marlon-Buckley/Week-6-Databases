require 'BookmarkList'
require 'pg'

describe BookmarkList do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.bbc.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")

      bookmarks = BookmarkList.all
      
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.bbc.com')
      expect(bookmarks).to include('http://www.twitter.com')
    end
  end
end
