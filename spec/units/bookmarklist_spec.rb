require 'BookmarkList'

describe BookmarkList do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = BookmarkList.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  # context "#all method" do
  #   it "Returns all bookmarks stored in BookmarkList instance" do
  #     #db =+ makers.com


  #     expect(@list.all).to eq [Bookmark1, Bookmark2]
  #   end
  # end

end


# create instance of bookmarkclass
# connect to db 
# return list of bookmarks from rows in db
