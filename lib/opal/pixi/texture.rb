require 'native'
module PIXI
  class Texture

    include Native

    def self.from_image(name)
      new(`PIXI.Texture.fromImage(name)`)
    end
  end
end
