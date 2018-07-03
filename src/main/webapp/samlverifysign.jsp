<%@ page import="z.y.x.Security.RSAUtil" %>
<%@ page import="java.security.KeyPair" %>
<!DOCTYPE html>
<html>
<head>


	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "SAML Signature Verification & Base64 SAML Message",
  "image" : "https://github.com/anishnath/crypto-tool/blob/master/samlverify.png",
  "url" : "https://8gwifi.org/samlverifysign.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-03-30",
  "applicationCategory" : [ "validate saml authnrequest,verify saml, verify saml signature, saml assertion validation,saml signature value,base64 encoded saml response,base64 decode,saml base64,base64 deflate, saml decoder"],
  "downloadUrl" : "https://8gwifi.org/samlverifysign.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "Saml singnature validation, saml assertions, saml enocde decode, base 64 saml message, authn response signature validation,  ",
  "softwareVersion" : "v1.0"
}
</script>

	<title>SAML Signature Verification & Base64 SAML Message </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="keywords" content="validate saml authnrequest,verify saml, verify saml signature, saml assertion validation,saml signature value,base64 encoded saml response,base64 decode,saml base64,base64 deflate, saml decoder" />
	<meta name="description" content="validate saml authn rrequest, validarte saml response signature, saml signaure validation , base64 decode saml message, deflate saml to xml ," />

	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />

	<%@ include file="include_css.jsp"%>



	<script type="text/javascript">
		$(document).ready(function() {

			$('#showx509').show();
			$('#verifysaml').show();
			$('#th1').show();




			$('#verifysignature').click(function(event) {
				$('#output').hide();
				$('#showx509').show();
				$('#verifysaml').show();
				$('#th1').show();
				$('#form').delay(200).submit()
			});

			$('#samlmessagedecoder').click(function(event) {
				$('#output').hide();
				$('#showx509').hide();
				$('#verifysaml').hide();
				$('#th1').hide();
				$('#form').delay(200).submit()
			});


			$('#samlmessagedeflate').click(function(event) {
				$('#output').hide();
				$('#showx509').hide();
				$('#verifysaml').hide();
				$('#th1').hide();
				$("#samlmessage").val('pVNNj9owEL3vr4h8hxCSCmJtkCjbDyQKKdAeeqm8zqRryR+px9ml/752YFv3sBy2cxzPzHvz3vgWmZIdXfbuQe/hZw/okpOSGunwUJHeamoYCqSaKUDqOD0sP23odDyhnTXOcCNJsr6ryPfd9t1m92G9zSZ5MZ2Xk5LdAy+mRcvezPPprJ2Vxawo5wVJvoJFYXRF/BTfjNjDWqNj2vnUJCtGWTbK8mOW0bykefGNJO+N5TCwrEjLJEJoqxmieIQ/mfrC563QjdA/rpO/Pxch/Xg81qN6dziSZIkI1nlmK6OxV2APYB8Fhy/7TUUenOtomsKJqU7CmBuVMo5kcZP4uA1y0WETGwl4nQJ7hrsMCXFBEU03jpEUONYwx85gaYQW4Xd06zHWd7WRgv96jY9eZsXc9eqQEc2oHUppF6xEB9qR5FAH/M89k6IVYCsSbeDFldI8rSww5x1ztveGpf+Qv9wfNIPP3gIHp1dd48qojlmB4cI8Be4ifc9GxQgr6X3YQ/tftoW42sMpDzg+Ha72ydjmL6X0RU6LyO8XBFrcPD/Hn3jxGw==');


			});


			$('#verifybutton').click(function (event)
			{
				//
				$('#form').delay(200).submit()

			});

			$('#submit').click(function(event) {
				$('#form').delay(200).submit()
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
					url : "SAMLFunctionality", //this is my servlet

					data : $("#form").serialize(),
					success : function(msg) {
						$('#output').empty();
						$('#output').append(msg);
						$('#output').show();

					}
				});
			});

		});
	</script>
</head>
<body>
<div id="page">
	<%@ include file="include.jsp"%>
	<div id="loading" style="display: none;">
		<img src="images/712.GIF" alt="" />Loading!
	</div>

	<article id="contentWrapper" role="main">
		<section id="content">
			<fieldset name="SAML ">
				<legend>
					<b> SAML Verify Signature decode Message </b>
				</legend>

				<form id="form" method="POST">
					<input type="hidden" name="methodName" id="methodName"
						   value="VERIFY_SIGNATURE_OR_DECODE">

					<fieldset name="RSA2"   >

						<legend>
							<b> Verify/Decode SAML Message </b>
						</legend>

						<div id="output"></div>

						<input checked id="verifysignature" type="radio" name="verifysignatureparameter"
							   value="verifysignature">Verify Signature

						<input id="samlmessagedecoder" type="radio" name="verifysignatureparameter"
							   value="samlmessagedecoder"> SAML Message (base64encoder)

						<input id="samlmessagedeflate" type="radio" name="verifysignatureparameter"
							   value="samlmessagedeflate"> base64decodedInflated
						<br>

						<table border="1" style="width:80pc">

							<tr>
								<th>SAML Message</th>
								<th><div id="th1">X.509 Certs </div></th>
								<th>SAML Verify Signature/ Decode Message </th>
							</tr>

							<tr>
								<td>
									<textarea rows="20" cols="50"  name="samlmessage" id="samlmessage">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</textarea>
								</td>
								<td>
									<div id="showx509">
										<textarea rows="20" cols="50"  name="x509" id="x509">-----BEGIN CERTIFICATE-----
MIICgTCCAeoCCQCbOlrWDdX7FTANBgkqhkiG9w0BAQUFADCBhDELMAkGA1UEBhMC
Tk8xGDAWBgNVBAgTD0FuZHJlYXMgU29sYmVyZzEMMAoGA1UEBxMDRm9vMRAwDgYD
VQQKEwdVTklORVRUMRgwFgYDVQQDEw9mZWlkZS5lcmxhbmcubm8xITAfBgkqhkiG
9w0BCQEWEmFuZHJlYXNAdW5pbmV0dC5ubzAeFw0wNzA2MTUxMjAxMzVaFw0wNzA4
MTQxMjAxMzVaMIGEMQswCQYDVQQGEwJOTzEYMBYGA1UECBMPQW5kcmVhcyBTb2xi
ZXJnMQwwCgYDVQQHEwNGb28xEDAOBgNVBAoTB1VOSU5FVFQxGDAWBgNVBAMTD2Zl
aWRlLmVybGFuZy5ubzEhMB8GCSqGSIb3DQEJARYSYW5kcmVhc0B1bmluZXR0Lm5v
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDivbhR7P516x/S3BqKxupQe0LO
NoliupiBOesCO3SHbDrl3+q9IbfnfmE04rNuMcPsIxB161TdDpIesLCn7c8aPHIS
KOtPlAeTZSnb8QAu7aRjZq3+PbrP5uW3TcfCGPtKTytHOge/OlJbo078dVhXQ14d
1EDwXJW1rRXuUt4C8QIDAQABMA0GCSqGSIb3DQEBBQUAA4GBACDVfp86HObqY+e8
BUoWQ9+VMQx1ASDohBjwOsg2WykUqRXF+dLfcUH9dWR63CtZIKFDbStNomPnQz7n
bK+onygwBspVEbnHuUihZq3ZUdmumQqCw4Uvs/1Uvq3orOo/WJVhTyvLgFVK2Qar
Q4/67OZfHd7R+POBXhophSMv1ZOo
-----END CERTIFICATE-----</textarea>
									</div>
								</td>

								<td rowspan="3" width="80%">
									<%@ include file="footer_adsense.jsp"%>
									<p>This tool validates a SAML Response, its signatures and its data, paste the SAML Response XML. In order to validate the signature, the X.509 public certificate of the Identity Provider is required</p>
									<p>Check signature inside the assertion: Select assertion option if the signature will be present inside the SAML assertion itself.</p>
									<p>Base64. SAML protocol uses the base64 encoding algorithm when exchanging SAML messages. If you intercept a SAML Message,you will turn it in plain-text through base64 decoding.</p>
								</td>

							</tr>
							<tr>
								<td colspan="2" width="20%">
									<div id ="verifysaml">
										SAML Signature Verify XPTAH
										<br/>
										<input id="cipherparameter1" type="radio" name="cipherparameter"
											   checked value="response"  >Verify Response Signature
										<br/>
										<input id="cipherparameter2" type="radio" name="cipherparameter"
											   value="assertion"  >Verify Assertion
										<br/>
									</div>
								</td>



							</tr>


							<tr>

								<td width="50%">
								</td>

								<input type="button" size="10" id="verifybutton" name="submit" value="submit">

							</tr>


						</table>


					</fieldset>
			</fieldset>
				</form>

				<table border="0" style="width:500px">
					<tr>
						<td><%@ include file="footer.jsp"%></td>
					</tr>
				</table>
				<%@ include file="include_security_links.jsp"%>

			<br/>
			<p class="p1"><strong><span class="s1">Command Line option for base64 Encode/Decode</span></strong></p>
			<p class="p1"><span class="s1" style="color: #3366ff;">[bash ~]$ echo 8gwifi.org<span class="Apple-converted-space">&nbsp; </span>| base64</span></p>
			<p class="p1"><span class="s1">OGd3aWZpLm9yZwo=</span></p>
			<p class="p1"><span class="s1" style="color: #3366ff;">[bash&nbsp; ~]$ echo OGd3aWZpLm9yZwo= | base64 --decode</span></p>
			<p class="p1"><span class="s1">8gwifi.org</span></p>
		</section>

	</article>



</div>
</body>
</html>