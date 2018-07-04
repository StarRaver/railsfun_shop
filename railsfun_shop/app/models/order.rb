class Order < ActiveRecord::Base
  has_many :order_item
  STATUS = [['新增', 0], ['付款中', 1],['已付款', 2],['已對帳', 3],['已出貨', 4],['問題單', 5]]
end
