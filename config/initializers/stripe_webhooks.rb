StripeEvent.configure do |events|
  #events.subscribe 'charge.failed' do |event|
  	# These are just 2 events, see https://github.com/integrallis/stripe_event for more
  	# Stripe Webhooks https://stripe.com/docs/webhooks
  	# Stripe docs to find events code https://stripe.com/docs/api#events

  	
  	#end 

  	# Charge failed/deleted for subscription
  	#Subscription failed/deleted
	  events.subscribe 'customer.subscription.deleted' do |event|

	    ap 'customer.subscription.deleted'
	    ap event

	    #Delete the customer's subscription from Account model
	    subscription = event.data.object
	    customer_id  = subscription.customer

	    #Move to account model
	    account                = Account.find_by_customer_id(customer_id)
	    account.stripe_plan_id = ''
	    #account.customer is unchanged
	    account.active_until   = Time.at(0).to_datetime
	    account.save!
	  end 



    # Define subscriber behavior based on the event object
    #event.class       #=> Stripe::Event
    #event.type        #=> "charge.failed"
    #event.data.object #=> #<Stripe::Charge:0x3fcb34c115f8>
  #end

  #events.all do |event|
    # Handle all event types - logging, etc.
  #end
end