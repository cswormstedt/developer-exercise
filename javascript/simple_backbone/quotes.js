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
  	url: 'https://gist.githubusercontent.com/anonymous/8f61a8733ed7fa41c4ea/raw/1e90fd2741bb6310582e3822f59927eb535f6c73/quotes.json',
  	model: QuoteModel,
 	parse: function(data) {
	    return data;
	}
});



InputView = Backbone.View.extend({
	el: '#search-div',
	initialize: function(){
		this.render();
	},
	template: 
		"<h2>Search quotes</h2> \
		<input type='text' placeholder='search'> \
        <button>Search movie</button> \
        <ul id='quote-list'></ul>",
    render: function() {
        this.$el.html(this.template);
        return this;
    }

})


QuotesView = Backbone.View.extend({
	el: '#table-body',
	initialize: function(){
		this.randFunct();
		this.renderQuotes();
	},
	randFunct: function(){
		console.log("calling rand")
		var quotes = new QuotesCollection({model: QuoteModel});
		var self = this;
		quotes.fetch({success: function(){
			self.renderQuotes(quotes, "quotes")
			}
		});
	},
	renderQuotes: function(quotes){
		console.log(quotes, "quotes quotes")
		this.$el.html('');
		new InputView;
		new QuoteView;
		quotes.each(function(model) {
			var quote = new QuoteView({
				model: model
			})
			this.$el.append(quote.render().el);
		}.bind(this));
		return this;
	}

});

// var Quotes = new QuotesCollection({model: QuoteModel});

var Quotes = new QuotesCollection;

var quote1 = new QuoteModel({
	quote: 'hello',
	context: 'here',
	source: 'now',
	theme: 'forever'
});

Quotes.add(quote1);

QuoteView = Backbone.View.extend({
	tagName: 'tr',
	template: _.template($('#quote-template').html()),
	render: function() {
	    this.$el.html(this.template(this.model.attributes));
	    return this;
	}
})

var app = new QuotesView;

var QuoteApp = {
    Views: {},
    Models: {},
    Collections: {}
}


