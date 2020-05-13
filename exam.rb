class Book

  attr_accessor :title
  attr_accessor :author
  attr_accessor :story

  def initialize
    p "タイトルを入力して下さい"
    @title = gets.chomp
    p "著者を入力して下さい"
    @author = gets.chomp
    p "あらすじを入力して下さい"
    @story = gets.chomp
    show_book
  end

  def show_book
    p "タイトル:#{@title}"
    p "著者:#{@author}"
    p "あらすじ:#{@story}"
  end
end

def show_books(books)
  books.each_with_index{|v,i|
    p "[#{i}]:#{v.title} #{v.author}"
  }
  input = gets.to_i
  books[input].show_book
end

books = []

while true do
  p "機能を選択して下さい"
  p "[0]:本の保存"
  p "[1]:本の閲覧"
  p "[2]:アプリ終了"
  input = gets.to_i
  if input == 0
    book = Book.new
    books << book
  elsif input == 1
    show_books(books)
  elsif input == 2
    exit
  else
    p "誤った入力です"
  end
end
