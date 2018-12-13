import "bootstrap";


const coll = document.getElementsByClassName("collapsible");
let i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active-coll");

    let content = this.nextElementSibling;
    if (content.style.maxHeight) {
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    }
  });
}

const coll_description = document.getElementsByClassName("collapsible-description");
let j;

for (j = 0; j < coll_description.length; j++) {
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
// toastr.options = {
    //   "closeButton": true,
    //   "debug": false,
    //   "newestOnTop": true,
    //   "progressBar": false,
    //   "positionClass": "toast-top-center",
    //   "preventDuplicates": false,
    //   "onclick": null,
    //   "showDuration": "50",
    //   "hideDuration": "1000",
    //   "timeOut": "5000",
    //   "extendedTimeOut": "1000",
    //   "showEasing": "swing",
    //   "hideEasing": "linear",
    //   "showMethod": "fadeIn",
    //   "hideMethod": "fadeOut"
    // }
