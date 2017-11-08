<!DOCTYPE html>
<html>
<head>
<title>Online Cipher Algorithms, Encrytion Decryption Online using AES,DES,DESede,Blowfish,Twofish,CAST5,IDEA</title>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>


<meta name="description"
	content="Strong Encryption and Powerful Decryption online, Block Ciphers, ECB,CCB,OTR Padding Scheme PKCS5Padding, NoPadding "/>
<meta name="keywords"
	content="encode,encrypt,encryption,online encrypt,decode,decrypt online,decryption,AES,DES,DESede,AES/CBC/PKCS5Padding,AES/ECB/NoPadding,AES/ECB/PKCS5Padding,DES/CBC/NoPadding,DES/CBC/PKCS5Padding,DES/ECB/NoPadding,DES/ECB/PKCS5Padding,DESede/CBC/NoPadding,DESede/CBC/PKCS5Padding,DESede/ECB/NoPadding,DESede/ECB/PKCS5Padding,Blowfish,MARS,RC6,Rijndael,Serpent,Twofish,online encyption decryption,CAST5 online">


<meta name="author" content="CRYPO" />
<meta name="robots" content="index,follow" />
<meta name="googlebot" content="index,follow" />
<meta name="resource-type" content="document" />
<meta name="classification" content="tools" />
<meta name="language" content="en" />

<%@ include file="include_css.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {

		$('#plaintext').keyup(function(event) {
			//	
			// event.preventDefault();
			$('#form').delay(200).submit()
		});

		$('#secretkey').keyup(function(event) {
			//	
			// event.preventDefault();
			$('#form').delay(200).submit()
		});
		

		$('#encrypt').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#cipherparameter').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#cipherparameter1').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#cipherparameter2').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#cipherparameter3').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter4').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter5').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter6').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter7').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter8').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter9').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter10').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter11').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter12').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter13').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter14').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#cipherparameter15').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter16').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#cipherparameter17').click(function(event) {
			$('#form').delay(200).submit()
		});
		$('#decrypt').click(function(event) {
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
	<form id="form" method="POST">
		<input type="hidden" name="methodName" id="methodName"
			value="CIPHERBLOCK">
		<fieldset name="Cipher Functionality">
			<legend>
				<B>Encrypt/Decrypt Message </B>
			</legend>
			Plain text Type Something
			<textarea rows="10" cols="30" name="plaintext" id="plaintext"></textarea>
			<div id="output"></div>

			<br> SecretKey<input id="secretkey" type="text" name="secretkey"
				size="40" placeholder="2b7e151628aed2a6abf71589"
				value="2b7e151628aed2a6abf71589"> <input checked="checked"
				id="encrypt" type="radio" name="encryptorDecrypt" value="encrypt">Encrypt
			<input id="decrypt" type="radio" name="encryptorDecrypt"
				value="decrypt">Decrypt <br>
			<fieldset>
				<label>Choose Standard Cipher transformations with the
					keysizes in parentheses:</label> <br>
				<!-- <input checked="checked" id="cipherparameter" type="radio" name="cipherparameter" value="AES/CBC/NoPadding">AES/CBC/NoPadding (128) -->
				<input checked="checked" id="cipherparameter11" type="radio"
					name="cipherparameter" value="AES">AES<br> <input
					id="cipherparameter12" type="radio" name="cipherparameter"
					value="DES">DES<br> <input id="cipherparameter13"
					type="radio" name="cipherparameter" value="DESede">DESede<br>
				<input id="cipherparameter14" type="radio"
					   name="cipherparameter" value="Blowfish">Blowfish(64)
				<br>
				<input id="cipherparameter15" type="radio"
					   name="cipherparameter" value="Twofish">Twofish(128)
				<br>
				<input id="cipherparameter16" type="radio"
					   name="cipherparameter" value="IDEA">IDEA (64)
				<br>
				<input id="cipherparameter17" type="radio"
					   name="cipherparameter" value="CAST5">CAST5 (64 Bits Block Siize)
				<br>
				<input id="cipherparameter" type="radio" name="cipherparameter"
					value="AES/CBC/PKCS5Padding">AES/CBC/PKCS5Padding (128)<br>
				<input id="cipherparameter1" type="radio" name="cipherparameter"
					value="AES/ECB/NoPadding">AES/ECB/NoPadding (128)<br>
				<input id="cipherparameter2" type="radio" name="cipherparameter"
					value="AES/ECB/PKCS5Padding">AES/ECB/PKCS5Padding (128)<br>
				<input id="cipherparameter3" type="radio" name="cipherparameter"
					value="DES/CBC/NoPadding">DES/CBC/NoPadding (56)<br> <input
					id="cipherparameter4" type="radio" name="cipherparameter"
					value="DES/CBC/PKCS5Padding">DES/CBC/PKCS5Padding (56)<br>

				<input id="cipherparameter5" type="radio" name="cipherparameter"
					value="DES/ECB/NoPadding">DES/ECB/NoPadding (56)<br> <input
					id="cipherparameter6" type="radio" name="cipherparameter"
					value="DES/ECB/PKCS5Padding">DES/ECB/PKCS5Padding (56)<br>
				<input id="cipherparameter7" type="radio" name="cipherparameter"
					value="DESede/CBC/NoPadding">DESede/CBC/NoPadding (168)<br>
				<input id="cipherparameter8" type="radio" name="cipherparameter"
					value="DESede/CBC/PKCS5Padding">DESede/CBC/PKCS5Padding
				(168)<br> <input id="cipherparameter9" type="radio"
					name="cipherparameter" value="DESede/ECB/NoPadding">DESede/ECB/NoPadding
				(168)<br> <input id="cipherparameter10" type="radio"
					name="cipherparameter" value="DESede/ECB/PKCS5Padding">DESede/ECB/PKCS5Padding
				(168)<br>

				<!-- <input  id="cipherparameter" type="radio" name="cipherparameter" value="RSA/ECB/PKCS1Padding">RSA/ECB/PKCS1Padding (1024, 2048)<br>
				<input  id="cipherparameter" type="radio" name="cipherparameter" value="RSA/ECB/OAEPWithSHA-1AndMGF1Padding">RSA/ECB/OAEPWithSHA-1AndMGF1Padding (1024, 2048)<br>
				<input  id="cipherparameter" type="radio" name="cipherparameter" value="RSA/ECB/OAEPWithSHA-256AndMGF1Padding">RSA/ECB/OAEPWithSHA-256AndMGF1Padding (1024, 2048)<br> -->
			</fieldset>
		</fieldset>

	</form>
				<%@ include file="footer.jsp"%>

				<p><strong>DES &ndash; Data Encryption Standard</strong></p>
				<ul>
					<li>Derived in 1972 as derivation of Lucifer algorithm developed by Horst Fiestel at IBM</li>
					<li>Patented in 1974 - Block Cipher Cryptographic System</li>
					<li>Commercial and non-classified systems</li>
					<li>DES describes the Data Encryption Algorithm DEA</li>
					<li>Federal Information Processing Standard FIPS adopted DES in 1977</li>
					<li>Re-certified in 1993 by National Institute of Standards and Technology but will be replaced by AES Advanced Encryption Standard by Rijndael.</li>
					<li>DES uses 64 bit block size and 56 bit key, begins with 64 bit key and strips 8 parity bits</li>
					<li>DEA is 16 round cryptosystem designed for implementation in hardware</li>
					<li>56 bit key = 2<span style="position: relative; top: -3.0pt;">56 </span>or 70 quadrillion possible keys</li>
					<li>Distributed systems can break it. S. Government no longer uses it</li>
					<li>Triple DES &ndash; three encryptions using DEA are now being used until AES is adopted</li>
				</ul>
				<p style="padding-left: 30px;">DES uses <strong>confusion</strong> and <strong>diffusion</strong> as suggested by Claude Shannon</p>
				<p style="padding-left: 30px;"><strong>Confusion</strong> conceals statistical connection</p>
				<p style="padding-left: 30px;">Accomplished through s-boxes</p>
				<p style="padding-left: 30px;"><strong>Diffusion</strong> spread the influence of plaintext character over many ciphertext characters</p>
				<p style="padding-left: 30px;">Accomplished through p-boxes</p>
				<p><strong>DES Operates in four modes</strong></p>
				<ul>
					<li>Electronic Code Book (ECB)</li>
					<li>Cipher Block Chaining (CBC)</li>
					<li>Cipher Feedback (CFB)</li>
					<li>Output Feedback (OFB)</li>
				</ul>
				<p><strong>Electronic Code Book</strong></p>
				<ul>
					<li>Native encryption mode</li>
					<li>Provides the recipe of substitutions and permutations that will be performed on the block of plaintext.</li>
					<li>Data within a file does not have to be encrypted in a certain order.</li>
					<li>Used for small amounts of data, like challenge-response, key management tasks.</li>
					<li>Also used to encrypt PINs in ATM machines.</li>
				</ul>
				<p><strong>Cipher Block Chaining</strong></p>
				<ul>
					<li>Each block of text, the key, and the value based on the previous block is processed in the algorithm and applied to the next block of text.</li>
				</ul>
				<p><strong>Cipher Feedback </strong></p>
				<ul>
					<li>The previously generated ciphertext from the last encrypted block of data is inputted into the algorithm to generate random values.</li>
					<li>These random values are processed with the current block of plaintext to create ciphertext.</li>
					<li>This mode is used when encrypting individual characters is required.</li>
				</ul>
				<p><strong>Output Feedback </strong></p>
				<ul>
					<li>Functioning like a stream cipher by generating a stream of random binary bits to be combined with the plaintext to create ciphertext.</li>
					<li>The ciphertext is fed back to the algorithm to form a portion of the next input to encrypt the next stream of bits<span style="font-size: 12.0pt; font-family: 'TimesNewRoman',serif;">.</span></li>
					<li><strong>DES has been broken with Internet network of PC&rsquo;s </strong></li>
				</ul>
				<p>DES is considered vulnerable by brute force search of the key &ndash; replaced by triple DES and AES&nbsp;</p>
				<p><strong>Triple DES</strong></p>
				<ul>
					<li>Double encryption is subject to meet in the middle attack</li>
					<li>Encrypt on one end decrypt on the other and compare the values</li>
					<li>So Triple DES is used</li>
					<li>Can be done several different ways:
						<ul>
							<li>DES &ndash; EDE2 (encrypt key 1, decrypt key 2, encrypt key 1)</li>
							<li>DES &ndash; EE2 (encrypt key 1, encrypt key 2, encrypt key 1)</li>
							<li>DES &ndash;EE3 (encrypt key 1, encrypt key 2, encrypt key 3) - most secure</li>
						</ul>
					</li>
					<li>Advanced Encryption Standard</li>
					<li>Block Cipher that will replace DES</li>
					<li>Anticipated that Triple DES will remain approved for Government Use</li>
					<li>AES announced by NIST in January 1997 to find replacement for DES</li>
				</ul>
				<p><strong>5 Finalists</strong></p>
				<ul>
					<li>MARS</li>
					<li>RC6</li>
					<li>Rijndael</li>
					<li>Serpent</li>
					<li>Blowfish</li>
				</ul>




<%@ include file="include_security_links.jsp"%>

		
			</section>
		</article>
		
	</div>
</body>
</html>