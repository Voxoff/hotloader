document.addEventListener("DOMContentLoaded", function() {
  (function() {
    App.refresh = App.cable.subscriptions.create("RefreshChannel", {
      received: function(data) {
        location.reload();
      }
    });

  }).call(this);  
})
