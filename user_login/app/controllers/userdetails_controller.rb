class UserdetailsController < ApplicationController
	def new
		@userdetail = Userdetail.new
	end

	def create
		# binding.pry
		@userdetail = Userdetail.new(func)
		if @userdetail.save
		    redirect_to userdetails_index_path
		  else
		    render 'new'
		  end
	end

	def index
		@userdetail = Userdetail.all
	end

	def edit
		@userdetail = Userdetail.find_by_id(params[:id])
	end

	def update
		# binding.pry
		@userdetail = Userdetail.find_by_id(params[:id])
		@userdetail.update(func)
		redirect_to userdetails_index_path
	end

	def destroy
		# binding.pry
		@userdetail = Userdetail.find_by_id(params[:id])
    	@userdetail.destroy
		redirect_to userdetails_index_path
	end

	def show
		@userdetail = Userdetail.find_by_id(params[:id])
		@project = Project.new
	end

	def create1

	end

	private
	def func
		params.require(:userdetail).permit(:firstname, :lastname, :email, :password)
	end
end
