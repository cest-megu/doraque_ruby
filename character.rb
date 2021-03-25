class Character
  attr_accessor :name, :hp, :offense, :defense

  def initialize(name:, hp:, offense:, defense:)
    @name = name;
    @hp = hp;
    @offense = offense;
    @defense = defense;
  end

end
