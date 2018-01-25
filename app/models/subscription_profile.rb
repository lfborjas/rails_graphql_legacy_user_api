class SubscriptionProfile < ApplicationRecord
  self.table_name = "customer_subscription_profile"
  # copied from magento_mapper: https://github.com/birchbox/magento_mapper/blob/master/app/models/magento/concerns/customer_subscription_profile.rb
  belongs_to :user, foreign_key: :customer_id
  has_many :subscriptions, foreign_key: :customer_subscription_profile_id
end
