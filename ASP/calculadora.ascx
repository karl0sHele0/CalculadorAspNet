<script runat="server">
private Double[] valores;
private String[] operadores;

public void btnIgual_Click(object sender, EventArgs e)
{
    String operacion=Request.Form["tOculto"];
    if(operacion.Substring(0,1)=="R")
            operacion=operacion.Substring(1);
        
    int numParam=countParam(operacion);//Devuelve elnumero de operadores en la cadena(+,-,*,/s)

    if(sintaxVer(operacion) && numParam>0){
        valores=new Double[numParam+1];
        operadores=new String[valores.Length-1];
        fillArray(operacion);
        tOculto.Attributes["Value"]="R"+solucionador();
    }
    else
         tOculto.Attributes["Value"]="R"+operacion;
}

public int countParam(String param){
    int val=0;
    for(int i=0;i<param.Length;i++)
        if(param.Substring(i,1).Equals("+") || param.Substring(i,1).Equals("x") || param.Substring(i,1).Equals("-") || param.Substring(i,1).Equals("/"))
            val++;

    return val;
}

public void fillArray(String param){
    String aux="";
    int cont =0;
    for(int i=0;i<param.Length;i++){
        if(param.Substring(i,1).Equals("+") || param.Substring(i,1).Equals("-") || param.Substring(i,1).Equals("x") || param.Substring(i,1).Equals("/") ){
            valores[cont]=Convert.ToDouble(aux);
            operadores[cont]=param.Substring(i,1);
            aux="";
            cont++;
            i++;
        }        
        aux+=param.Substring(i,1);
    }        
    valores[cont]=Convert.ToDouble(aux);
}

public double solucionador(){
    double solucion=valores[0];
    
        for(int i=0;i<valores.Length-1;i++){
            switch(operadores[i]){
                case "+":
                    solucion+=valores[i+1];
                break;
                case "-":
                     solucion-=valores[i+1];
                break;
                case "x":
                    solucion = solucion*valores[i+1];
                break;
                case "/":
                    solucion= solucion/valores[i+1];
                break;
            }
        }
    return solucion;
}

public Boolean sintaxVer(String param){
    int contValores=0,contOpe=0;
    for(int i=0;i<param.Length;i++){
        if(param.Substring(i,1).Equals("+") || param.Substring(i,1).Equals("x") || param.Substring(i,1).Equals("/") || param.Substring(i,1).Equals("-")){
            contOpe++;
            if(contValores==0)
                contValores++;
            else
                return false;
        }
        else 
            contValores=0;
    }
    return contOpe>0;
}  

</script>