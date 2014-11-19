class SectionScreen < PM::Screen
  title "Scegli le sezioni"

  def on_load
    rmq.stylesheet = SectionMenuStylesheet
    set_nav_bar_button :left, title: "Home", action: :close_to_root
    
    @table_view = rmq.append(UIView, :table_view).get
    rmq(@table_view).append(section_table.view).get
    rmq.append(UIButton, :begin_button).get
    
  end

  def close_to_root
    close to_screen: :root
  end

  def section_table
    @section_table ||= begin
      s = SectionTableScreen.new
      self.addChildViewController s
      s.parent_screen = self
      s
    end
  end

  def select_movie(movie)
    PM.logger.info movie
  end

  
end