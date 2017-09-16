class ContactController < Volt::ModelController

  def index
    self.model = :store
  end
   
  def new
   self.model = store._contacts.buffer
  end

  def save
    model.save!.then do
      new()
    end
  end  

end
