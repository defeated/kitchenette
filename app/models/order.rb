class Order < ActiveRecord::Base
  belongs_to :restaurant

  scope :active,    ->{ where("order_at >= ?", Time.current) }
  scope :inactive,  ->{ where("order_at < ?", Time.current) }
end
