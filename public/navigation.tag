<navigation>
  <div class="containerV">
    <div class="containerH">
      <div>
        test architecture
      </div>
    </div>
    <div class="containerH">
      <div id="buttonChangeText" onclick={changeTextClick}>
        cliquer pour changer le texte
      </div>
      <div>
        {message}
      </div>
    </div>
    <div  class="containerH">
      <div each={campaigns} class="campaign">
        {title}
      </div>
    </div>
  </div>
  <script>

    this.on('mount', function () {
      RiotControl.trigger('message_init');
      RiotControl.trigger('campaigns_init');
      this.update();
    });

    this.changeTextClick = function (e) {
      RiotControl.trigger('message_change');
    }

    RiotControl.on('message_changed', function (text) {
      this.message = text;
    }.bind(this));

    RiotControl.on('campaigns_changed', function (data) {
      this.campaigns = data;
    }.bind(this))
  </script>
  <style>
    #buttonChangeText {
      color: white;
      background-color: green;
      padding: 5px;
      cursor: pointer;
    }
    .campaign{
      border: solid;
      padding: 10px;
    }

  </style>
</navigation>
