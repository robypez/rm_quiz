class Question < CDQManagedObject

  @question = ""

  def self.load_json
    seed_file = NSBundle.mainBundle.pathForResource('question2', ofType:'json')
    contents = NSData.dataWithContentsOfFile(seed_file)
    contents_string = NSString.alloc.initWithData(contents, encoding:NSUTF8StringEncoding)
    # json_string = String.new(NSString.stringWithContentsOfFile(seed_file))
    # BW::JSON.parse(json_string)
  end

  def self.load_url
    AFMotion::JSON.get("http://media.dday.it/roby/question2.json") do |result|  
      if result.success?
        stuff_received result.body
      elsif result.failure?
        App.alert(result.error.localizedDescription)
      end
    end 
  end 

  def stuff_received(stuff)
    puts stuff
  end

  def import_data

  end

end
