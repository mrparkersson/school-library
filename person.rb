require_relative './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :age, :name, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rentals(rental)
    @rentals.push(rental)
    rental.person = self
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

def can_use_services?
  of_age? || @parent_permission
end
