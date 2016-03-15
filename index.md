---
layout: default
---
{% assign content = site.data.resume %}

{: .section .experience }
## Experience
{% for work in content.works %}
{: .work }
* 	### {{ work.company }} 
	{: .company }

	{: .date }
	{{ work.startDate }} - {{ work.endDate }}

	{: .summary }
	{{ work.summary }}

	{% for highlight in work.highlights %}
	{: .highlight }
	* {{ highlight }}
	{% endfor %}
	### Awards
	{% for award in work.awards %}
	{: .award }
	* **{{ award.title }} ({{ award.date }})** - {{ award.summary }}
	{% endfor %}
{% endfor %}

{: .section }
## Education

{: .table }
Course (Stream)/Examination | Institution/University | Year of Passing | Performance 
--- | --- | --- | ---{% for education in content.education %}
{{ education.studyType }} {{ education.area }} | {{ education.institution }} | {% if education.startDate != "" %} {{education.startDate}} - {{education.endDate}} {% else %} {{education.endDate}} {% endif %} | {{ education.score }}{% endfor %}

{: .section }
## Internships
{% for internship in content.internship %}
{: .internship }
* 	**{{ internship.company }}** ({{  internship.location }})
	{: duration }
	{{ internship.startDate }} - {{ internship.endDate }}
	{: summary}
	{{ internship.summary }}

	{% for highlight in internship.highlights %}
	* {{ highlight }}
	{% endfor %}
{% endfor %}

{: .section }
## Publications
{% for publication in content.publications %}
* **{{ publication.name }}** ({{  publication.releaseDate }}) [<i class="fa fa-link"></i>]({{publication.website}}){: .publication-link }
	<div class="publication-details">
	{: publisher }
	{{ publication.publisher }}
	{: summary}
	{{ publication.summary }}
	</div>{% endfor %}
{: .publication .accordion }

{% for section in content.sections %}
{: .section }
## {{ section.title }}
{: .section-items }
{% for item in section.items %}
{% if item.title %}
* **{{ item.title }}** ({{ item.date }})
 {: summary}
 {{ item.summary }}
{% else %}
* {{ item }}
{% endif %}
{% endfor %}
{% endfor %}


{: .section }
## Skills
{% for skill in content.skills %}
{: .skill }
* 	**{{ skill.name }}**
	{% for keyword in skill.keywords %}
	* {{ keyword }}
	{% endfor %}
{% endfor %}

{: .section }
## Interests
{% for interest in content.interests %}
{: .interest }
* {{ interest }}
{% endfor %}

### Basics
{: .basics }
* <i class="fa fa-envelope"></i> {{ content.basics.email }}
* <i class="fa fa-mobile"></i> {{ content.basics.phone }}
* <i class="fa fa-globe"></i> [{{ content.basics.website }}]({{ content.basics.website }})
* <i class="fa fa-map-marker"></i> {{ content.basics.location.city}}, {{ content.basics.location.state}} - {{ content.basics.location.country}}


### Profiles
{: .profiles }
{% for profile in content.basics.profiles %}
* <i class="fa fa-{{profile.network}}"></i> [{{ profile.username }}]({{profile.url}})
{% endfor %}