class GamesController < ApplicationController

# afficher nouvelle grille aléatoire et formulaire
  def new
    @letters = ("a".."z").to_a.shuffle[0..10].join(" ")
  end

  # envoyer formulaire avec POST
  def score
    raise
    results = URI.open("https://wagon-dictionary.herokuapp.com/#{params[:word]}")
    json = JSON.parse(results.read)
    json["found"]
  end

end
