# frozen_string_literal: true

ActiveAdmin.register Post do
  permit_params :author_id, :title, :description, :category, :dt, :position, :published, tag_ids: []

  index do
    selectable_column
    id_column
    column :title
    column :author
    column :published
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :author
      row :title
      row :description
      row :category
      row :dt
      row :position
      row :published
      row :tags
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    toolbar = { buttons: %w[bold italic underline justifyCenter indent html] }
    f.inputs 'Post' do
      f.input :author
      f.input :title
      f.input :description, as: :medium_editor, input_html: { data: { options: { toolbar: toolbar } } }
      f.input :category
      f.input :dt
      f.input :position
      f.input :published
    end

    f.inputs 'Tags' do
      f.input :tags
    end

    f.actions
  end
end
