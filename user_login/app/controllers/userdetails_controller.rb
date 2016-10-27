class UserdetailsController < ApplicationController
	def new
	end

	def create
		# binding.pry
		@userdetail = Userdetail.new(func)
		# algo to encrypt
		pa = @userdetail.password
		i=0
		a = Array.new
		pa.each_byte do |c|
		    a << c.to_s
		end
		@userdetail.password = a.join
		@userdetail.save
		# algo to encrypt ends
		# binding.pry
		redirect_to userdetails_index_path
	end

	def index
		@userdetail = Userdetail.all
	end

	def edit
		@userdetail = Userdetail.find_by_id(params[:id])
	end

	def update
		@userdetail = Userdetail.find_by_id(params[:id])
		@userdetail.update(func)
		redirect_to userdetails_index_path
	end

	def destroy
		# binding.pry
		@userdetail = Userdetail.find_by_id(params[:id])
    	@userdetail.destroy
		redirect_to userdetail_new_path
	end

	private
	def func
		params.require(:userdetail).permit(:firstname, :lastname, :email, :password)
	end
end
