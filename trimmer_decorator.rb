require_relative 'decorator'
 class TrimmerDecorator < Decorator
    def correct_name
    trimmed_name = @nameable.correct_name[0..9]
    trimmed_name.length == 10 ? trimmed_name : trimmed_name + "..."
  end
end