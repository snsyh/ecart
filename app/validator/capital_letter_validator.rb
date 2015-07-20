class CapitalLetterValidator < ActiveModel::Validator
  VALID_REGEX = /^[A-Z]$/
  def validate(record)
    if record.capital_letter.blank?
      record.errors[:capital_letter] << ' can\'t be blank'
    else
      unless record.capital_letter.size == 1
        record.errors[:capital_letter] << " is the wrong length (should be 1 characters)"
      end
      unless record.capital_letter =~ VALID_REGEX
        record.errors[:capital_letter] << " is the wrong format"
      end
    end
  end
end
