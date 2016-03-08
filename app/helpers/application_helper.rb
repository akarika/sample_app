module ApplicationHelper

def titre
	base_titre="Simple App du Tutoriel Ruby on Rails"
	if @titre.nil?
		base_titre
	else
		"#{base_titre} | #{@titre}"
end
end
def logo
	image_tag("logo.png",alt: "Rails logo")
end

end
