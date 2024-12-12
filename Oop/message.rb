class Message
  def send_message
    begin
      raise NotImplementedError, "Subclasses must implement the send_message method."
    rescue NotImplementedError => e
      puts e.message
    end 
  end
end


class EmailMessage < Message
  def send_message
    "Send Email Message"
  end
end


class SMSMessage < Message
  def send_message
    "Send SMS Message"
  end
end



def send_notification(message)
  puts message.send_message
end


email = EmailMessage.new
sms = SMSMessage.new
send_notification(email)
send_notification(sms) 