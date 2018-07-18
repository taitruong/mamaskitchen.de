---
layout: landing-page
---
<section id="two" class="wrapper style2">
 <header class="major">
  <div>"kochen, essen, teilen", lautet mein Motto. Die vietnamesische Küche ist von Natur aus eine Fusion-Küche mit Einflüssen aus Thailand, Laos, China, Kambodscha und jahrzehntelanger Prägung aus Frankreich und Japan. Hinzu kommt mein kochbegeisterter Freundeskreis aus Belgien, Portugal, dem Baden-Ländle und Kaiserstuhl...</div>
 </header>
</section>
<section id="main" class="wrapper style1">
  <header class="major">
    <div>
      <b>
        Je öfter ich diesen Blog lese, desto mehr finde ich Komma-Satz-Plural-Singular-Tempi-Fehler.
      </b>
    </div>
    <div>
      <b>
        Hin-und-hergerissen zwischen deutsch-perfekter-vietnamesisch-spontaner-einfach-aus-mir sprudelnder Sprach-Schreib-Gedanken-Strom.
      </b>
    </div>
    <div>
      <b>
        Ich mag es authentisch und überlasse dir die Bewertung des Rohmaterials.
      </b>
    </div>
    <div>
      <b>
        Abschmecken darfst du selber ;).
      </b>
    </div>
  </header>
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
          <li><a href="{{ site.baseurl }}{{ post.url }}" class="button {% cycle '', 'alt'%}">Weiterlesen...</a></li>
        </ul>
      </section>
    </div>
  {% endfor %}
</section>
