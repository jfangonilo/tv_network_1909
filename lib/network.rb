class Network
  attr_reader :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def name
    @name.upcase
  end

  def add_show(show)
    @shows << show
  end

  def all_characters
    @shows.flat_map {|show| show.characters}
  end

  def highest_paid_actor
    (all_characters.max_by {|character| character.salary}).actor
  end

  def payroll
    all_characters.reduce({}) do |actor, character|
      actor[character.actor] = character.salary
    actor
    end
  end
end
