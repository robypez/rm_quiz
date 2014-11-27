class CustomTableCell < UITableViewCell

  # This method is used by ProMotion to instantiate cells.
  def initWithStyle(style_name, reuseIdentifier: reuseIdentifier)
    super
    stylish
    self
  end

  # A delegate method when the user clicks the Row(it's blue by default)
  def setHighlighted(highlighted, animated: animated)
    if highlighted
      self.backgroundColor = UIColor.redColor
    else
      self.backgroundColor = UIColor.whiteColor
    end
  end

  def stylish
    self.backgroundColor = UIColor.whiteColor
    self.selectionStyle = UITableViewCellSelectionStyleNone
  end

  def selected=(is_selected)
    bg_color = is_selected ? rmq.color.from_hex('#1c7ac4') : UIColor.whiteColor
    text_color = is_selected ? UIColor.whiteColor : rmq.color.from_hex('#1c7ac4')
    self.backgroundColor = bg_color
    self.textLabel.textColor = text_color
    self.detailTextLabel.textColor = text_color
  end

end