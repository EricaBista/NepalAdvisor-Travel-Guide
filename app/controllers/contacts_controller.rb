class ContactsController < InheritedResources::Base
  
  def About_us
    @contacts = Contact.find(params[:id]) 
  end
  
  def site_map
  end

  def cms
    @contact = Contact.find_by_Slug!(params[:slug])  
  end

  def index
    @contacts = Contact.all
  end

  private

  def contact_params
    params.require(:contact).permit(:Slug, :Title, :Content, :Order, :Home_page, :slug)
  end
end
