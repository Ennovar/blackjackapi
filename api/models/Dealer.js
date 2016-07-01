/**
 * Dealer.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */
var Deck = require('./Deck');

module.exports = {
  deck: Deck,
  // Deals two cards from the deck
  deal: function() {
    return this.deck.getCards(2)
  },
  attributes: {

  }
};
