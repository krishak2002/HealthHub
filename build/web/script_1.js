// grab the UI elements to work with

const speakEl = document.getElementById('speak');

// click handler
//speakEl.addEventListener('click', speakText);

function speakText() {
    const textEl = document.getElementById('text').text;
    alert(textEl);
  // stop any speaking in progress
  window.speechSynthesis.cancel();

  // speak text
  const text = textEl.value;
  const utterance = new SpeechSynthesisUtterance(text);
  window.speechSynthesis.speak(utterance);
}