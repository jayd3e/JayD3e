<%namespace name="header" file="header.mako"/>
<%namespace name="footer" file="footer.mako"/>
<!-- base.mako --> 
<!DOCTYPE html>
<html>
    <head>
        <title>${title}</title>
        <script language="javascript" type="text/javascript" src="/static/js/jquery.js"></script>
        <script src="http://yandex.st/highlightjs/6.2/highlight.min.js"></script>
        <script language="javascript" type="text/javascript" src="/static/js/run.js"></script>
        <script language="javascript" type="text/javascript" src="/static/js/collapseExpand.js"></script>

        <link rel="stylesheet" type="text/css" href="/static/slicknasty/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css">
    </head>
    <body>
        <div class="top">
            <div class="container">
                <div class="header">
            	   ${header.header(here)}
                </div>
            </div>
        </div>
        <div class="main">
            <div class="container">
                <div class="page">
            	   ${self.body()}
                </div>
            </div>
        </div>
        <div class="footer">
            ${footer.footer()}
        </div>
    </body>
</html>
