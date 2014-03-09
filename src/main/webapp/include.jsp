<ul class="slimmenu">
    <li>
        <a href="#">Online Cryptography</a>
        <ul>

            <li><a href="MessageDigest.jsp">Calculate MD5 </a></li>
            <li><a href="Base64Functions.jsp">Base64 Encode/Decode</a></li>
            <li><a href="CipherFunctions.jsp">Encryption/Decryption </a></li>
        </ul>
    </li>
    <li><a href="NetworkFunctions.jsp">Online NetworkTool</a></li>
    <li>
        <a href="#">Online String Functions</a>
        <ul>
            <li>
                <a href="StringFunctions.jsp">String Functions</a>

            </li>
            <li>
                <a href="HexToStringFunctions.jsp">HexToString/StringToHex Conversion</a>

            </li>
        </ul>
    </li>
    <li><a href="CommandFunctions.jsp">Online Command Line tool</a></li>
     <li><a href="UrlEncodeDecodeFunctions.jsp">Online Codecs</a>
             <ul>
            <li>
                <a href="UrlEncodeDecodeFunctions.jsp">URL Encoders/Decoders</a>

            </li>
            <li>
                <a href="HexToStringFunctions.jsp">HexToString/StringToHex Conversion</a>
            </li>
             <li>
                <a href="Base64Functions.jsp">Base64 Encode/Decode</a>
            </li>
        </ul></li>
</ul>

<script src="js/jquery.slimmenu.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script>
$('ul.slimmenu').slimmenu(
{
    resizeWidth: '800',
    collapserTitle: 'Main Menu',
    easingEffect:'easeInOutQuint',
    animSpeed:'medium',
    indentChildren: true,
    childrenIndenter: '&raquo;'
});
</script>
<br>
<div><h1>The Online Tool for Online People</h1></div>
<br>
<%@ include file="addStatsCounter.jsp" %> 