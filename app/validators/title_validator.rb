class TitleValidator < ActiveModel::Validator
    def validate(record)
        clickbait_words = ["Won't Believe", "Secret", "Top", "Guess"]
            
        unless record.title.to_s.include? "Won't Believe" || "Secret" || "Top" || "Guess"
            record.errors[:title] << "The title needs to include clickbait!"
        end
    end
end