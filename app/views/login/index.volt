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
                        <label class="col-md-4 control-label" for="username">Username</label>
                        <div class="col-md-8">
                            <input id="username" name="username" type="text" placeholder="Enter your username or email..." class="form-control input-md">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="password">Password</label>
                        <div class="col-md-8">
                            <input id="password" name="password" type="text" placeholder="Enter your password..." class="form-control input-md">
                            <a href="{{ url('forgot_password') }}">
                                <br />
                                <p class="text-danger">Forgot Password?</p>
                            </a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="checkboxes">Remember Me</label>
                        <div class="col-md-4">
                            <div class="checkbox">
                                <label for="checkboxes-0">
                                    <input type="checkbox" name="remember-me" id="remember-me" />
                                        <span class="hidden">Yes</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="submit">
                            <span class="hidden">Submit</span>
                        </label>
                        <div class="col-md-4">
                            <button id="submit" name="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>

                    </fieldset>
                </form>

            </div>
        </div>
    </div>
</div>
{{ partial('partials/footer') }}