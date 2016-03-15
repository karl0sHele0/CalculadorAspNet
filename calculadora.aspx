<%--Directiva--%>
<%@ Page Language="C#" %>
<%--Codigo en linea--%>

<%--HTML para dibujar los controles en pantalla--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora ASP-Taller de Sistemas Operativos</title>
    <mata charset="UTF-8">
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="CSS/cuerpo.css">
    <link rel="stylesheet" type="text/css" href="CSS/botones.css">
</head>

<body onload="findSol()">

<div id="calculator">
    <div class="pantalla">        
        <h2 id="tablero">000,000,000</h2>
    </div>
    <div class="botonera">
        <button id="t1" class="b1"onclick="typeButton(1)">1</button>
        <button id="t2" class="b2" onclick="typeButton(2)">2</button>
        <button id="t3" class="b3" onclick="typeButton(3)">3</button><br>
        <button id="t4" class="b4" onclick="typeButton(4)">4</button>
        <button id="t5" class="b5" onclick="typeButton(5)">5</button>
        <button id="t6" class="b6" onclick="typeButton(6)">6</button><br>
        <button id="t7" class="b7"onclick="typeButton(7)">7</button>
        <button id="t8" class="b8"onclick="typeButton(8)">8</button>
        <button id="t9" class="b9"onclick="typeButton(9)">9</button><br>
        <button id="t0" class="b0"onclick="typeButton(0)">0</button>
        <button id="tPoint" class="bP" onclick="typePoint('.')">.</button>
        <button id="tSuma" class="bS" onclick="typeButton('+')">+</button><br>
        <button id="tResta" class="bR" onclick="typeButton('-')">-</button>        
        <button id="tMulti" class="bM" onclick="typeButton('x')">x</button>
        <button id="tDivi" class="bD" onclick="typeButton('/')">/</button><br>
        <button id="tCancel" class="bC" onclick="cancel()">c</button>
    </div>
        <form id="form1" runat="server">
            <!-- #Include virtual="/ASP/calculadora.ascx" -->
            <!-- #Include virtual="/ASP/pila.ascx" -->
            <input type="hidden" id="tOculto" name="tOculto" value="" runat="server" />
            <asp:Button ID="btnAceptar" class="bIgual" runat="server" Text="=" onclick="btnIgual_Click"/></asp:Button>
        </form>
</div>
<div class="pie">
    <h3>Calculadora en ASP.NET<br>Heleodoro Medrano</h3>
</div>

<script type="text/javascript" src="JS/calculadora.js"></script>
</body>
</html>