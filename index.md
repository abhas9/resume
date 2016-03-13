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
