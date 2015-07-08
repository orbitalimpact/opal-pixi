
module PIXI
  class Text < `PIXI.Text`

    # options according to http://pixijs.github.io/docs/PIXI.Text.html
    def self.new(x,y)
      `new PIXI.Text(x,y)`
    end

    def text= new_text
      `self.text = new_text`
    end

    def text
      `self.text`
    end

  end
end
