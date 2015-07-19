require 'opal'
require 'opal-pixi'
require 'native'
require 'examples'

module PIXI
  class Demo
    include Native

    def initialize
      #PIXI::Examples::Basic.new
      #PIXI::Examples::Container.new
      #PIXI::Examples::SpriteSheet.new
      PIXI::Examples::Click.new
    end

  end
end
