class HomeStylesheet < RubyMotionQuery::Stylesheet
  # Add your view stylesheets here. You can then override styles if needed, example:
  # include FooStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.from_hex('#1c7ac4')
  end

  def logo_view(st)
    st.image = image.resource('logo')
    st.frame = {l: 30, fr: 30, t:20, h: 130, centered: :horizontal}
  end

  def quiz_button(st)
    st.background_color = color.white
    st.frame = {l: 40, t: 210, w: 120, h: 120}
    st.image_normal = image.resource('sailboat')
    # st.image_highlighted = image.resource('sailboat_selected')
  end

  def section_button(st)
    st.background_color = color.white
    st.frame = {fr: 40, t: 210, w: 120, h: 120}
    st.image_normal = image.resource('section_quiz')
    # st.image_highlighted = image.resource('section_quiz_selected')
  end

  def error_button(st)
    st.background_color = color.white
    st.frame = {fr: 40, t: 410, w: 120, h: 120}
    st.image_normal = image.resource('quiz_errors')
    # st.image_highlighted = image.resource('quiz_errors_selected')
  end

  def profile_button(st)
    st.background_color = color.white
    st.frame = {l: 40, t: 410, w: 120, h: 120}
    st.image_normal = image.resource('user_profile')
    # st.image_highlighted = image.resource('user_profile_selected')
  end

  def label(st)
    st.font = UIFont.fontWithName('HelveticaNeue', size: 15)
    st.size_to_fit
    st.frame = {l: st.prev_frame.left, below_prev: 10, w:st.prev_frame.width}
    st.text_alignment = NSTextAlignmentCenter
    st.color = color.white
  end

  def profile_label(st)
    st.text = "Profilo utente"
    label st
  end

  def quiz_label(st)
    st.text = "Prova d'esame"
    label st
  end

  def section_label(st)
    st.text = "Test per sezioni"
    label st
  end

  def error_label(st)
    st.text = "Ripasso errori"
    label st
  end


end
