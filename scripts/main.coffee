---
---

acc = document.querySelectorAll(".accordion > li")

for i in [0 ... acc.length]
	acc[i].onclick = -> 
    this.classList.toggle("active");
    for j in [0 ... this.childNodes.length]
      if this.childNodes[j].classList && this.childNodes[j].classList.contains("publication-details")
        this.childNodes[j].classList.toggle("show");
