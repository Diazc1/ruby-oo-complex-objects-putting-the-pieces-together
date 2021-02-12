# #OOP means object-oriented programming 
# #create a simple book class

# class Book
    
#     def initialize(title)
#         @title = title
#     end

#     def title
#         @title
#     end

#     def author=(author)
#         @author = author
#     end

#     def author
#         @author
#     end

#     def page_count=(num)
#         @page_count = num
#     end

#     def page_count
#         @page_count
#     end

#     def genre=(genre)
#         @genre = genre 
#     end

#     def genre
#         @genre
#     end

#     def turn_page
#         puts "Flipping the page...wow, you read fast!"
#     end
# end


#this means that we can very easily tell our books to turn the page
# book = Book.new("Some Title")
# book.turn_page
# #=> "Flipping the page...wow, you read fast!"

################# we can really simplify our code now! since author, page_count, and genre setters or getters do not do anything special(they just set properties), we can turn those into attr_accessors

# class Book
#     attr_accessor :author, :page_count, :genre

#     def initialize(title)
#         @title = title
#     end

#     def title 
#         @title
#     end

#     def turn_page
#         puts "Flipping the page...wow, you read fast!"
#     end
# end

########our title reader(or getter) is also super basic, so lets add an attr_reader for it.- remeber this will give us a getter method for free

class Book
    attr_accessor :author, :page_count, :genre
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def turn_page
        puts "Flipping the page...wow, you read fast!"
    end
end