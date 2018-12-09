import "bootstrap";

const coll = document.getElementsByClassName("collapsible");
let i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");

    let content = this.nextElementSibling;
    if (content.style.maxHeight) {
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    }
  });
}

const coll_description = document.getElementsByClassName("collapsible-description");
let j = 0;

for (j = 0; j < coll_description.length; j++) {
  console.log(coll_description[j])
  coll_description[j].addEventListener("click", function() {
    this.classList.toggle("active-description");

    let content = this.nextElementSibling;
    if (content.style.maxHeight) {
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + 'px';
    }
  });
}