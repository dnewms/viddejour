class Promoter < ActiveRecord::Base
	default_scope order('amount DESC')
end
