# add stuff to our test database

def add_to_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.bbc.com');")
  connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")
end



# DELETE FROM bookmarks; - this deletes all rows in bookmarks table. 

def wipe_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.exec('DELETE FROM bookmarks;')
end

