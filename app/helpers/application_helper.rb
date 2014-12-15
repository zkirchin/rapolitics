module ApplicationHelper
	# def user_choice
	# 	selection = Proc.new {|id| id.rapper_id == 3 }
 #    	@a = Agenda.select(&selection)

 #    	@list_of_ids = []
 #    	@b = @a.each do |a|
 #    		x = a[:id]
 #    		@list_of_ids.push(x)
 #    	end

	# end

	def user_choice
		rapper_selection = Proc.new {|agenda| agenda.rapper_id == @selection.rapper_id}
		rapper_array = Agenda.select(&rapper_selection)

		
		type_selection = Proc.new {|agenda| agenda.type_id == @selection.type_id}
		if h = rapper_array.find(&type_selection)
		# if h = rapper_array.find { |h| h[:type_id] == @selction.type_id}
			same_type = true
		else
			same_type = false
		end

		# same_type = 0
		# rapper_array.each do |check|
		# 	if check.include? type_id == @selection.type_id
		# 		same_type += 1
		# 	end
		# end

		# if same_type > 0 
		# 	same_type = true
		# else
		# 	same_type = false
		# end

		if same_type == true
			type_selection = Proc.new {|agenda| agenda.type_id == @selection.type_id}
			type_array = rapper_array.select(&type_selection)

			@list_of_ids = []
			type_array.each do |a|
				x = a[:id]
				@list_of_ids.push(x)
			end

			@new_id = @list_of_ids.sample

			redirect_to "/agendas/#{@new_id}"
		else 
			@list_of_ids = []
			rapper_array.each do |a|
				x = a[:id]
				@list_of_ids.push(x)
			end

			@new_id = @list_of_ids.sample

			redirect_to "/agendas/#{@new_id}", notice: "Your chosen rapper does not have a song that aligns with your political activity. Here is another agenda inspired by a song of your chosen rapper!"
		end

	end










end
