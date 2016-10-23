 $(document).ready(function(){
    $('#present').mouseenter(function(){
        $(this).fadeIn('fast',1);
    }).mouseleave(function(){
        $(this).fadeIn('fast',0.5);
    });
});