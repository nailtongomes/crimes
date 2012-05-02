module ContatosHelper

  def options_for_subject
    options = t("contacts.new.subjects").map do |subject, value| 
      [value, subject]
    end
    
    options.sort_by {|i| i[0]}
  end

end
