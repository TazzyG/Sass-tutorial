module ApplicationHelper

	def bootstrap_class_for flash_type
		case flash_type
		when "success"  #Green
			"alert-success"
		when "error"  #Red
			"alert-danger"
		when "alert"  #Yellow
			"alert-warning"
		when "notice"  #Blue
			"alert-info"
		else
			flash_type.to_s
		end
	end
end
