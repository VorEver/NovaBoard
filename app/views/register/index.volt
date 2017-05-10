{{ partial('partials/header') }}

<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Create a New Account
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
                            <input id="password" name="password" type="password" placeholder="Enter your password..." class="form-control input-md">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="confirm-password">Confirm Password</label>
                        <div class="col-md-8">
                            <input id="confirm-password" name="confirm-password" type="password" placeholder="Enter your password again..." class="form-control input-md">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="checkboxes"></label>
                        <div class="col-md-8">
                            <div class="checkbox text-center">
                                <label for="agree-terms">
                                    <input type="checkbox" name="agree-terms" id="agree-terms" />
                                        I agree to the terms of use and privacy policy of &lt;Website Here&gt;
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