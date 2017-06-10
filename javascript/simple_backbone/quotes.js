console.log("la")

var QuoteModel = Backbone.Model.extend({
	defaults: {
		quote: '',
		context: '',
		source: '',
		theme: ''
	}
});

var QuotesCollection = Backbone.Collection.extend({
  // url: 'https://gist.githubusercontent.com/anonymous/8f61a8733ed7fa41c4ea/raw/1e90fd2741bb6310582e3822f59927eb535f6c73/quotes.json',
  model: QuoteModel
  // parse: function(data) {
  //   return data.books;
  // }
});

var Quotes = new QuotesCollection;

var quote1 = new QuoteModel({
  quote: 'hello,'
  context: 'here',
  source: 'now',
  theme: 'forever'
});

Quotes.add(quote1);

Quotes.each(function(quote) {
   console.log(quote.get('quote'))
  $('#table-body').append(
	'<tr>' +
	  '<td>' + quote.get('quote') + '</td>' +
	  '<td>' + quote.get('context') + '</td>' +
	  '<td>' + quote.get('source') + '</td>' +
	  '<td>' + quote.get('theme') + '</td>' +
	'</tr>'
  );
});

QuoteView = Backbone.View.extend({
	el: '#table-body',
	initialize: function(){

	},
	render: function(){

	}

});







