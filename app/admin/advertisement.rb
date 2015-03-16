ActiveAdmin.register Advertisement do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :text, :description, :title, :image, :started_date, :ended_date, :clicked, :position, :link
   
  # or

index do 
    
    column :title
    column :text
    column :started_date
    column :ended_date
    column :clicked
    column :link
    column :position
      
     column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), :class => "member_link view_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end



   form do |f|
      f.inputs "Advertisement" do
      # add your other inputs
      f.input :title
      f.input :text, :input_html => { :class => "tinymce_editor" }
      f.input :description, :input_html => { :class => "tinymce_editor" }
      f.input :image
      f.input :started_date
      f.input :ended_date
      f.input :clicked
      f.input :link
      f.input :position
      end
       f.actions 
     end 
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

end
