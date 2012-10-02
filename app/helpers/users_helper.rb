module UsersHelper
  
  def text_line_split(text)
    inspirations = text.split(" ")
    inspirations.each do |inspiration|
      if inspiration.length > 12
        inspiration = inspiration.insert(12, "-")
      end
    end
    inspirations.join(" ")
  end
end
