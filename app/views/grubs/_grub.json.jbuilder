json.extract! grub, :id, :name, :cuisine, :calories, :price, :created_at, :updated_at
json.url grub_url(grub, format: :json)
