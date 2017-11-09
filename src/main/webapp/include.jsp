<header id="sidebar">
<h1>The Online Tool for <br>Online</br> People</h1>
<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-109251861-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-109251861-1');
    </script>

    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			<nav role="navigation">
			<ul>Cryptography</ul>
		    <li><a href="MessageDigest.jsp"><font size="3px">Generate Message Digest</font></a></li>
            <li><a href="CipherFunctions.jsp"><font size="3px">Symmetric Key Encrypt/Decrypt </font> </a></li>
            <li><a href="rsafunctions.jsp"><font size="3px">RSA Encryption/Decryption </font> </a></li>
            <li><a href="DHFunctions.jsp"><font size="3px">Diffie-Hellman Key Exchange</font> </a></li>
            <li><a href="PemParserFunctions.jsp"><font size="3px">PEMReader Decode Certificate </font></a></li>
            <li><a href="SelfSignCertificateFunctions.jsp"><font size="3px">Create a Self Sign Certificate </font> </a></li>
            <li><a href="JKSManagementFunctionality?invalidate=yes"><font size="3px">Easy Keystore/trustore viewer</font> </a></li>
           <li><a href="ProviderCapablitiesFunctions.jsp"><font size="3px">Get Algorithm Capabilities </font></a></li>
            <br/>
             <ul>Network Functions</ul>
              <li><a href="<%=request.getContextPath()+"/SubnetFunctions.jsp"%>"><font size="3px">IP Subnet CIDR Calculator</font></a></li>
              <li><a href="<%=request.getContextPath()+"/pingfunctions.jsp"%>"><font size="3px">Ping IPv4/Iv6 Address </font></a></li>
              <li><a href="<%=request.getContextPath()+"/curlfunctions.jsp"%>"><font size="3px">IPv6/Ipv4 Web Test DNS Query</font></a></li>
              <br/>
            <ul>String Functions</ul>
            <li><a href="UrlEncodeDecodeFunctions.jsp"><font size="3px">URL Encoders/Decoders</font></a></li>
            <li><a href="HexToStringFunctions.jsp"><font size="3px">HexToString Conversion</font></a></li>
            <li><a href="HexToStringFunctions.jsp"><font size="3px">StringToHex Conversion</font></a></li>
            <li><a href="Base64Functions.jsp"><font size="3px">Base64 Encode/Decode</font></a></li>
			<li><a href="StringFunctions.jsp"><font size="3px">Various String Functions</font></a></li></span>
			 <br/>
            <ul>Scala By Example</ul>
             <li><a href="<%=request.getContextPath()+"/TutorialFunctionality"%>"><font size="3px">100 Scala Examples</font></a></li>
                <%@ include file="payme.jsp" %>
            </nav>


<br>
<li><a href="contactus.jsp">Feature Request</a></li>

</header>

<%@ include file="addStatsCounter.jsp" %> 
