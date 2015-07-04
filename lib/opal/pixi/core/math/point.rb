module PIXI
  class Point
    include Native

    alias_native :x
    alias_native :y
    alias_native :x=
    alias_native :y=

  end
end
