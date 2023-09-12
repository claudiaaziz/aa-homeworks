class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    @cups.each_index do |i|
      @cups[i] += [:stone, :stone, :stone, :stone] if i != 6 && i != 13
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > @cups.length
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    distribute = @cups[start_pos]
    @cups[start_pos] = []

    until distribute.empty?
      (start_pos...@cups.length).each do |next_cup_i|
        if @cups[next_cup_i].empty?
          return :switch
        elsif @cups[next_cup_i] == current_player_name.side
          return :prompt
        else
          return next_cup_i
        end
        @cups[next_cup_i] << :stone
        distribute.pop
        render
      end
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side_1 = @cups[0...6]
    side_2 = @cups[7...12]
    side_1.all? { |cup| cup.empty? } || side_2.all? { |cup| cup.empty? }
  end

  def winner
    return :draw if @cups[6].length == 6 && @cups[13].length == 6
    if @cups[6].length >  @cups[12].length
      return @name1 
    else
      return @name2
    end
  end
end