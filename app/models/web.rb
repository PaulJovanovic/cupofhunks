class Web < Project
	default_scope order('placement ASC')
	attr_accessible :placement, :url
end