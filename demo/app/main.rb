require 'opal'
require 'opal/pixi'
require 'native'

class Game
  def initialize
    stage = PIXI::Container.new

    height = `window.innerHeight`
    width =  `window.innerWidth`
    renderer = PIXI::WebGLRenderer.new(width, height , {"backgroundColor" => 0x66FF99})


    # opal-jquery would clean this up
    body = Native(`window.document.body`)
    body.appendChild renderer.view


    texture = PIXI::Texture.from_image "bunny.png"
    bunny = PIXI::Sprite.new texture
    bunny.anchor = PIXI::Point.new(0.5, 0.5)
    bunny.position = PIXI::Point.new(width / 2, height / 2)

    stage.add_child(bunny)

    text = PIXI::Text.new("Sample text ")
    text.position = PIXI::Point.new( 50 , 50 )
    stage.add_child text
    counter = 1
    animate = Proc.new do
      `requestAnimationFrame(animate)`
      bunny.rotation += 0.1
      text.position.add( 5 , 0)
      if( text.position.x + text.width > renderer.width )
        text.position.set( 50 , 50 )
        text.text = "Sample text " + counter.to_s
        counter += 1
      end
      renderer.render stage
    end

    animate.call
  end
end
