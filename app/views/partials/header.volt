<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <header>
        <div class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="#">NovaBoard</a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="{{ url('') }}">Home</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        {% if userInformation !== null %}
                        <li>
                            <a href="#">Logged in as {{ userInformation['username'] }}</a> 
                        </li>
                        <li>
                            <a href="{{ url('logout') }}">Log Out</a>
                        </li>
                        {% else %}
                        <li>
                            <a href="{{ url('login') }}">Login</a>
                        </li>
                        <li>
                            <a href="{{ url('register') }}">Register</a>
                        </li>
                        {% endif %}
                    </ul>
                </div>
            </div>
        </div>
        </header>
    <div class="container">
        
