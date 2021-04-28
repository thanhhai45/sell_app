Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-industry"
  end

  active_storage_fields do
    [:images, :thumbnail]
  end

  

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |product|
    row do
      col(xs: 6) do
        text_field :name
        number_field :price
        number_field :original_price
        number_field :amount
        select :status, Product.status.values
        collection_select :category_id, Category.all, :id, :name
      end
      col(xs: 6) do
        text_field :sku
        number_field :weight
        number_field :height
        text_field :size
        active_storage_field :thumbnail
        active_storage_field :images
      end
    end
  end
  
  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
