ActiveAdmin.register Contact do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :Slug, :Content, :Title, :Home_page, :Order
   index do 
    
     column :Slug
    
    column :Title
    column :Content, as: :html_editor
     column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), :class => "member_link view_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end

  # or
  form do |f|
      f.inputs "Contact" do
      # add your other inputs
      
       f.input :Slug
      f.input :Title
      
      f.input :Content, as: :html_editor

     end 
     f.actions 
      end
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
