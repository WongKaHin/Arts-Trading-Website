//總計
var btntt=document.querySelector('#total');

function totalprice(){
	var bd=document.getElementsByClassName('product').length;
    var tb=document.getElementById('list');
    var money=0;
    for(i=1;i<=bd;i++){
        var np=tb.rows[i].cells[4].innerHTML; //找到小計(表格的第i列第4行)
        money+=Number(np);
    }
    window.alert("總計"+money+"元");
 
}

// 刪除按鈕
function rm(obj){
    var table=obj.parentNode.parentNode.parentNode; //btn上td上tr上table
    var tr=obj.parentNode.parentNode;
    table.removeChild(tr);
}

 
  

