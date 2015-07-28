module PIXI
  class Polygon
    include Native

    def self.new(points_or_native)
      if native?(points_or_native)
        super(points_or_native)
      else
        super(`new PIXI.Polygon(points_or_native)`)
      end
    end

    alias_native :points
    alias_native :points=
    alias_native :closed
    alias_native :closed=
    alias_native :type

    alias_native :clone
    alias_native :contains

  end
end
