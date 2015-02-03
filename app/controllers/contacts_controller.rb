class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:Slug, :Title, :Content, :Order, :Home_page)
    end
end

