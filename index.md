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