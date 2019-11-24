class DhhController < ApplicationController
  def home_page
	@stories=Story.all

	
  end

  def reader
	word_descriptions=WordDescription.all
p word_descriptions
	story_id=params[:story].to_i
	@story=Story.find_by_id(story_id)
	file= File.join(Rails.root, 'app', 'assets', @story.file_name)	
p	@story_text=File.read(file)
#p	@story_text.gsub(/[^\p{L}\s\d]/,'').gsub(/\s+/, " ").downcase.strip.split(" ").each{ |w|  if WordDescription.exists?(word: w) then p "yfqltyj"; w.gsub!(w,"<%=  link_to '"+w+"', home_page_path %>")  end}
#	@story_text_arr=@story_text.split(" ")
#	@story_text_arr.each{ |w|  if WordDescription.exists?(word: w.gsub(/[^\p{L}\d]/,'')) then  p wd=WordDescription.find_by(word:  w.gsub(/[^\p{L}\d]/,'')), w.gsub!(w,"<a class='show_description_link' data-remote='true' href='/dhh/word.json?word="+wd.id.to_s+"'>"+w+"</a>")  end} 
#p @story_text_arr
#p	@story_text=@story_text_arr.join(" ")

  end

def readerr
file= File.join(Rails.root, 'app', 'assets', 'test.txt')
File.open(file).each do |line|
p line

p w_id=line.scan(/\d+/).first.to_s 
p w_id.mb_chars.length
p w_id.slice(w_id.mb_chars.length)
p line end
end

def word
	word_id=params[:word].to_i
	@word_description=WordDescription.find_by_id(word_id)
	p @word_description
	respond_to do |format|
      	format.html
      	format.json { render json: { word: @word_description.word, word_description: @word_description.description } }
    end
end
end
#<a class='show_description_link' data-remote='true' data-method='get' href='/dhh/word.json?word=1'>текст</a>
