class SectionMenuStylesheet < RubyMotionQuery::Stylesheet
  # Add your view stylesheets here. You can then override styles if needed, example:
  # include FooStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.from_hex('#1c7ac4')
  end

  def title_label(st)
    st.background_color = color.red
    st.frame = {l: 0, fr: 0, h: 150, t:0}
    st.text = "Profilo utente"
  end

  def start_quiz_button(st)
    st.background_color = color.red
  end

  def table_view(st)
    st.frame = {l: 0, fr: 0, bp: 0, fb:50}
  end

  def begin_button(st)
    st.frame = {l: 0, fr: 0, bp: 0, h: 50,}
  end
end
