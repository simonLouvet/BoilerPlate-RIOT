function MainStore() {
  riot.observable(this) // Riot provides our event emitter.

  this.on('message_init', function() {
    this.message='hello World';
    this.trigger('message_changed',  this.message);
  });

  this.on('message_change', function() {
    this.message='bienvenue dan l\'application du grand défi';
    this.trigger('message_changed',  this.message);
  });

  this.on('campaigns_init', function() {
    this.campains=[{title:'transition energétique'},{title:'epargner le climat'}];
    this.trigger('campaigns_changed',  this.campains);
  });

}
