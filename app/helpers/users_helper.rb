module UsersHelper
  
  def text_line_split(text)
    # inspirations = text.split(" ")
    # inspirations.each do |inspiration|
    #   if inspiration.length > 10
    #     inspiration = inspiration.insert(10, "-")
    #   end
    # end
    # inspirations.join(" ")
    text_split = text.split(" ")
    if text_split.length > 1
      text_split.each do |split|
        if split.length > 12
          text_split.insert(12," ")
        end
      end
      return text_split.join(' ')
    else
      text = text.split(//)
      text.each_index do |i|
        if i%11 == 0 && i != 0
          text.insert(i,'- ')
        end
      end
      return text.join
    end
  end
end
