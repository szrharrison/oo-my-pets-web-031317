class Dog
  # code goes here
  def initialize( name )
    @name = name
    @mood = 'nervous'
  end
  attr_accessor :mood
  attr_reader :name
end
