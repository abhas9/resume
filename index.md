---
layout: default
---
{% assign content = site.data.resume %}
{: .name }
# {{content.basics.name}}

{: .title }
### {{ content.basics.title }}

{: .summary }
{{ content.basics.summary }}

{: .section }
## Experience
{% for work in content.works %}
{: .work }
* 	{{ work.company }} 
	
	{{ work.startDate }} - {{ work.endDate }}

	{{ work.summary }}

	{% for highlight in work.highlights %}
	* {{ highlight }}
	{% endfor %}
	### Awards
	{% for award in work.awards %}
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
{: .publication }
* 	**{{ publication.name }}** ({{  publication.releaseDate }})
	{: .link }
	[Link]({{publication.website}})
	{: publisher }
	{{ publication.publisher }}
	{: summary}
	{{ publication.summary }}
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