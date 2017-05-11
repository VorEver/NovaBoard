{{ partial('partials/header') }}
{{ flash.output() }}
<div class="row">
    <div class="col-md-12">
        {% for category in boardData %}
        <div class="panel panel-default">
            <div class="panel-heading">
                {{ category.name }}
            </div>
            <div class="panel-body">
                {% for forum in category.forums %}
                <div class="row">
                    <div class="col-md-6">
                        <a href="{{ url('forums') }}/{{forum.slug}}"><h4>{{forum.name}}</h4></a>
                        <p>{{ forum.description }}</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <h5>Posts: </h5>
                        {{ forum.post_count }}
                    </div>
                    <div class="col-md-3 text-center">
                       <span>No Posts Yet</span>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
        {% endfor %}
    </div>
</div>
{{ partial('partials/footer') }}