require 'opal'
require 'opal-pixi'
require 'native'
require 'examples'

require 'examples/basics/basic'

module PIXI
  class Demo
    include Native

    def initialize

      examples = [
        PIXI::Examples::Basic,
        PIXI::Examples::Click,
        PIXI::Examples::Container,
        PIXI::Examples::CustomFilter,
        PIXI::Examples::Graphics,
        PIXI::Examples::RenderTexture,
        PIXI::Examples::SpriteSheet,
        PIXI::Examples::Text,
        PIXI::Examples::TexturedMesh,
        PIXI::Examples::TilingSprite,
        PIXI::Examples::Video
      ]

      height = `window.innerHeight`
      width =  `window.innerWidth`

      renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x111111 }
      body = Native(`window.document.body`)
      body.appendChild renderer.view

      # create the root of the scene graph
      menu = PIXI::Container.new

      current = nil
      show_content = Proc.new do |item|
        #current.destroy if current
        current = item.new(menu, renderer)
      end

      style = {
          'font' => 'bold italic 36px Arial',
          'fill' => '#F7EDCA',
          'stroke' => '#4a1850',
          'strokeThickness' => 5,
          'dropShadow' => true,
          'dropShadowColor' => '#000000',
          'dropShadowAngle' => `Math.PI` / 6,
          'dropShadowDistance' => 6,
          'wordWrap' => true,
          'wordWrapWidth' => 440
      }

      examples.each_with_index do |item, index|
        menu_item = PIXI::Text.new(item.name.split('::').last.downcase, style)
        menu_item.x = 10
        menu_item.y = 50 * index
        menu_item.interactive = true
        menu_item.on('mousedown') do
          show_content.call(item)
        end
        # add him to the container
        menu.add_child(menu_item)
      end

      show_content.call(examples.first)

    end

  end
end
