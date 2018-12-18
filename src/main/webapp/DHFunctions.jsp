<!DOCTYPE html>
<html>
<head>

<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<title>Learn DH in Cryptography, Diffie-Hellman Key Exchange</title>
<meta name="description" content="Learn what is Diffie-Hellman Key Exchange In Cryptography.DH Paramter example,Diffie-Hellman Key Exchange, dh online,diffie-hellman-merkle calculator,diffie hellman decryption,calculate shared key diffie hellman,diffie hellman decryption online,rsa public key calculator,diffie hellman decoder,diffie hellman example,explain diffie hellman algorithm with the help of an example " />
<meta name="keywords" content="DH Paramter example,Diffie-Hellman Key Exchange, dh online,diffie-hellman-merkle calculator,diffie hellman decryption,calculate shared key diffie hellman,diffie hellman decryption online,rsa public key calculator,diffie hellman decoder,diffie hellman example,explain diffie hellman algorithm with the help of an example " />

<meta name="robots" content="index,follow" />
<meta name="googlebot" content="index,follow" />
<meta name="resource-type" content="document" />
<meta name="classification" content="tools" />
<meta name="language" content="en" />

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ include file="header-script.jsp"%>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Learn DH in Cryptography, Diffie-Hellman Key Exchange",
  "image" : "https://8gwifi.org/images/site/dh.png",
  "url" : "https://8gwifi.org/DHFunctions.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-01-18",
  "applicationCategory" : [ "dh exchange", "diffie helman", "dh online", "DH Paramter example", "dh key exchnage calculator","diffie helman encryption","diffie helman decryption"],
  "downloadUrl" : "https://8gwifi.org/DHFunctions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "Learn what is Diffie-Hellman Key Exchange In Cryptography.DH Paramter example,Diffie-Hellman Key Exchange",
  "softwareVersion" : "v1.0"
}
</script>

<script type="text/javascript">
	$(document).ready(function() {


		$('#ctrTitles').change(function() {
			   pem = $(this).val();
			   $("#pem").val(pem);    
			});
		

		$('#submit').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#form').submit(function(event) {
			//	
			$('#output1').html('<img src="images/712.GIF"> loading...');
			event.preventDefault();
			$.ajax({
				type : "POST",
				url : "CipherFunctionality", //this is my servlet

				data : $("#form").serialize(),
				success : function(msg) {
					$('#output').empty();
					$('#output1').empty();
					$('#output').append(msg);

				}
			});
		});
	});
</script>
</head>
<%@ include file="body-script.jsp"%>

<h1 class="mt-4">Diffie-Hellman Key Exchange</h1>
<p>Diffie-Hellman Key Exchange, The protocol allows two users to exchange a secret key over an insecure medium without any prior secrets,The Setup Suppose we have two people wishing to communicate: Alice and BobThey do not want Eve (eavesdropper) to know their message.Alice and Bob agree upon and make public two numbers g and p, where p is a prime and g is a primitive root mod p</p>
<hr>


<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>
	

	<form id="form" method="POST">
		<input type="hidden" name="methodName" id="methodName" value="METHOD_DH">


		<div id="dhparamqq"><b>DH Parameter G  :</b>
			<textarea class="form-control" rows="5" cols="5" id="dhparamp"  name="dhparamp">93445990947cef561f52de0fa07a232b07ba78c6d1b3a09d1b838de4d3c51f843c307427b963b2060fb30d8088e5bc8459cf4201987e5d83c2a9c2b72cee53f7905c92c6425f9f97df71b8c09ea97e8435c30b57d6e84bb134af3aeaacf4047da02716c0b85c1b403dba306569aaaa6fb7b01861c4f692af24ad89f02408762380dbdd7186e36d59edf9d2abd93bfe8f04e4e20a214df66dabd02d1b15e6b943ad73a5695110286d6e3b4d35f8f08ece05728645bfb85d29ec561d6db16ac4bb5f58805eea1298b29161f74bac3ff9003dabfcc5fdc7604fb7bfdbf96e9c6c8ca7b357a74a94f62752a780a451bed793400b56a1a9414fa38458ed797896ca8c</textarea>
		</div>

		<div id="descryptmsg"><b>DH Parameter P  :</b>
			<textarea class="form-control" rows="5" cols="5" id="dhparamq" name="dhparamq">ab0eab856a13bdc2c35ae735b04b6424f7c8d33beae9f7d28ff58f84a845e727a2cb3d3fcf716ff839e65fbeaa4f9b38eddd3b87c03b1bf4e5dd86f211a7845d67d2a44a64b5126776fc5a210196020e6552930fbb5f98f5f23589d51dee3fbdb9e714989ad966465ee56e3551b216f0e15c257c0aeddbc1e6b394341a4c07a5412e22cda2c052d232ea68c9709d4e1fe359780a9842f7b30130a7bea563c31897e95cc7cff834ac46aa4d56a1f75b5437dd444d7be4e33c069c340020250c713d6219c5b62d252ad348220254ff77cd6ba54cdd0f37ec6d6cc9bd22ea6794b6237f6fb056edfd7132d4a1be3ddc7cfe6fe57b974d5a9d67ac7059cab02b2a7b</textarea>
		</div>

		<input class="btn btn-primary" type="submit" id="submit" name="generate DH Paramter">

	</form>

				<hr>

				<div id="output"></div>

				<hr>

				<div class="sharethis-inline-share-buttons"></div>
				<%@ include file="thanks.jsp"%>

				<hr>

				<%@ include file="footer_adsense.jsp"%>

				<h2 class="mt-4" id="selfsigncertificate">Diffie Helman Key Exchange</h2>
<p>Source&nbsp;<a href="https://security.stackexchange.com/questions/45963/diffie-hellman-key-exchange-in-plain-english">https://security.stackexchange.com/questions/45963/diffie-hellman-key-exchange-in-plain-english</a><br />Diffie-Hellman is an algorithm used to establish a shared secret between two parties. It is primarily used as a method of exchanging cryptography keys for use in symmetric encryption algorithms like AES.<br />The algorithm in itself is very simple. Let&rsquo;s assume that Alice wants to establish a shared secret with Bob.<br />Alice and Bob agree on a prime number, p, and a base, g, in advance. For our example, let&rsquo;s assume that p=23 and g=5.<br />Alice chooses a secret integer a whose value is 6 and computes A = g^a mod p. In this example, A has the value of 8.<br />Bob chooses a secret integer b whose value is 15 and computes B = g^b mod p. In this example, B has the value of 19.<br />Alice sends A to Bob and Bob sends B to Alice.<br />To obtain the shared secret, Alice computes s = B^a mod p. In this example, Alice obtains the value of s=2<br />To obtain the shared secret, Bob computes s = A^b mod p. In this example, Bob obtains the value of s=2.<br />The algorithm is secure because the values of a and b, which are required to derive s are not transmitted across the wire at all.</p>
<p><img class="img-fluid" src="https://i.stack.imgur.com/n4jBE.png" alt="" width="427" height="641" /></p>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>


