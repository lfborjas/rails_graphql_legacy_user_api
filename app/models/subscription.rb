class Subscription < ApplicationRecord
  self.table_name = "subscriptions"

  #copied from magento_mapper: https://github.com/birchbox/magento_mapper/blob/master/app/models/magento/concerns/subscriptions.rb
  belongs_to :subscription_profile, foreign_key: :customer_subscription_profile_id
end
