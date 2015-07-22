module PIXI::Examples

class TexturedMesh < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x000000 }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new
    #stage.position = PIXI::Point.new(width/2,height/2)

    # build a rope!
    rope_length = 918 / 40
    rope_length = 45

    points = []

    0.upto(45) do |x|
      points << PIXI::Point.new(x * rope_length, 0)
    end

    strip = PIXI::Mesh::Rope.new(PIXI::Texture.from_image('assets/snake.png'), points)

    strip.position.x = -100
    strip.position.y = 300

    stage.add_child(strip)

    g = PIXI::Graphics.new

    g.x = strip.x
    g.y = strip.y
    stage.add_child(g)

    count = 0

    render_points = Proc.new do

      g.clear

      g.line_style(2,0xffc2c2)

      g.move_to(points[0].x,points[0].y)

      points.each do |point|
        g.line_to(point.x,point.y)
        g.move_to(point.x,point.y)
      end

      points.each do |point|
        g.begin_fill(0xff0022)
        g.draw_circle(point.x,point.y,4)
        g.end_fill
      end

    end

    # start animating
    animate = Proc.new do
        count += 0.1

        # make the snake
        points.each_with_index do |point,i|
          point.y = `Math.sin((i * 0.5) + count)` * 30
          point.x = i * rope_length + `Math.cos((i * 0.3) + count)` * 20
        end

        # render the container
        renderer.render stage

        render_points.call

        `requestAnimationFrame(animate)`
    end

    # add the menu
    stage.add_child(menu)

    animate.call

    @destroy = Proc.new {

    }
    
  end
end

end
