<!DOCTYPE html>
<head>
	<title>Htpasswd Generator, generate the htaccess .htpasswd file with bcrypt,crypt,apr,sha-224,sha-512 </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="description"  content="Htpasswd Generator, generate the htaccess .htpasswd file with bcrypt,crypt,apr,sha-224,sha-512, Verify the htpasswd"/>
	<meta name="keywords" content="online generate htpasswd file, generate crypt password, generate bcrypt password , verify hash password online, openssl generate crypt hash password, openssl generate md5 hash password"/>

	<meta name="author" content="CRYPO" />
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
  "name" : "Htpasswd Generator, generate the htaccess .htpasswd file with bcrypt,crypt,apr,sha-224,sha-512 ",
  "image" : "https://8gwifi.org/images/site//htpasswd.png",
  "url" : "https://8gwifi.org/htpasswd.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2020-02-06",
  "applicationCategory" : [ "htpasswd online" , "apache htpasswd" , "nginx basic auth" , "generate htpasswd"],
  "downloadUrl" : "https://8gwifi.org/htpasswd.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "htpasswd password hash generation online and hash checker,htpasswd hash online,htpasswd hash cracker,htpasswd decrypt ,Good Password Hashing Functions",
  "softwareVersion" : "v1.0"
}
</script>

	<script type="text/javascript">
		$(document).ready(function() {


			$('#password').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#username').keyup(function(event) {
				$('#form').delay(200).submit()
			});

			$('#workload2').click(function(event) {
				$('#form').delay(200).submit()
			});

			$('#workload3').click(function(event) {
				$('#form').delay(200).submit()
			});

			$('#workload4').click(function(event) {
				$('#form').delay(200).submit()
			});

			$('#workload5').click(function(event) {
				$('#form').delay(200).submit()
			});
			$('#hash').keyup(function(event) {
				$('#form').delay(200).submit()
			});



			$('#form').submit(function(event) {
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type : "POST",
					url : "BCCryptFunctionality", //this is my servlet

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

<%@ include file="body-script.jsp"%>

<h1 class="mt-4">Generates an Apache/nginx htpasswd compatible based hash value.</h1>
<p>This tool will help to generate/verify the httpaswd compatabile hash password generated using the alogorithm crypt,APR,SHA-256,SHA-512,bcrypt  </p>

<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>

<hr>



			<form id="form" method="POST">
				<input type="hidden" name="methodName" id="methodName"
					   value="HTPASSWORD_GENERATE">

				<div class="form-group">
					<label for="password">Username</label>
					<input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter Username">
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" name="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter password to generate htpassword">
				</div>



				<hr>

				<div class="form-group">
					<label for="hash">Validate Hash</label>
					<input type="text" name="hash" class="form-control" id="hash" aria-describedby="emailHelp" placeholder="$2a$10$9WHIOHV8T1RNQQrx/omYz.yoCjpa5EL4D/hoy7acc9fFFF54v7hBC">
				</div>

				<input type="button" class="btn btn-primary" value="submit" id="submit" name="Submit">

				</form>
<hr>

<div id="output"></div>

<hr>
<p> Related Tool </p>

<ul>
	<li><a href="bccrypt.jsp"><font size="2.5px">BCrypt Password Hash </font> </a></li>
	<li><a href="scrypt.jsp"><font size="2.5px">SCrypt Password Hash </font> </a></li>
	<li><a href="htpasswd.jsp"><font size="2.5px">.htpasswd Generator</font> </a></li>
</ul>

<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>



<hr>

<%@ include file="footer_adsense.jsp"%>

<h3 class="code-line" data-line-start=0 data-line-end=1 ><a id="htpasswd_0"></a>htpasswd</h3>
<p class="has-line-data" data-line-start="2" data-line-end="3">The command line tool <code>htpasswd</code> is used to create and update the flat-files used to store <strong>usernames</strong> and <strong>password</strong> for basic authentication of HTTP users</p>
<p class="has-line-data" data-line-start="4" data-line-end="5"><strong>htpasswd</strong> uses Modular Crypt format used when storing passwords in the OpenBSD password file</p>
<ul>
	<li class="has-line-data" data-line-start="5" data-line-end="6"><code>$1$</code>: APR-MD5-based crypt (md5crypt)</li>
	<li class="has-line-data" data-line-start="6" data-line-end="7"><code>$2$</code>: Blowfish-based crypt (bcrypt)</li>
	<li class="has-line-data" data-line-start="7" data-line-end="8"><code>$sha1$</code>: SHA-1-based crypt (sha1crypt)</li>
	<li class="has-line-data" data-line-start="8" data-line-end="9"><code>$5$</code>: SHA-256-based crypt (sha256crypt’)</li>
	<li class="has-line-data" data-line-start="9" data-line-end="10"><code>$6$</code>: SHA-512-based crypt (sha512crypt)</li>
</ul>
<p class="has-line-data" data-line-start="12" data-line-end="13">Generare <strong>CRYPT</strong> encryption of the password (8 chars max, insecure)</p>
<pre><code class="has-line-data" data-line-start="15" data-line-end="20">$ htpasswd -b -d -c .htpassswd admin test101
Adding password for user admin
$ cat .htpassswd
admin:.ley.xCJWsLT.
</code></pre>
<p class="has-line-data" data-line-start="20" data-line-end="21">Generate <strong>bcrypt</strong> encryption of the password (very secure)</p>
<pre><code class="has-line-data" data-line-start="23" data-line-end="28">$ htpasswd -b -B -c .htpassswd admin test101
Adding password for user admin
$ cat .htpassswd
admin:$2y$05$FV6RMPVXMJDABkT4UQEs7eXpl3YM7WPOBsBQXWsT6xeUMnc6X3Gz.
</code></pre>
<p class="has-line-data" data-line-start="29" data-line-end="30">Generate <strong>MD5</strong> encryption of the password</p>
<pre><code class="has-line-data" data-line-start="32" data-line-end="37">$ htpasswd -b -c .htpasswd admin test101
Adding password for user admin
$ cat .htpasswd
admin:$apr1$O8CSqy3G$eR8kU3J0Nzg8c2fcSzpNG/
</code></pre>
<p class="has-line-data" data-line-start="37" data-line-end="38">Generate <strong>SHA</strong> encryption of the password</p>
<pre><code class="has-line-data" data-line-start="39" data-line-end="44">$ htpasswd -b -s -c .htpasswd admin test101
Adding password for user admin
$ cat .htpasswd
admin:{SHA}0qukM7hSEFaiMSqfMoUoRRQlCXA=
</code></pre>
<h3 class="code-line" data-line-start=45 data-line-end=46 ><a id="Openssl_45"></a>Openssl</h3>
<p class="has-line-data" data-line-start="47" data-line-end="48">Using Openssl to generate <strong>MD5</strong> and <strong>crypt</strong> value</p>
<pre><code class="has-line-data" data-line-start="50" data-line-end="56">$ openssl passwd -apr1 myPassword
$apr1$mFIpAjrA$NAOcmkuqusma2xhRr5URy0
$ openssl passwd -crypt myPassword
Warning: truncating password to 8 characters
oAz68B2Eul9CA
</code></pre>
<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>