json.extract! purchase, :id, :buyer_name, :email, :status, :user_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
