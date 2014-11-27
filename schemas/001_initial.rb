schema "001" do
  entity "Question" do
    string    :title,       optional: false
    string    :image
    integer32 :errors_count,   default: 0
    integer32 :done_count,   default: 0
    boolean   :oltre
    belongs_to :section
    has_many :answers 
  end

  entity "Section" do
    string    :title,       optional: false
    string    :section_description,       optional: false
    string    :image
    has_many  :questions 
  end

  entity "Answer" do
    string    :title,       optional: false
    boolean   :correct
    belongs_to :question
  end

  entity "Setting" do
    boolean   :oltre,   default: false
    boolean   :show_errors,   default: false
    boolean   :include_errors,   default: false
    boolean   :dont_repeat,   default: false
    integer32 :question_number,   default: 30
  end
end