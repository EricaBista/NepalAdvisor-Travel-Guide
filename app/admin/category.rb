ActiveAdmin.register Category do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :Name, :Description, :icon,  :Order
 index do 
     
     column :Name
     column :Order
     column :slug
     column :icon
     # column :Description
     column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), :class => "member_link view_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
    # column :category do |c|
     
    #     c.category.Name
       end
  # or
   form do |f|
      f.inputs "Category" do
      # add your other inputs
      # f.input :category, :collection => Category.all.map{ |category| [category.Name, category.id] },:prompt => true
      f.input :Name
      f.input :Description, as: :html_editor
      f.input :Order
      f.input :icon
      f.input :slug
          end
     end 

  show do |category|
  attributes_table do

    row :Name
    row :Order
    row :slug
    row :icon do
        image_tag category.icon
      end
    end
    
  end
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
end
