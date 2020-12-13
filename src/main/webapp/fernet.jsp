<%@page import="z.y.x.Security.fernetpojo"%>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="org.apache.http.impl.client.DefaultHttpClient" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.HttpResponse" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="z.y.x.r.LoadPropertyFileFunctionality" %>
<!DOCTYPE html>
<html>
<head>


	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "fernet encryption decryption",
  "image" : "https://8gwifi.org/images/site/fernet.png",
  "url" : "https://8gwifi.org/fernet.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2020-12-11",
  "applicationCategory" : [ "fernet encryption", "fernet cryptography", "fernet encryption online", "fernet decryption online", "fernet java" , "fernet tutorial" ],
  "downloadUrl" : "https://8gwifi.org/fernet.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "online fernet key generation, fernet encryption decryption online",
  "softwareVersion" : "v1.0"
}
</script>

	<title>online fernet encryption/decryption </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="keywords" content="online fernet key generation, fernet encryption decryption online" />
	<meta name="description" content="fernet encryption online, fernet online, fernet cryptography, fernet encryption decryption online, fernet tutorial, fernet cryptography" />

	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<%
		String key = "";
		

		if (request.getSession().getAttribute("key")==null) {
//			KeyPair kp = RSAUtil.generateKey(1024);
//			pubKey =RSAUtil.toPem(kp.getPublic());
//			privKey = RSAUtil.toPem(kp);

			Gson gson = new Gson();
			DefaultHttpClient httpClient = new DefaultHttpClient();
			String url1 = LoadPropertyFileFunctionality.getConfigProperty().get("ep") + "fernet/genkey";

			//System.out.println(url1);

			HttpGet getRequest = new HttpGet(url1);
			getRequest.addHeader("accept", "application/json");

			HttpResponse response1 = httpClient.execute(getRequest);


			BufferedReader br = new BufferedReader(
					new InputStreamReader(
							(response1.getEntity().getContent())
					)
			);

			StringBuilder content = new StringBuilder();
			String line;
			while (null != (line = br.readLine())) {
				content.append(line);
			}
			fernetpojo fernetpojo = (fernetpojo) gson.fromJson(content.toString(), fernetpojo.class);

			key = fernetpojo.getKey();
		}
		else {
			key = (String)request.getSession().getAttribute("key");
		}


	%>

	<script type="text/javascript">
		$(document).ready(function() {


			



			$('#submit').click(function(event) {
				$('#form').delay(200).submit()
			});

			$('#publickeyparam').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#privatekeyparam').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#message').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});



			$('#genfkey').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize2').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize3').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize4').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#cipherparameter1').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter2').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter3').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter4').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#encryptparameter').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#decryptparameter').click(function(event) {

				var text = $('#output').find('textarea[name="encrypedmessagetextarea"]').val();
				if ( text != null ) {
					$("#message").val(text);
				}
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#form').submit(function(event) {
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type : "POST",
					url : "CipherFunctionality", //this is my servlet

					data : $("#form").serialize(),
					success : function(msg) {
						$('#output').empty();
						$('#output').append(msg);
						$("#privatekeyparam").resizable();

					}
				});
			});

		});
	</script>
</head>


<%@ include file="body-script.jsp"%>

<h1 class="mt-4">Fernet Encryption/Decryption</h1>
<hr>


<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>









<form id="form" class="form-horizontal" method="POST">
	<input type="hidden" name="methodName" id="FERNET_ENCRYPT_DECRYPT_MESSAGEE"
		   value="FERNET_ENCRYPT_DECRYPT_MESSAGEE">
	<div class="radio">
		<label>
			<input checked id="encryptparameter" type="radio" name="encryptdecryptparameter" value="encrypt">
			Encrypt
		</label>
	</div>
	<div class="radio">
		<label>
			<input id="decryptparameter" type="radio" name="encryptdecryptparameter" value="decrypt">
			Decrypt
		</label>
	</div>
	
	<div class="form-group">
    <label for="privatekeyparam">Fernet Key</label>
    <input type="text" class="form-control" id="privatekeyparam" name="privatekeyparam" value="<%= key %>"  placeholder="base64 url format">
    <small>The fernet key should be using urls safe base64 encoding format</small>
  </div>
  
  <div class="form-group">
    <label for="message">Input Message</label>
    <textarea class="form-control" id="message" name="message" rows="3" placeholder="Type your plain text message here for encryption or use the seriaozed value for decryption"></textarea>
  </div>
  
  <div class="form-group">
    <label for="output">Output</label>
    <div id="output"></div>
  </div>
	<input type="submit" class="btn btn-primary" name="Generate EC" value="submit">
</form>

<br>

<div>
	<form id="form1" action="CipherFunctionality" method="POST">
	<input type="hidden" name="methodName" id="methodName"  value="FERNET_GENERATE_KEYPAIR">
	<input type="button" class="btn btn-secondary" id ="genfkey" class="btn btn-primary" name="Generate Fernet Keys" value="Generate New Fernet Keys">
</form>

</div>


<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>

<%@ include file="footer_adsense.jsp"%>

<h1 class="code-line" data-line-start=0 data-line-end=1><a id="Fernet_0"></a>Fernet</h1>
<p class="has-line-data" data-line-start="1" data-line-end="2">Fernet guarantees that a message encrypted using it cannot be manipulated or read without the key. All encryption in this version is done with <strong>AES 128</strong> in <strong>CBC</strong> mode.</p>
<h3 class="code-line" data-line-start=3 data-line-end=4><a id="Key_format_3"></a>Key format</h3>
<p class="has-line-data" data-line-start="4" data-line-end="5">A fernet <em>key</em> is the base64url encoding of the following fields:</p>
<pre><code class="has-line-data" data-line-start="7" data-line-end="9">Signing-key || Encryption-key
</code></pre>
<ul>
<li class="has-line-data" data-line-start="10" data-line-end="11"><em>Signing-key</em>, 128 bits</li>
<li class="has-line-data" data-line-start="11" data-line-end="13"><em>Encryption-key</em>, 128 bits</li>
</ul>
<h3 class="code-line" data-line-start=13 data-line-end=14><a id="Token_format_13"></a>Token format</h3>
<p class="has-line-data" data-line-start="15" data-line-end="16">A fernet <em>token</em> is the base64url encoding of the concatenation of the following fields:</p>
<pre><code class="has-line-data" data-line-start="18" data-line-end="20">Version || Timestamp || IV || Ciphertext || HMAC
</code></pre>
<ul>
<li class="has-line-data" data-line-start="21" data-line-end="22"><strong><em>Version</em></strong>, 8 bits : with the value 128 (0x80)</li>
<li class="has-line-data" data-line-start="22" data-line-end="23"><strong><em>Timestamp</em></strong>, 64 bits : It records the number of seconds elapsed between January 1, 1970 UTC and the time the token was created</li>
<li class="has-line-data" data-line-start="23" data-line-end="24"><strong><em>IV</em></strong>, 128 bits</li>
<li class="has-line-data" data-line-start="24" data-line-end="25"><strong><em>Ciphertext</em></strong>, variable length, multiple of 128 bits</li>
<li class="has-line-data" data-line-start="25" data-line-end="27"><strong><em>HMAC</em></strong>, 256 bits : This field is the 256-bit SHA256 HMAC <code>Version || Timestamp || IV || Ciphertext</code></li>
</ul>
<h3 class="code-line" data-line-start=27 data-line-end=28><a id="Examples_27"></a>Examples</h3>
<p class="has-line-data" data-line-start="29" data-line-end="30"><strong>fernet python example</strong></p>
<pre><code class="has-line-data" data-line-start="31" data-line-end="43">&gt;&gt;&gt; from cryptography.fernet import Fernet
&gt;&gt;&gt; key = Fernet.generate_key()
&gt;&gt;&gt; key
'Qk_GF82vx2qPBiF91n238Mp5HeAlgYpC90NB9PGEB_0='
&gt;&gt;&gt; f = Fernet(key)
&gt;&gt;&gt; token = f.encrypt(b&quot;Hello 8gwifi.org&quot;)
&gt;&gt;&gt; token
'gAAAAABf1ecawfmsxp0S80m5LxV4md9Vf4lO7N-P9jQ08de_oLb5382Aqf7aGEof23E6N0WYPyhJkvhT1dDJJU4tdAFAhqnK-uiOoSu1T5P6XZLPcU90Rn0='
&gt;&gt;&gt; f.decrypt(token)
'Hello 8gwifi.org'
&gt;&gt;&gt;
</code></pre>
<p class="has-line-data" data-line-start="44" data-line-end="45"><strong>Using password with Fernet</strong></p>
<pre><code class="has-line-data" data-line-start="47" data-line-end="72">&gt;&gt;&gt; import base64
&gt;&gt;&gt; import os
&gt;&gt;&gt; from cryptography.fernet import Fernet
&gt;&gt;&gt; from cryptography.hazmat.primitives import hashes
&gt;&gt;&gt; from cryptography.hazmat.backends import default_backend
&gt;&gt;&gt; from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
&gt;&gt;&gt; password = b&quot;password&quot;
&gt;&gt;&gt; salt = os.urandom(16)
&gt;&gt;&gt; kdf = PBKDF2HMAC(
... algorithm=hashes.SHA256(),
... length=32,
... salt=salt,
... iterations=100000,
... backend=default_backend()
... )
&gt;&gt;&gt; key = base64.urlsafe_b64encode(kdf.derive(password))
&gt;&gt;&gt; key
'XuRrdEYerPl07JKzRuVhkcx7zuUTtaS0L12-Bs89gbY='
&gt;&gt;&gt; f = Fernet(key)
&gt;&gt;&gt; token = f.encrypt(b&quot;Hello 8gwifi.org&quot;)
&gt;&gt;&gt; token
'gAAAAABf1ekGtfc1S8_LgphBOmTs5YHt14vCEv2Q7XUoRHxHmsQeCSDE6bfQgyv7dk4YZQGvB5VRwCAO5CT6gm_r8PtYFdIaEjsBNAFovx7L_W2SrguCYdY='
&gt;&gt;&gt; f.decrypt(token)
'Hello 8gwifi.org'
</code></pre>
<h3 class="code-line" data-line-start=74 data-line-end=75><a id="Limitation_74"></a>Limitation</h3>
<p class="has-line-data" data-line-start="75" data-line-end="76">Fernet is ideal for encrypting data that easily fits in memory. As a design feature it does not expose unauthenticated bytes. This means that the complete message contents must be available in memory, making Fernet generally unsuitable for very large files at this time</p>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>
