ActiveAdmin.register Review do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :title, :description, :approved
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  member_action :approve, :method=>:get do
 
  end
  index do 
    
     column :title 
    column :description
    column :approved
     column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), :class => "member_link view_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end
  end
form do |f|
      f.inputs "review" do
      # add your other inputs
      f.input :item, :collection => Item.all.map{ |item| [item.Name, item.id] },:prompt => true
      f.input :title
      f.input :description, :input_html => { :class => "tinymce_editor" }
      f.input :approved
end
f.actions
     end 
show do |review|
  attributes_table do

    row :title
    row :description
    row :approved
    row :item do |i|
         i.item.Name
      end
    end
  end


  controller do
    # This code is evaluated within the controller class

      def approve
        # Instance method
         review = Review.find(params[:id])
           respond_to do |format|
              if review.update(:approved => true)
                format.html { redirect_to admin_dashboard_path, notice: 'Review was successfully approved.' }
              end
          
            end
      end
  end

end
