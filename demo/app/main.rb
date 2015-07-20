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
      #PIXI::Examples::Click.new
      #PIXI::Examples::TilingSprite.new
      #PIXI::Examples::Text.new
      #PIXI::Examples::Graphics.new
      #PIXI::Examples::Video.new
      #PIXI::Examples::RenderTexture.new
      #PIXI::Examples::TexturedMesh.new
      PIXI::Examples::CustomFilter.new
    end

  end
end
