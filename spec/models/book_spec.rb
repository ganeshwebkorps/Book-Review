require 'rails_helper'

RSpec.describe Book, type: :model do
  it "will check for book" do
    book = build(:book)
    expect(book.book_name).to eq("MyString")
  end
  it "will check presions of writer" do
    # book = Book.new(writer: true)
    # expect(book.writer).to eq(true)

    # user = create(:user)
    book = build(:book)
    # book.writer = user
    # user.save
    # book = user.books.create(book_name: "The Great Gatsby")
    expect(book.writer).to eq(user)
  end
  
end
