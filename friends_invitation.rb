# frozen_string_literal: true
#require 'pry'
def double_words(string)
  string_array = string.split(' ')
  string_array.map { |word| word*2 }
  string_array.join(' ')
  #binding.pry
end

p double_words("Gango Is Programming In Ruby.")

class FriendsInvitation
  def initialize
    puts "This object has been initialized"
  end
end

g_friend = FriendsInvitation.new
