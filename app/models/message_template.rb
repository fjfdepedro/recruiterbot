class MessageTemplate < ApplicationRecord

  # puts MessageTemplate.generate_message_for_user('amiedes94')
  def self.generate_message_for_user(username)
    message = MessageTemplate.all.sample.message

    Term.categories.each do |category|
      keyword = "%#{category}%"

      while message.scan(/#{keyword}/).size > 0 do
        replacement = Term.send(category.to_sym).sample.term
        message.sub!(keyword, replacement)
      end
    end

    message.sub!("%username%", "@#{username}")

    message
  end

end
