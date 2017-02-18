var app = Elm.Main.fullscreen();

app.ports.triggerPlay.subscribe(function() {
  var audioPlayer = document.getElementById("audio-player");

  console.log("ehhyy");
  audioPlayer.currentTime = 0;
  audioPlayer.start();
})