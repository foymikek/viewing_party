require 'rails_helper'

describe MoviesFacade do
  it 'exists' do
    movies_facade = MoviesFacade.new

    expect(movies_facade).to be_an_instance_of(MoviesFacade)
  end

  it "can return top rated movie objects", :vcr do
    movies_facade = MoviesFacade.get_top_movies
    
    expect(movies_facade.count).to eq(40)
    expect(movies_facade.first).to be_an_instance_of(Film)
  end

  it 'can return one specifed movie object', :vcr do
    lion_king = MoviesFacade.get_movie(8587)

    expect(lion_king).to be_an_instance_of(Film)
  end
end

