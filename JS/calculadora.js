 var Tablero=document.getElementById('tablero');    
    var count=0;
    function typeButton(btn){
        if(count==0 && Tablero.innerHTML=="000,000,000")
            Tablero.innerHTML="";       

        if(count<15){
            Tablero.innerHTML+=btn;
            tOculto.value=Tablero.innerHTML;
        }
        count++;
    }
    
    function typePoint(btn){
        var tOculto=document.getElementById("tOculto").value;
        tOculto=tOculto.substring(tOculto.length-1);  
        if(count==0)  //Si es el primer boton oprimido primero limpia el tablero
            tablero.innerHTML="";
        if(count<15){ 
            if(tOculto=="+" || tOculto=="-" || tOculto=="*" || tOculto=="/" || tOculto==""){
                Tablero.innerHTML+="0";
            }
            Tablero.innerHTML+=btn;

        }
        count++;
    }

    function findSol(){
        var sol=document.getElementById("tOculto");
        if(sol.value.substring(0,1)=="R"){
            Tablero.innerHTML=sol.value.substring(1);
        }
    }

    function cancel() {
        tablero.innerHTML="000,000,000";
        count=0;
    }