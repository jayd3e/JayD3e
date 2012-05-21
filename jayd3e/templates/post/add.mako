<%inherit file="../layouts/base.mako"/>

<%def name="body()">
    <form class="horiz-form" method="post">
        <div class="input_group">
            <label for="title">Title</label>
            <div class="inputs">
                <input name="title" class="post_title" id="title" type="text" tabindex="1"></input>
            </div>
        </div>
        
        <div class="input_group">
            <label for="body">Body</label>
            <div class="inputs">
                <textarea tabindex="2" cols="95" rows="20" name="body" id="body" class="post_body" tabindex="2"></textarea>
            </div>
        </div>
        
        <div class="form_actions">
            <input type="submit" value="Submit"></input>
        </div>
    </form>
</%def>
