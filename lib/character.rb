class Character
  attr_reader :name, :actor

  def initialize(attributes)
    @name = attributes[:name] unless nil
    @actor = attributes[:actor] unless nil
    @salary = attributes[:salary] unless nil
  end

  def salary
    @salary.to_s.delete("_").to_i
  end
end
