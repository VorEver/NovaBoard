{{ partial('partials/header') }}

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Login
            </div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Username</label>
                        <div class="col-md-8">
                            <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Password</label>
                        <div class="col-md-8">
                            <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="form-control input-md">
                            <a href="{{ url('forgot_password') }}">
                                <span class="text-danger">Forgot Password?</span>
                            </a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="checkboxes">Remember Me</label>
                        <div class="col-md-4">
                            <div class="checkbox">
                                <label for="checkboxes-0">
                                    <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1" />
                                        <span class="hidden">Yes</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton">
                            <span class="hidden">Submit</span>
                        </label>
                        <div class="col-md-4">
                            <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
                        </div>
                    </div>

                    </fieldset>
                </form>

            </div>
        </div>
    </div>
</div>
{{ partial('partials/footer') }}