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
  	model: QuoteModel
});


InputView = Backbone.View.extend({
	el: '#search-div',
	initialize: function(){
		this.render();
	},
	template: 
		"<h2>Search quotes</h2> \
		<input type='text' placeholder='search'> \
        <button>Search quotes</button> \
        <ul id='quote-list'></ul>",
    render: function() {
        this.$el.html(this.template);
        return this;
    }

})


QuotesView = Backbone.View.extend({
	el: '#table-body',
	initialize: function(){
		this.fetchQuotes();
		this.renderQuotes(); 
	},
	fetchQuotes: function(){
		var quotes = new QuotesCollection({model: QuoteModel});
		var self = this;
		quotes.fetch({success: function(){
			self.renderQuotes(quotes)
			}
		});
	},
	renderQuotes: function(quotes){
		console.log(quotes, "quotes", quotes.length)
		// var newModels = []	
		// var newObj = {newModels}
		// for (i = 0; i < 15; i++){
		// 	newModels.push(quotes.models[i])
		// }
		//push the first fifteen items into this new object and render that
		this.$el.html('');
		new InputView;
		new QuoteView;
		var counter = 1;
		var keepGoing = true;
		quotes.each(function(model) {
			if(counter > 15){
				keepGoing = false;
			}
			if(keepGoing){
				var quote = new QuoteView({
				model: model
			})
			this.$el.append(quote.render().el);
			counter += 1
			}
		}.bind(this));
	return this;
	}
});


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


