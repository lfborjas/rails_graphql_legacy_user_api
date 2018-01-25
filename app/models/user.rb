class User < ApplicationRecord
  self.table_name = "customer_entity"
  self.primary_key = "entity_id"

  #copied from magento_mapper: https://github.com/birchbox/magento_mapper/blob/master/app/models/magento/concerns/customer_entity.rb
  has_many :subscription_profiles, foreign_key: :customer_id
  has_many :subscriptions, through: :subscription_profiles

  def self.create_remote(attrs)
    #TODO: how to manage _these_ kinds of things
    base_uri = ENV.fetch("MAGE_URI"){ "http://localhost:80" }
    response = HTTP.post(
      File.join(base_uri, '/shop/customer/accountapi/createPost'),
      form: attrs
    )

    json = response.parse rescue {}
    if json["id"].present?
      User.find(json["id"])
    end
  end
end
