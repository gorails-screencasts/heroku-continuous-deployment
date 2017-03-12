document.addEventListener("turbolinks:load", function() {
  var checkboxes = document.querySelectorAll('input[type="checkbox"]');
  for (var i = 0, element; element = checkboxes[i]; i++) {
    element.onchange=changeEventHandler;
  }
},false);

function changeEventHandler(event) {
  this.form.submit();
}
