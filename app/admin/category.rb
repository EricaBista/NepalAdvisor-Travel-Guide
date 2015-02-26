ActiveAdmin.register Category do

config.sort_order = 'position_asc'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model, :Name, :Description, :icon,  :Order, :is_menu, :is_destination

  # or
   form do |f|
      f.inputs "Category" do

      # add your other inputs
      # f.input :category, :collection => Category.all.map{ |category| [category.Name, category.id] },:prompt => true
      f.input :Name
      f.input :Description, as: :html_editor
      f.input :Order
      # f.input :icon
      f.input :icon, :as => :file, :hint => image_tag(category.icon_url(:avatar))
      # f.input :slug
      f.input :is_menu
      f.input :is_destination
          
          end
          f.actions 
        end

  show do |category|
  attributes_table do

    row :Name
    row :Order
    row :slug
    row :icon do
        image_tag category.icon_url(:avatar)
      end
    end
    
  end
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

collection_action :sort, :method => :post do
    params[:ids].each_with_index do |id, index|
      category = Category.find(id)
      category.update_attribute(:position, index.to_i+1)
    end
    head 200
  end

end
