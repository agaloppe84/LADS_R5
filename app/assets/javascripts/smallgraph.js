(function($) {
  $.fn.counter = function(options) {
    var settings = $.extend({
      start: 0,
      end: 100,
      easing: 'swing',

      complete: ''
    }, options);

    var thisElement = $(this);

    $({
      count: settings.start
    }).animate({
      count: settings.end
    }, {
      duration: settings.duration,
      easing: settings.easing,
      step: function() {
        var mathCount = Math.ceil(this.count);
        thisElement.text(mathCount);
      },
      complete: settings.complete
    });
  };

}(jQuery));


$(document).ready(function() {
  $('.score-graph-sm').each(function() {
    $(this).find('.score-graph-bar-sm').animate({
      width: $(this).attr('data-percent')
    }, 2000);


    var tempoPercent = $(this).attr('data-percent');
    var tempoPercentToNumber = parseFloat(tempoPercent);
    console.log(tempoPercentToNumber);
    if (tempoPercentToNumber <= 100 && tempoPercentToNumber >= 90) {
      $(this).css( "background-color", "#68ABEF" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#68ABEF" );
    } else if (tempoPercentToNumber >= 80 && tempoPercentToNumber < 90) {
      $(this).css( "background-color", "#68CAEF" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#68CAEF" );
    } else if (tempoPercentToNumber >= 70 && tempoPercentToNumber < 80) {
      $(this).css( "background-color", "#68EFDC" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#68EFDC" );
    } else if (tempoPercentToNumber >= 60 && tempoPercentToNumber < 70) {
      $(this).css( "background-color", "#68EF9D" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#68EF9D" );
    } else if (tempoPercentToNumber >= 50 && tempoPercentToNumber < 60) {
      $(this).css( "background-color", "#C2EF68" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#C2EF68" );
    } else if (tempoPercentToNumber >= 40 && tempoPercentToNumber < 50) {
      $(this).css( "background-color", "#EBE358" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#EBE358" );
    } else if (tempoPercentToNumber >= 30 && tempoPercentToNumber < 40) {
      $(this).css( "background-color", "#FBCB50" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#FBCB50" );
    } else if (tempoPercentToNumber >= 20 && tempoPercentToNumber < 30) {
      $(this).css( "background-color", "#FB9550" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#FB9550" );
    } else if (tempoPercentToNumber >= 10 && tempoPercentToNumber < 20) {
      $(this).css( "background-color", "#FB5050" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#FB5050" );
    } else if (tempoPercentToNumber >= 0 && tempoPercentToNumber < 10) {
      $(this).css( "background-color", "#FB5050" );
      $(this).find('.score-graph-indicator-sm').css( "background-color", "#FB5050" );
    }




  });
});

$(document).ready(function() {
  $('.score-counter-sm').each(function() {
    $(this).counter({
      start: 0,
      end: $(this).attr('data-number'),
      duration: 2000
    });
    var tempoNum = $(this).attr('data-number');
    var tempoNumber = parseFloat(tempoNum);
    console.log(tempoNumber);

    if (tempoNumber <= 100 && tempoNumber >= 90) {
      $(this).css( "color", "#FB5050" );
    } else if (tempoNumber > 80 && tempoNumber < 90) {
      $(this).css( "color", "#FB5050" );
    } else if (tempoNumber > 70 && tempoNumber <= 80) {
      $(this).css( "color", "#FB9550" );
    } else if (tempoNumber > 60 && tempoNumber <= 70) {
      $(this).css( "color", "#FBCB50" );
    } else if (tempoNumber > 50 && tempoNumber <= 60) {
      $(this).css( "color", "#EBE358" );
    } else if (tempoNumber > 40 && tempoNumber <= 50) {
      $(this).css( "color", "#C2EF68" );
    } else if (tempoNumber > 30 && tempoNumber <= 40) {
      $(this).css( "color", "#68EF9D" );
    } else if (tempoNumber > 20 && tempoNumber <= 30) {
      $(this).css( "color", "#68EFDC" );
    } else if (tempoNumber > 10 && tempoNumber <= 20) {
      $(this).css( "color", "#68CAEF" );
    } else if (tempoNumber >= 0 && tempoNumber <= 10) {
      $(this).css( "color", "#68ABEF" );
    }




  });
});



$('.quotgraph-trigger-january').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-january').hide();
  $('.quotgraph-receiver-january').show();
});


$('.quotgraph-trigger-february').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-february').hide();
  $('.quotgraph-receiver-february').show();
});


$('.quotgraph-trigger-march').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-march').hide();
  $('.quotgraph-receiver-march').show();
});


$('.quotgraph-trigger-april').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-april').hide();
  $('.quotgraph-receiver-april').show();
});


$('.quotgraph-trigger-may').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-may').hide();
  $('.quotgraph-receiver-may').show();
});


$('.quotgraph-trigger-june').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-june').hide();
  $('.quotgraph-receiver-june').show();
});


$('.quotgraph-trigger-july').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-july').hide();
  $('.quotgraph-receiver-july').show();
});


$('.quotgraph-trigger-august').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-august').hide();
  $('.quotgraph-receiver-august').show();
});


$('.quotgraph-trigger-september').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-september').hide();
  $('.quotgraph-receiver-september').show();
});


$('.quotgraph-trigger-october').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-october').hide();
  $('.quotgraph-receiver-october').show();
});


$('.quotgraph-trigger-november').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-november').hide();
  $('.quotgraph-receiver-november').show();
});

$('.quotgraph-trigger-december').click(function() {
  $('.analytics-bottom-right').not('quotgraph-receiver-december').hide();
  $('.quotgraph-receiver-december').show();
});




























