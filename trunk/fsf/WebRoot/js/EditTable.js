$(document).ready(function() {   
    var tds = $(".edittable td");   
    tds.click(tdclick);   
});   
function tdclick() {   
    var td = $(this);   
    var text = td.text();   
    td.html("");    
    var input = $("<input>");   
    input.attr("value", text);   
    input.keyup(function(event) {   
        var myEvent = event || window.event;   
        var kcode = myEvent.keyCode;   
        if (kcode == 13) {   
            var inputnode = $(this);   
            var intputext = inputnode.val();   
            var tdNode = inputnode.parent();   
            tdNode.html(intputext);   
            tdNode.click(tdclick);   
        }   
    });   
    td.append(input); 
    var inputdom = input.get(0);   
    inputdom.select();   
    td.unbind("click");   
}  


