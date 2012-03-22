(function() {

  App.showsController = Em.ArrayProxy.create({
    content: [],
    add: function(name) {
      return this.pushObject(Em.Object.create({
        name: name
      }));
    },
    init: function() {
      this._super();
      this.add('Fringe');
      this.add('Game of Thrones');
      return this.add('NCIS');
    }
  });

  App.ShowsView = Em.View.extend({
    templateName: 'shows'
  });

}).call(this);
