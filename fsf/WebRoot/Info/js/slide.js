var timer = null;
var offset = 5000;
var index = 0;
var $j = jQuery.noConflict();
//´óÍ¼½»ÌæÂÖ»»
function slideImage(i){
    var id = 'image_'+ target[i];
    $j('#'+ id)
        .animate({opacity: 0.85}, 800, function(){
            $j(this).find('.word').animate({height: 'show'}, 'slow');
        }).show()
        .siblings(':visible')
        .find('.word').animate({height: 'hide'},'fast',function(){
            $j(this).parent().animate({opacity: 0}, 800).hide();
        });
}
//bind thumb a
function hookThumb(){    
    $j('#thumbs li a')
        .bind('click', function(){
            if (timer) {
                clearTimeout(timer);
            }                
            var id = this.id;            
            index = getIndex(id.substr(6));
            rechange(index);
            slideImage(index); 
            timer = window.setTimeout(auto, offset);  
            this.blur();            
            return false;
        });
}
//bind next/prev img
function hookBtn(){
    $j('#thumbs li img').filter('#play_prev,#play_next')
        .bind('click', function(){
            if (timer){
                clearTimeout(timer);
            }
            var id = this.id;
            if (id == 'play_prev') {
                index--;
                if (index < 0) index = 6;
            }else{
                index++;
                if (index > 6) index = 0;
            }
            rechange(index);
            slideImage(index);
            timer = window.setTimeout(auto, offset);
        });
}
//get index
function getIndex(v){
    for(var i=0; i < target.length; i++){
        if (target[i] == v) return i;
    }
}
function rechange(loop){
    var id = 'thumb_'+ target[loop];
    $j('#thumbs li a.current').removeClass('current');
    $j('#'+ id).addClass('current');
}
function auto(){
    index++;
    if (index > 4){
        index = 0;
    }
    rechange(index);
    slideImage(index);
    timer = window.setTimeout(auto, offset);
}
$j(function(){    
    //change opacity
    $j('div.word').css({opacity: 0.85});
    auto();  
    hookThumb(); 
    hookBtn();
    
});