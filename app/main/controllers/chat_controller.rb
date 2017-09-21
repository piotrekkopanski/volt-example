
  class ChatController < Volt::ModelController
    before_action :require_login, only: :index

    def index
      reset_message
    end

   

    private

    def send_message
      store._messages << page._form.to_h
      reset_message
    end

     def reset_message
      page._form = Message.new
    end


  end
