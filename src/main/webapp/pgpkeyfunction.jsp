<!DOCTYPE html>
<html>
<head>
	<title>Online PGP key generation tool pretty good privacy generation online </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
	<meta name="description" content="Online PGP key generation tool pretty good privacy generation pgp, encryption, decryption, tool, online, free, simple PGP Online Encrypt and Decrypt. Tool for PGP Encryption and Decryption. PGP Key Generator Tool.">
	<meta name="keywords"  content="pgp key generation, pgp, encryption, decryption, tool, online, free, generate pgp keys using blowfish,twofish,aes,cast5,desede">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "PGP Key generate",
  "image" : "https://8gwifi.org/images/site/gpg.png",
  "url" : "https://8gwifi.org/pgpkeyfunction.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-11-30",
  "applicationCategory" : [ "pgp key generate online","pgp key in openssl format", "pgp key in pem format" ,"generate aes pgp keys", "openpgp keys online"],
  "downloadUrl" : "https://8gwifi.org/pgpkeyfunction.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "generate pgp keys, openpgpg keys, gpg keys, pgp public and private keys, adding entity to pgp keys, ",
  "softwareVersion" : "v1.0"
}
</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$('#genkeypair').click(function (event)
			{
				//
				$("#email").val('');
				$('#form').delay(200).submit()

			});
			
			$('#genkeypairemail').click(function (event)
			{
				var email=prompt("Please enter your email address");
				var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
				if(email.match(validRegex))
				{	
					$("#email").val(email);
					$('#form').delay(200).submit()
					alert("A new PGP key Pair is delivered to your email...")
					$("#email").val('');
				}
				else{
					alert("Invalid Email Address")
				}
			});
			
			

			$('#form').submit(function (event)
			{
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type: "POST",
					url: "PGPFunctionality", //this is my servlet
					// data: "lengthOfString=" +$('#lengthOfString').val()+"&trimignore="+$('#trimignore').val()+"&methodName="+$('#methodName').val(),
					data: $("#form").serialize(),
					success: function(msg){
						$('#output').empty();
						$('#output').append(msg);

					}
				});
			});
		});

	</script>
</head>

<%@ include file="body-script.jsp"%>

<h1 class="mt-4">PGP Key Generate</h1>
<hr>


<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>

			<form id="form" method="POST" enctype="application/x-www-form-urlencoded">
			
			
				<input type="hidden" name="methodName" id="methodName" value="GENERATE_PGEP_KEY">
				   <input type="hidden" name="j_csrf" value="<%=request.getSession().getId() %>" >
    			   <input type="hidden" id="email" name="email" value="">
				<div class="form-group">
					<label for="p_identity">Identity</label>
					<input class="form-control" id="p_identity" type="text" name="p_identity" value="" placeholder="Type The Identity...">
				</div>

				<div class="form-group">
					<label for="p_identity">Passphrase</label>
					<input class="form-control" id="p_passpharse" type="password" name="p_passpharse" value="" placeholder="Type The passphrase...">
				</div>


				<div class="form-group">
					<label for="cipherparameter11">Algo</label>
					<input checked="checked" id="cipherparameter11" type="radio" name="cipherparameter" value="BLOWFISH">BLOWFISH
					<input id="cipherparameter16" type="radio" name="cipherparameter" value="TWOFISH">TWOFISH
					<input id="cipherparameter12" type="radio" name="cipherparameter" value="AES_256">AES_256
					<input id="cipherparameter13" type="radio" name="cipherparameter" value="AES_192">AES_192
					<input id="cipherparameter14" type="radio" name="cipherparameter" value="AES_128">AES_128
					<input id="cipherparameter15" type="radio" name="cipherparameter" value="CAST5">CAST5
					<input id="cipherparameter17" type="radio" name="cipherparameter" value="TRIPLE_DES">TRIPLE_DES

				</div>

				<div class="form-group">
					<label for="keysize1">Key Size</label>
					<input id="keysize1" checked type="radio" name="p_keysize" value="1024">1024
					<input id="keysize2" type="radio" name="p_keysize" value="2048">2048
					<input id="keysize3" type="radio" name="p_keysize" value="4096">4096 (Performance Suffer )
				</div>
					<input class="btn btn-primary"  type="button" id="genkeypair" name="genkeypair" value="Generate Keypair">
					<input class="btn btn-secondary"  type="button" id="genkeypairemail" name="genkeypairemail" value="Email Key Pair">



			</form>

<hr>

<div id="output"></div>

<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>

<%@ include file="footer_adsense.jsp"%>

<h2 class="mt-4" id="pgp"><a href="docs/gpg.jsp">PGP</a></h2>
<p><strong>Pretty Good Privacy or PGP</strong> is a popular program used to encrypt and decrypt email over the Internet, as well as authenticate messages with digital signatures and encrypted stored files.</p>
<p><strong>PGP</strong> and similar software follow the <strong>OpenPGP</strong> standard (RFC 4880) for encrypting and decrypting data.</p>
<p>When we generate a public-private keypair in P<strong>GP, it gives us the option of selecting DSA or RSA</strong>, This tool generate RSA keys. RSA is an algorithm.PGP is originally a piece of software, now a standard protocol, usually known as OpenPGP.</p>
<p><a href="docs/gpg.jsp">Read PGP in Nutshell</a>  </p>
<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>

