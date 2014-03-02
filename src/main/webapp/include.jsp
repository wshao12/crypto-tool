<ul class="slimmenu">
    <li>
        <a href="#">Online Cryptograhy</a>
        <ul>
            <li>
                <a href="MessageDigest.jsp">Calculate MAC</a>
            </li>
            <li><a href="MessageDigest.jsp">Calculate MD5 </a></li>
        </ul>
    </li>
    <li><a href="NetworkFunctions.jsp">Online NetworkTool</a></li>
    <li>
        <a href="#">Online String Functions</a>
        <ul>
            <li>
                <a href="StringFunctions.jsp">String Functions</a>

            </li>
        </ul>
    </li>
    <li><a href="CommandFunctions.jsp">Online Command Line tool</a></li>
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