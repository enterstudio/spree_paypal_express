class BillingIntegration::PaypalExpressUk < BillingIntegration
  preference :login, :string
  preference :user, :string
  preference :vendor, :string
  preference :password, :string
  preference :review, :boolean, :default => false
  preference :no_shipping, :boolean, :default => false

  def provider_class
    ActiveMerchant::Billing::PayflowExpressUkGateway
  end

end
