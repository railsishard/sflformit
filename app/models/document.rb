class Document < ActiveRecord::Base
	has_attached_file :attachment
	has_one :gardener
end
