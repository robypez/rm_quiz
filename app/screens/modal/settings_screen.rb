class SettingsScreen < PM::TableScreen
  title "Impostazioni"

  def on_load
    set_nav_bar_button :left, title: "Close", action: :close_modal_tapped
  end

  def on_init
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone 
    self.tableView.backgroundColor = UIColor.yellowColor
    self.tableView.allowsMultipleSelection = true
  end

  def table_data 

    @button =  UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.frame = CGRectMake(100, 100, 100, 30)
    @button.setTitle("Test",forState:UIControlStateNormal)
    @button.addTarget(self, action: foo, forControlEvents:UIControlEventTouchUpInside)
    @button.backgroundColor = UIColor.clearColor


    [{
      title: "Generali",
      title_view_height: 100,
      cells: [
        {
          title: "Patente Oltre",
          accessory: {
            view: :switch,
            value: true, # switched on
            action: :foo
          }
        }
      ]
    }
    # {
    #   title: "Cancella statistiche",
    #   accessory: { view: @button }
    # }
  ]
  end

  def close_modal_tapped
    close
  end

  def foo

  end

  

end