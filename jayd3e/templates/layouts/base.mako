<%namespace name="header" file="header.mako"/>
<%namespace name="footer" file="footer.mako"/>
<!-- base.mako --> 
<!DOCTYPE html>
<html>
    <head>
        <title>${title}</title>
        <link rel="stylesheet" type="text/css" href="/static/css/reset.css" />
        <link rel="stylesheet" type="text/css" href="/static/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/static/css/type.css" />
    </head>
    <body>
        <div class="header">
        	<div class="centered">
            	${header.header(here)}
			</div>
        </div>
        <div class="body">
        	<div class="centered">
            	${self.body()}
            </div>
        </div>
        <div class="footer">
            ${footer.footer()}
        </div>
    </body>
</html>
