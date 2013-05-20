function checkAll(name)
{
    boxes=document.getElementsByName(name);
    for (var i = 0; i < boxes.length; i++)
        boxes[i].checked = true ;
    return false;
}

function uncheckAll(name)
{
    boxes=document.getElementsByName(name);
    for (var i = 0; i < boxes.length; i++)
        boxes[i].checked = false ;
    return false;
}

function checkSome(name, obj)
{
    var selected_values = document.getElementById('watcher_multiple_' + obj).options[document.getElementById('watcher_multiple_' + obj).selectedIndex].value.split(',');
    boxes=document.getElementsByName(name);
    for (var i = 0; i < boxes.length; i++){
        for (var j = 0; j < selected_values.length; j++){
            if(boxes[i].value == selected_values[j]) {
                boxes[i].checked = true ;
                break;
            }
        }
    }
    return false;
}

function uncheckSome(name, obj)
{
    var selected_values=document.getElementById('watcher_multiple_' + obj).options[document.getElementById('watcher_multiple_' + obj).selectedIndex].value.split(',');
    boxes=document.getElementsByName(name);
    for (var i = 0; i < boxes.length; i++){
        for (var j = 0; j < selected_values.length; j++){
            if(boxes[i].value == selected_values[j]) {
                boxes[i].checked = false ;
                break;
            }
        }
    }
    return false;
}
