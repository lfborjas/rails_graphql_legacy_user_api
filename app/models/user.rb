class User < ApplicationRecord
  self.table_name = "customer_entity"
  self.primary_key = "entity_id"

  #copied from magento_mapper: https://github.com/birchbox/magento_mapper/blob/master/app/models/magento/concerns/customer_entity.rb
  has_many :subscription_profiles, foreign_key: :customer_id
  has_many :subscriptions, through: :subscription_profiles
end
