class RootScreen < PM::Screen

  # def will_appear
  #   self.title = ""
  # end

  def preferredStatusBarStyle
    UIStatusBarStyleLightContent
  end

  def on_load
    rmq.stylesheet = HomeStylesheet
    rmq(self.view).apply_style :root_view
    rmq.append(UIImageView, :logo_view).get

    @quiz_button = rmq.append(UIButton, :quiz_button).get
    @quiz_button.layer.mask = add_mask(@quiz_button)
    rmq.append(UILabel, :quiz_label).get

    rmq(@quiz_button).on(:touch) do |sender| 
        sender.selected = !sender.selected?
    end

    @section_button = rmq.append(UIButton, :section_button).get
    @section_button.layer.mask = add_mask(@section_button)
    rmq.append(UILabel, :section_label).get

    rmq(@section_button).on(:touch) do |sender| 
        open s = SectionScreen.new(nav_bar: true)
        # open SectionScreen
    end

    @profile_button = rmq.append(UIButton, :profile_button).get
    @profile_button.layer.mask = add_mask(@profile_button)
    rmq.append(UILabel, :profile_label).get

    rmq(@profile_button).on(:touch) do |sender| 
        sender.selected = !sender.selected?
    end   

    @error_button = rmq.append(UIButton, :error_button).get
    @error_button.layer.mask = add_mask(@error_button) 
    rmq.append(UILabel, :error_label).get

    rmq(@error_button).on(:touch) do |sender| 
        sender.selected = !sender.selected?
    end
    

  end

  def add_mask(element)
    mask_path = UIBezierPath.bezierPathWithRoundedRect(element.bounds,
                                                         byRoundingCorners: UIRectCornerAllCorners,
                                                         cornerRadii:       CGSizeMake(100.0, 100.0))
    mask_layer = CAShapeLayer.layer
    mask_layer.frame = element.bounds
    mask_layer.path = mask_path.CGPath
    return mask_layer
  end

end