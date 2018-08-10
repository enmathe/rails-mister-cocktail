class ReviewsController < ApplicationController
   def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review  = Review.new
    # @reviews = Review.all(review_params))
    # @reviews_array = []
    # <% if @reviews != nil %>
    #     <% @reviews.each do |review| %>
    #      <% @reviews_array << review.rating %>
    #      <% end%>
    #      <% @avg_review = @reviews.sum / @reviews.size %>
    #      <%= @avg_review %>
    #    <% end %>
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

    @review  = Review.new(review_params)

    @review.cocktail = @cocktail

    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])

    cocktail = @review.cocktail

    @review.destroy

    redirect_to cocktail_path(cocktail)
  end



  private
  def review_params
    params.require(:review).permit(:rating)
  end
end

