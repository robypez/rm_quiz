module RubyMotionQuery
  module Stylers
    class UIViewStyler 

      # Your custom styler methods here
 
    end

    class UIButtonStyler < UIControlStyler 
      def image_selected=(value)
        @view.setImage(value, forState:UIControlStateHighlighted)
      end
      def image_selected
        @view.imageForState UIControlStateHighlighted
      end
    end

  end
end
