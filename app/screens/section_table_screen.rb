class SectionTableScreen < PM::TableScreen

def table_data
    [{
      cells: sections.map do |section|
        {
          title: section,
          action: :select_section,
          arguments: { section: section }
        }
      end
    }]
  end

  def select_section(section)
    self.parent_screen.select_section(section)
  end

  def sections
    [
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx",
      "xxxxxx"
    ]
  end

end  