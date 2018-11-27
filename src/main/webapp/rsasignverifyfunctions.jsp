<%@ page import="z.y.x.Security.RSAUtil" %>
<%@ page import="java.security.KeyPair" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="org.apache.http.impl.client.DefaultHttpClient" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.HttpResponse" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="z.y.x.Security.pgppojo" %>
<%@ page import="z.y.x.r.LoadPropertyFileFunctionality" %>
<!DOCTYPE html>
<html>
<head>


	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "RSA signature generation and verify message online",
  "image" : "https://8gwifi.org/images/site/rsasig.png",
  "url" : "https://8gwifi.org/rsasignverifyfunctions.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-10-27",
  "applicationCategory" : [ "rsa sign verify encryption decryption online", "online rsa sign message", "rsa sign message online", "rsa verify signature", "rsa signature algorithm", "rsa sign/verify RSASSA-PSS", "SHA1WithRSA/PSS", "SHA1withRSAandMGF1", "sha384WithRSA", "md5WithRSA"],
  "downloadUrl" : "https://8gwifi.org/rsasignverifyfunctions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "online rsa tutorial, rsa signature genartion and verification, rsa signature scheme RSASSA-PKCS1-v1_5, RSASSA-PSS",
  "softwareVersion" : "v1.0"
}
</script>

	<title>RSA Signature generation and verification tool with RSASSA-PSS,SHA1WithRSA,SHA1withRSAandMGF1, sha384WithRSA, SHA224WithRSA/PSS, RSAPSS </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="keywords" content="rsa sign verify online, rsa sign verify RSASSA-PSS,SHA1WithRSA,SHA1withRSAandMGF1, sha384WithRSA, SHA224WithRSA/PSS, RSAPSS, java rsa, openssl rsa, rsa tutorial  "/>
	<meta name="description" content="rsa algorithm sign verify message online, generate rsa keys perform signature generation and verifictaion of signature , rsa signature scheme RSASSA-PKCS1-v1_5, RSASSA-PSS  " />

	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<%
		String pubKey = "";
		String privKey = "";
		String checkedKey="512";
		boolean k1=false;
		boolean k2=false;
		boolean k3=false;
		boolean k4=false;


		if (request.getSession().getAttribute("pubkey")==null) {
//			KeyPair kp = RSAUtil.generateKey(1024);
//			pubKey =RSAUtil.toPem(kp.getPublic());
//			privKey = RSAUtil.toPem(kp);

			Gson gson = new Gson();
			DefaultHttpClient httpClient = new DefaultHttpClient();
			String url1 = LoadPropertyFileFunctionality.getConfigProperty().get("ep") + "rsa/" + 1024;

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
			pgppojo pgppojo = (pgppojo) gson.fromJson(content.toString(), pgppojo.class);

			pubKey = pgppojo.getPubliceKey();
			privKey = pgppojo.getPrivateKey();
			k2=true;
		}
		else {
			pubKey = (String)request.getSession().getAttribute("pubkey");
			privKey = (String)request.getSession().getAttribute("privKey");
			checkedKey = (String)request.getSession().getAttribute("keysize");
		}

		if("512".equals(checkedKey))
		{
			k1=true;
		}
		if("1024".equals(checkedKey))
		{
			k2=true;

		}
		if("2048".equals(checkedKey))
		{
			k3=true;
		}
		if("4096".equals(checkedKey))
		{
			k4=true;
		}

		//System.out.println(k1);
		//System.out.println(k2);
		//System.out.println(k3);
		//System.out.println(k4);

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

			$('#signature').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#keysize1').click(function(event) {
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

			$('#cipherparameter6').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter7').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#cipherparameter8').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter9').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter10').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter11').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#encryptparameter').click(function(event) {
				var text = $('#output').find('textarea[name="encrypedmessagetextarea"]').val();
				if ( text != null ) {
					$("#signature").val(text);
				}
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#decryptparameter').click(function(event) {

				$('#form').delay(200).submit()
			});


			$('#form').submit(function(event) {
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type : "POST",
					url : "RSAFunctionality", //this is my servlet

					data : $("#form").serialize(),
					success : function(msg) {
						$('#output').empty();
						$('#output').append(msg);
						$("#publickeyparam").resizable();
						$("#privatekeyparam").resizable();

					}
				});
			});

		});
	</script>
</head>


<%@ include file="body-script.jsp"%>

<h1 class="mt-4">RSA Signature/Generation & Validation</h1>
<hr>


<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>



<form id="form1" class="form-horizontal" method="GET" name="form2" action="RSAFunctionality?q=setNeKey">

	<input type="hidden" name="rsasignverifyfunctions" value="rsasignverifyfunctions">
	<b>Generate RSA Key Size</b>	<input <% if(k1) {  %> checked <% } %>

													id="keysize1"  type="radio" name="keysize"
													value="512">512 bit
	<input <% if(k2) {  %> checked <% } %> id="keysize2" type="radio" name="keysize"
						   value="1024">1024 bit
	<input <% if(k3) {  %> checked <% } %> id="keysize3" type="radio" name="keysize"
						   value="2048">2048 bit
	<input <% if(k4) {  %> checked <% } %> id="keysize4" type="radio" name="keysize"
						   value="4096">4096 bit
</form>



<form id="form" class="form-horizontal" method="POST">
	<input type="hidden" name="methodName" id="methodName"
		   value="RSA_SIGN_VERIFY_MESSAGEE">


	<div class="radio">
		<label>
			<input checked id="encryptparameter" type="radio" name="encryptdecryptparameter" value="encrypt">
			Verify Signature
		</label>
	</div>
	<div class="radio">
		<label>
			<input id="decryptparameter" checked type="radio" name="encryptdecryptparameter" value="decryprt">
			Generate Signature
		</label>
	</div>

	<table class="table">
		<tr>
			<th>Public Key </th>
			<th>Private Key </th>
		</tr>

		<tr>
			<td>
				<textarea class="form-control animated" rows="10"   name="publickeyparam" id="publickeyparam"><%= pubKey %></textarea>
			</td>
			<td>
				<textarea class="form-control animated" rows="10"   name="privatekeyparam" id="privatekeyparam"><%= privKey %></textarea>
			</td>


		</tr>

		<tr>

			<td>
				<b>ClearText Message</b><textarea class="form-control" rows="5"  placeholder="Type Something Here..."  name="message" id="message"></textarea>
			</td>
			<td width="50%">
				<b>Signature Output</b><div id="output"></div>
			</td>

		</tr>

		<tr>
			<td >Provide Signature Value (Base64) <textarea class="form-control" rows="5"  placeholder="Give Signature Value here in Base64 format for verification along with plaintext value and click on verify Signature"  name="signature" id="signature"></textarea>
			</td>
			<td></td>
		</tr>

		<tr>
			<td colspan="2" width="20%">
				<strong>RSA Signature Algorithms</strong>
				<br/>

				<div class="radio">
					<label>
						<input id="cipherparameter7" type="radio" name="cipherparameter"
							   checked value="RSASSA-PSS">RSASSA-PSS
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter8" type="radio" name="cipherparameter"
							   value="SHA1WithRSA/PSS"  >SHA1WithRSA/PSS
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter9" type="radio" name="cipherparameter"
							   value="SHA224WithRSA/PSS"  >SHA224WithRSA/PSS
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter10" type="radio" name="cipherparameter"
							   value="SHA384WithRSA/PSS"  >SHA384WithRSA/PSS
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter11" type="radio" name="cipherparameter"
							   value="SHA384WithRSA/PSS"  >SHA1withRSAandMGF1
					</label>
				</div>




				<div class="radio">
					<label>
						<input id="cipherparameter3" type="radio" name="cipherparameter"
							    value="SHA256withRSA"  >SHA256withRSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter1" type="radio" name="cipherparameter"
							   value="sha1WithRSA"  >sha1WithRSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter2" type="radio" name="cipherparameter"
							   value="sha384WithRSA"  >sha384WithRSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter4" type="radio" name="cipherparameter"
							   value="sha512WithRSA"  >sha512WithRSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter5" type="radio" name="cipherparameter"
							   value="md2WithRSA">md2WithRSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter6" type="radio" name="cipherparameter"
							   value="md5WithRSA">md5WithRSA
					</label>
				</div>

			</td>



		</tr>



	</table>


</form>

<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>

<%@ include file="footer_adsense.jsp"%>

<h2 class="mt-4" id="thersaalgorithm">The RSA Algorithm</h2>

<p>The <strong>Rivest-Shamir-Adleman (RSA)</strong> algorithm is one of the most popular and secure public-key encryption methods. The algorithm capitalizes on the fact that there is no efficient way to factor very large (100-200 digit) numbers</p>

<p><strong>RSA Signature Generation &amp; Verification</strong></p>
<ul>
	<li>The <strong>private</strong> key is the only one that can generate a signature that can be verified by the corresponding public key.</li>
	<li>The <strong>RSA</strong> operation <strong>can't</strong> handle messages longer than the modulus size. That means that if you have a 2048 bit RSA key, you would be unable to directly sign any messages longer than 256 bytes long. So signing the hash is just as good as signing the original message, without the length restrictions we would have if we didn’t use a hash</li>
	<li><strong>RSASSA-PSS</strong> combines the RSASP1 and RSAVP1 primitives with the EMSA PSS encoding method.</li>
	<li><strong>RSASSA-PKCS1-v1_5</strong>  : combines the RSASP1 and RSAVP1 primitives with the EMSA-PKCS1-v1_5 encoding method.</li>
</ul>

<h2 class="mt-4" id="thersaalgorithm">How to perform RSA Sign/Verify in </h2>

<table id="tablePreview" class="table table-bordered">
	<!--Table head-->
	<thead>
	<tr>
		<th><a href="/docs/go-rsa.jsp">Go Lang</a> </th>
		<th><a href="/docs/pyhton-rsa.jsp">Python</a></th>
		<th><a href="/docs/window-crypto-rsassa.jsp">Web Crypto(Javascript)</a></th>
	</tr>
	</tr>
	</thead>
	<tbody>
	</tbody>
</table>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>
