from pyramid.config import Configurator
from pyramid.exceptions import NotFound
from jayd3e.models.site import SiteModel
from jayd3e.handlers.site import SiteHandler
from jayd3e.handlers.blog import BlogHandler
from jayd3e.handlers.doc import DocHandler
from jayd3e.handlers.post import PostHandler
from jayd3e.handlers.exceptions import notFound

def main(global_config, **settings):
    '''This function configures the application and returns a WSGI application'''

    settings = dict(settings)
    config = Configurator(settings=settings, root_factory=SiteModel)
    config.add_static_view(name='static', path='jayd3e:static')

    #Handlers
    config.include('pyramid_handlers')
    #Handler Root Routes
    config.add_handler('site_root', '/', handler=SiteHandler, action='index')
    config.add_handler('blog_root', '/blog', handler=BlogHandler, action='index')
    config.add_handler('doc_root', '/doc', handler=DocHandler, action='index')
    config.add_handler('post_root', '/post', handler=PostHandler, action='index')

    #Handler Action Routes
    config.add_handler('site_action', '/{action}', handler=SiteHandler)
    config.add_handler('blog_action', '/blog/{action}', handler=BlogHandler)
    config.add_handler('doc_action', '/doc/{action}', handler=DocHandler)
    config.add_handler('post_action', '/post/{action}', handler=PostHandler)

    #Views
    config.add_view(notFound, context=NotFound, renderer='exceptions/not_found.mako')
    
    config.scan(__name__)
    return config.make_wsgi_app()

if __name__ == '__main__':
    from paste.httpserver import serve
    serve(make_app(), host="0.0.0.0", port="5432")
