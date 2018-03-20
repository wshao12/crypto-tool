<!DOCTYPE html>
<html>
<head>
	<title>scrypt Hash Generator, Hash Checker </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="description"
		  content="scrypt password hash generation online and hash checker scrypt reverse,scrypt hash online,scrypt hash cracker,scrypt decrypt laravel,scrypt password encoder,scrypt encryption,how scrypt works explained  "/>
	<meta name="keywords"
		  content="scrypt online, scrypt hash calculator,scrypt hash checker,scrypt tutorial,scrypt,OpenPGP,Good Password Hashing Functions,PBKDF2,pbkdf2,scrypt,OpenPGP, how scrypt works"/>

	<meta name="author" content="CRYPO" />
	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />

	<%@ include file="include_css.jsp"%>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Online Scrypt Hash Generator, Hash Checker",
  "image" : "https://github.com/anishnath/crypto-tool/blob/master/scrypt.png",
  "url" : "https://8gwifi.org/scrypt.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-02-22",
  "applicationCategory" : [ "Scrypt reverse", "Scrypt online", "Scrypt hash calculator","OpenPGP,Good Password Hashing Function","Scrypt hash online","Scrypt laravel","Good Password Hashing Functions"],
  "downloadUrl" : "https://8gwifi.org/scrypt.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "Scrypt password hash generation online and hash checker bcrypt reverse,Scrypt hash online,bcrypt hash cracker,Scrypt Password Hashing Functions",
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

			$('#salt').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#workparam').change(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#memoryparam').change(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#parallelizationparam').change(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#length').change(function(event) {
				//
				// event.preventDefault();
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
					   value="CALCULATE_SCRYPT">

				<fieldset name="SCrypt">

					<legend>
						<b> SCrypt Calculation</b>
					</legend>

					<table border="1" style="width:100pc">
						<tr>
							<th>Input </th>
							<th>Output </th>
							<th>Scypt Password Hashing </th>
						</tr>

						<tr>
							<td>
								<br/>
								Password <input id="password" type="text" name="password" size="30" placeholder="Type the password">
								<br/>

								Validate Hash <input id="hash" type="text" name="hash"
													 size="50"  placeholder=" SCrypt hash to check against the password.">

							</td>
							<td>
								<div id="output"> </div>

							</td>

							<td width="60%">
								<p>The scrypt key derivation function was originally developed by Colin Percival and published in 2009 for use in the Tarsnap online backup system and is designed to be far more secure against hardware brute-force attacks than alternative functions such as PBKDF2 or bcrypt.</p>
								Digest sizes	variable
								Block sizes	variable
								Rounds	variable
							</td>

						</tr>

						<tr>

							<td width="25%">
								<b>N</b>
								<select name="workparam" id="workparam">
									<option selected value="<%="2048"%>">2048</option>
									<%
										String[] validList =  { "2", "4",
												"8", "16", "32",
												"64", "128", "256",
												"512", "1024",
												"2048", "4096", "8192",
												"16384", "32768", "65536" };
										for (int i = 0; i < validList.length; i++) {
											String param = validList[i];
									%>
									<option value="<%=param%>"><%=param%></option>
									<%	} %>
								</select>
								<br/>

								<b>	R </b>
								<select name="memoryparam" id="memoryparam">
									<option selected value="<%="8"%>">8</option>
									<%
										for (int i = 1; i < 200; i++) {
									%>
									<option value="<%=i%>"><%=i%></option>
									<%	} %>
								</select>
								<br/>
								<b> P</b>

								<select name="parallelizationparam" id="parallelizationparam">
									<option selected value="<%="1"%>">1</option>
									<%
										for (int i = 1; i < 20; i++) {
									%>
									<option value="<%=i%>"><%=i%></option>
									<%	} %>
								</select>

								<br/>
								<b> Length </b>

								<select name="length" id="length">
									<option selected value="<%="32"%>">32</option>
									<%
										for (int i = 1; i < 3000; i++) {
									%>
									<option value="<%=i%>"><%=i%></option>
									<%	} %>
								</select>
								<br/>

								<b> S </b> <input id="salt" type="text" name="salt" size="30" value="randomsaltvalue" placeholder="salt">
							</td>
							<td width="50%">
								<p>cpuCost(N) - cpu cost of the algorithm (as defined in scrypt this is N). must be power of 2 greater than 1. Default is currently 16,348 or 2^14) <br/>
								<p>memoryCost(R) - memory cost of the algorithm (as defined in scrypt this is r) Default is currently 8. </p>
								<p>parallelization(P) - the parallelization of the algorithm (as defined in scrypt this is p) Default is currently 1. Note that the implementation does not currently take advantage of parallelization.</p><br/>
								<p>keyLength - key length for the algorithm (as defined in scrypt this is dkLen). The default is currently 32. </p>
								<p>saltLength(S) - salt length (as defined in scrypt this is the length of S). The default is currently 64 <p><br/>
							</td>
							<td>
								The recommended parameters for interactive logins as of 2009 are N=16384,
								r=8, p=1. They should be increased as memory latency and CPU parallelism
								increases. Remember to get a good random salt
							</td>

						</tr>


					</table>


				</fieldset>

			</form>
			<%@ include file="include_security_links.jsp"%>
			<%@ include file="footer.jsp"%>
		</section>
	</article>

</div>
</body>
</html>