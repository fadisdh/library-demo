class CheckoutsController < ApplicationController

	def create
		@book = Book.find(params[:book_id])
		non_returned_books_count = @book.checkouts.where(returned: false).count;

		if(non_returned_books_count == 0) then
			@checkout = @book.checkouts.create(checkout_params)
			if !@checkout.errors.any?  then
				redirect_to @book, notice: 'Checkout was created successfully'
			else
				flash[:checkout_errors] = @checkout.errors.full_messages
				redirect_to @book
			end
		else
			redirect_to @book, notice: 'The book is not returned yet, you can\'t check it out'
		end
	end

	def update
		@checkout = Checkout.find(params[:id])
		@book = @checkout.book
		@checkout.update(returned: params[:returned])
	    respond_to do |format|
	      format.html { redirect_to @book, notice: 'Checkout was successfully Updated.' }
	      format.json { head :no_content }
	    end
	end

	def destroy
		@checkout = Checkout.find(params[:id])
		@book = @checkout.book
		@checkout.destroy
	    respond_to do |format|
	      format.html { redirect_to @book, notice: 'Checkout was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private
	def checkout_params
		params.require(:checkout).permit(:name, :checkout_date, :return_date, :returned)
	end
	def checkout_returned_param
		params.require(:checkout).permit(:returned)
	end
end
