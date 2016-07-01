/**
 * DealerController
 *
 * @description :: Server-side logic for managing dealers
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var Dealer = require('../models/Dealer');

module.exports = {
	deal: function(req, res) {
		console.log(Dealer)
		return res.send(Dealer.deal());
	},
	start: function(req, res) {
		return res.send("starting game")
	}
};
