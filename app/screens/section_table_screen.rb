class SectionTableScreen < PM::TableScreen

  attr_accessor :selected_sections

  def on_load
    set_nav_bar_button :left, title: "Home", action: :close_to_root
    set_nav_bar_button :right, title: "Inizia", action: :close_to_root

    self.tableView.backgroundColor = rmq.color.from_hex('#1c7ac4')
    self.selected_sections = []
  end

  def table_data
    @data ||= [{
      cells: sections.map do |section|
        {
          title: section[:title],
          subtitle: section[:subtitle],
          height: 80,
          cell_class: CustomTableCell,
          action: :tapped_cell,
          arguments: {section: section[:id], row:2},
          keep_selection: false,
          image: { image: section[:image] }, 
        }
      end
    }]
  end

  def tapped_cell(args={})
    PM.logger.info args # => instance of State
    if selected_sections.include? args[:section] 
      selected_sections.delete(args[:section])
    else
      selected_sections << args[:section]
    end
    PM.logger.info selected_sections
  end

  def close_to_root
    open_root_screen RootScreen
  end

  def sections
    [
      {title: "Teoria della vela", id: 1, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Motori endotermici", id: 2, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Sicurezza della navigazione", id: 3, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Segnalamento marittimo", id: 4, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Meteorologia", id: 5, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Navigazione", id: 6, image: "sailboat", subtitle: "xxxxxx"},
      {title: "Normativa diportistica", id: 7, image: "sailboat", subtitle: "xxxxxx"},
    ]
  end

end  