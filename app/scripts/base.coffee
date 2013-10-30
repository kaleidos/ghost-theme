#requirejs
require.config
    paths: {
        underscore: 'libs/underscore',
        backbone: 'libs/backbone'
    },
    shim: {
        'backbone': ['underscore']
    }

require(['underscore','backbone'], ->

    class Model extends Backbone.Model
    class Collection extends Backbone.Collection
    class View extends Backbone.View
    class Router extends Backbone.Router

    @Model = Model
    @Collection = Collection
    @Router = Router
    @View = View

    class App extends View
        el: $('body')
        models: {}
        collections: {}
        views: {}
        decorators: {}
        # Private objects
        _models: {}
        _collections: {}
        _views: {}
        console.log 'backbone loaded'

    class CommonView extends View

        el: $('body')

        initialize: ->
            console.log 'Welcome to front-o-matic - kaleidos'

    @app = new App()
    @commonView = new CommonView()

)