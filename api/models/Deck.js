function getCards(suits, ranks) {
 var cards = [];
 // for each suit create all of the ranks cards
 for (var i = 0; i < suits.length; i++) {
   var suit = suits[i];
   // for each rank create a card for it
   for (var j = 0; j < ranks.length; j++) {
     var rank = ranks[j];
     // create a json object to represent our cards with a suit and a rank
     cards.push({suit: suit, rank: rank});
   }
 }
 return cards
}

// Card suits
var suits = ['♦️','♥️', '♣️', '♠️'];
// Card ranks 1-K
var ranks = ['A', 'K', 'Q', 'J', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
var cards = getCards(suits, ranks);

module.exports = {
  cards: cards,
  // get numCards from the deck
  getCards: function(numCards) {
    var cards = []
    for (var i = 0; i < numCards; i++) {
      cards.push(this.cards[Math.floor(Math.random()*this.cards.length)])
    }
    return cards;
  },
  attributes: {

  }
};
