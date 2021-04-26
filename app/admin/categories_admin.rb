Trestle.resource(:categories) do
  menu do
    item :categories, icon: "fa fa-list-ol"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id, header: 'ID'
    column :name
    column :is_publish
    column :description
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |category|
    text_field :name
    select :is_publish, Category.is_publish.values
    editor :description
    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
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
  #   params.require(:category).permit(:name, ...)
  # end
end
