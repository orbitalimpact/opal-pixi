require './base'

module PIXI
  class Point
    include Native

    %x{
      self._proto = window.PIXI.Point.prototype, def = self._proto;
              window.PIXI.Point.prototype._klass = self;
    }

    def self.new(x,y)
      `new window.PIXI.Point(x,y)`
    end


    alias_native :set
    alias_native :x
    alias_native :y

    alias_native :x=
    alias_native :y=

    # just add another point to this one
    # return self for chaining
    def add point
      self.x += point.x
      self.y += point.y
      self
    end

    # add a point (the first arg), but "bounce" off the wall, second arg
    # second arg is a pint that defines a rectangle with 0,0
    # if the adding makes the point go beyond the rectangle it bounces off the wall back in
    def add_and_bounce distance , wall
      self.add(distance).bounce(wall)
      self
    end

    # check if the point is outside the rectangle spanned by the wall arg (a point)
    def bounce wall
      self.x = - self.x    if self.x  < 0
      self.x = wall.x - (self.x - wall.x)  if self.x  > wall.x
      self.y = -self.y    if self.y  < 0
      self.y = wall.y - (self.y - wall.y)    if self.y  > wall.y
    end

    # scale the point down by the given factor.
    # off course for factors smaller than 1 that means it gets bigger
    # try to avoid 0 division by applying a minimum of 0.0001
    def scale_by num
      min = 0.001
      num = min if num < min and num > -min
      self.x = self.x / num
      self.y = self.y / num
      self
    end

    # return new point with same x coordiante but the given y
    def at_y new_y
      PIXI::Point.new(self.x ,new_y)
    end

    # return new point with same y coordiante but the given x
    def at_x new_x
      PIXI::Point.new(new_x , self.y)
    end

  end
end
