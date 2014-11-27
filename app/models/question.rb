class Question < CDQManagedObject

  def load_json
    seed_file = NSBundle.mainBundle.pathForResource('question', ofType:'json')
    json_string = String.new(NSString.stringWithContentsOfFile(seed_file))
    BW::JSON.parse(json_string)
  end

  def import_data

  end

end
