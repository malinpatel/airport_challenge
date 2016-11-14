require_relative './airport.rb'

class Plane

  attr_reader :flying

  def initialize
    @flying = false
  end

  def take_off
    raise 'Plane cannot take off: already flying.' if @flying
    @flying = true
  end

  def land
    raise 'Plane cannot land: plane already landed.' if landed?
    @flying = false
  end

  def airport
    raise 'Plane cannot be at airport: already flying.'
  end

  private

  def landed?
    @flying == false
  end

end
