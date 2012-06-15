$('#counter').countdown({
    stepTime: 60,
    format: 'hh:mm:ss',
    startTime: "12:32:55",
    digitImages: 6,
    digitWidth: 53,
    digitHeight: 77,
    timerEnd: function () { alert('end!!'); window.location = 'FinalScore.aspx'; },
    image: "img/digits.png"/// <reference path="img/digits.png" />

});