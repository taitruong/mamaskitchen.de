---
layout: landing-page
---
<section id="two" class="wrapper style2">
 <header class="major">
  <a class="button special" href="{{ site.baseurl }}/blog.html">Beiträge</a>
  <div>"kochen, essen, teilen", lautet mein Motto. Die vietnamesische Küche ist von Natur aus eine Fusion-Küche mit Einflüssen aus Thailand, Laos, China, Kambodscha und jahrzehntelanger Prägung aus Frankreich und Japan. Hinzu kommt mein kochbegeisterter Freundeskreis aus Belgien, Portugal, dem Baden-Ländle und Kaiserstuhl...</div>
 </header>
</section>
<section id="main" class="wrapper style1">
    {% for post in site.posts %}
        <div class="wrapper {% cycle 'style1', 'style2' %}">
            <header class="major">
                <h3>{{post.date | date: "%b %-d, %Y" }}</h3>
                <h2><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h2>
            </header>
            <section class="container">
                {{ post.excerpt }}
            </section>
            <section class="special">
                <ul class="actions">
                    <li><a href="{{ site.baseurl }}{{ post.url }}" class="button {% cycle '', 'alt'%}">Zur Küche...</a></li>
                </ul>
            </section>
        </div>
    {% endfor %}
</section>
