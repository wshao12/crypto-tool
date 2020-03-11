<!DOCTYPE html>
<html>
<head>
    <title>translate docker compose file to kubernetes resourses </title>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
    <meta name="description" content="generate kubernetes resources from docker compose, conver docker run to kubernetes resourses docker compose to kubernetes"/>
    <meta name="keywords" content=" online docker compose to kubernetes resources, convert docker run to kubernetes reosurces, kubernetes resources from docker compose file"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="header-script.jsp"%>


    <!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
    <script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "docker compose generator",
  "image" : "https://8gwifi.org/images/site/kube1.png",
  "url" : "https://8gwifi.org/kube1.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2020-03-11",
  "applicationCategory" : [ "docker compose convert to kubernetes resources" , "generate kube deployment from docker compose file", "docker-compose.yaml file to kubernetes conversion"],
  "downloadUrl" : "https://8gwifi.org/kube1.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "convert docker run command to docker compose",
  "softwareVersion" : "v1.0"
}
</script>


    <script type="text/javascript">
        $(document).ready(function() {

            $('#generatedc').click(function (event)
            {
                //
                $('#form').delay(200).submit()

            });

            $('#form').submit(function (event)
            {
                //
                $('#output').html('<img src="images/712.GIF"> loading...');
                event.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "KubeFunctionality", //this is my servlet

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

<h1 class="mt-4">Translate a Docker Compose File to Kubernetes Resources</h1>
<p>This tool will help to convert docker compose file to equivalent kubernetes resourses</p>
<hr>

<div id="loading" style="display: none;">
    <img src="images/712.GIF" alt="" />Loading!
</div>

<%@ include file="footer_adsense.jsp"%>

<form id="form" method="POST">
    <input type="hidden" name="methodName" id="methodName" value="CONFIG_GENERATE">

    <p>Choose Kubernetes Resources</p>
    <div class="form-row">

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="generateroption" id="podGen" value="podGen" checked>
            <label class="form-check-label" for="podGen">Pod</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="generateroption" id="deployGen" value="deployGen">
            <label class="form-check-label" for="deployGen">Deployment</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="generateroption" id="repliGen" value="repliGen">
            <label class="form-check-label" for="repliGen">ReplicaSet</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="generateroption" id="statefulGen" value="statefulGen">
            <label class="form-check-label" for="statefulGen">StatefulSet</label>
        </div>
    </div>

    <div class="col-md-8">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="pod" name="addSecurityContextOn" id="addSecurityContextOn">
            <label class="form-check-label" for="addSecurityContextOn">
                Add Security Context on Container (Defualt is Pod)
            </label>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group">
            <label for="dockerstuff">Paste your Docker Compose file</label>
            <textarea class="form-control" name="dockerstuff" id="dockerstuff" cols="100" rows="20">version: "3.7"
services:
  db:
    image: postgres:9.4
    volumes:
      - db-data:/var/lib/postgresql/data
    networks:
      - backend
    deploy:
      placement:
        constraints: [node.role == manager]

  vote:
    image: dockersamples/examplevotingapp_vote:before
    ports:
      - "5000:80"
    networks:
      - frontend
    depends_on:
      - redis
    deploy:
      replicas: 2
      update_config:
        parallelism: 2
      restart_policy:
        condition: on-failure
networks:
  frontend:
  backend:

volumes:
  db-data:</textarea>
        </div>
    </div>
    <input type="button" class="btn btn-primary" id="generatedc" name="Generate Kubernetes Resources" value="Generate Kubernetes resources">
</form>

<hr>

<div id="output"></div>

<hr>

<div class="sharethis-inline-share-buttons"></div>

<%@ include file="footer_adsense.jsp"%>

<hr>
<h2 class="mt-4">Try Other Convertor</h2>
<div class="row">
    <div>
        <ul>
            <li><a href="kube.jsp">Kubertes Spec Generate(Pods/svc)</a></li>
            <li><a href="dc.jsp">Docker Compose Generator</a></li>
            <li><a href="dc1.jsp">Docker run to Docker Compose Conversion</a></li>
            <li><a href="dc2.jsp">Docker Compose to docker run Conversion</a></li>
            <li><a href="kube1.jsp">Docker Compose to Kubernetes conversion</a></li>
            <li><a href="jsonparser.jsp">JSON-2-YAML Convertor</a></li>
            <li><a href="yamlparser.jsp">YAML-2-JSON Convertor</a></li>
            <li><a href="qrcodegen.jsp">QR Code generate</a></li>
            <li><a href="hexdump.jsp">Online Hexdump Generate</a></li>
            <li><a href="diff.jsp">Compare text differences</a></li>
            <li><a href="UrlEncodeDecodeFunctions.jsp">URL Encoders/Decoders</a></li>
            <li><a href="HexToStringFunctions.jsp">Hex To String Conversion</a></li>
            <li><a href="HexToStringFunctions.jsp">String To Hex Conversion</a></li>
            <li><a href="base64Hex.jsp">Base64 To Hex (ViceVersa)</a></li>
            <li><a href="Base64Functions.jsp">Base64 Encode/Decode</a></li>
            <li><a href="base64image.jsp">Base64 Image Converter(data:image/png)</a></li>
            <li><a href="StringFunctions.jsp">Various String Functions</a></li>
        </ul>
    </div>
</div>

<hr>
<h2 class="mt-4">Kubernetes Topic </h2>
<div>
    <ul>
        <li>
            <a href="docs/ansible-kube-install.jsp">kubernetes install on using ansible</a>
        </li>
        <li>
            <a href="docs/kube-install.jsp">kube install on in centos7/ubuntu7</a>
        </li>
        <li>
            <a href="docs/kube-dash.jsp">kubernetes Dashbaord Setup</a>
        </li>
        <li>
            <a href="docs/kube-pods.jsp">Pod,Cluster,Deploy,ReplicaSet Light Dive</a>
        </li>
        <li>
            <a href="docs/kube-nginx.jsp">kubernetes secure nginx deployment</a>
        </li>
        <li>
            <a href="docs/kube-ports.jsp">kubernetes Port, Targetport and NodePort</a>
        </li>
        <li>
            <a href="docs/kube-namespaces.jsp">kubernetes Namespace</a>
        </li>
        <li>
            <a href="docs/kube-auth.jsp">kubenetes Auth,Authorization,Admission</a>
        </li>
        <li>
            <a href="docs/kube-rbac.jsp">kubernetes Role-Based Access Control</a>
        </li>
        <li>
            <a href="docs/CVE-2018-1002105.jsp">Kubernetes Privilege Escalation Vulnerability</a>
        </li>
        <li>
            <a href="docs/prometheus-dashboard.jsp">Prometheus Dashboard Access</a>
        </li>
        <li>
            <a href="docs/kube-mysql.jsp">Kubernetes mysql installation</a>
        </li>
        <li>
            <a href="docs/kube-jenkins.jsp">Kubernetes Jenkins installation</a>
        </li>
        <li>
            <a href="docs/podman-jenkins.jsp">Podman Jenkins installation</a>
        </li>
        <li>
            <a href="docs/kube-mariadb.jsp">Kubernetes mariadb installation</a>
        </li>
        <li>
            <a href="docs/kube-wordpress.jsp">Kubernetes wordpress installation</a>
        </li>
        <li>
            <a href="docs/kube-drupal.jsp">Kubernetes drupal installation</a>
        </li>
        <li>
            <a href="docs/kube-traefik.jsp">Kubernetes traefik installation</a>
        </li>

        <li>
            <a href="docs/kube-traefik2.jsp">Kubernetes Ingress traefik </a>
        </li>

        <li>
            <a href="docs/kube-debug.jsp">kubernetes service external ip pending ?</a>
        </li>

        <li>
            <a href="docs/kube-Istio.jsp">Service Mesh With Istio</a>
        </li>

        <li>
            <a href="docs/kube-externalname.jsp">Access SVC in Another Namespaces</a>
        </li>

        <li>
            <a href="docs/kube-java.jsp">kubernetes Java client example</a>
        </li>

        <li>
            <a href="docs/kube-lets.jsp">kubernetes letsencrypt deploy wild card certificate</a>
        </li>

        <li>
            <a href="docs/docker-install.jsp">Right Way to Install Docker</a>
        </li>

        <li>
            <a href="docs/docker-privaterepo.jsp">Docker Private repo with SSL and AUTH</a>
        </li>

        <li>
            <a href="docs/docker-baseimage.jsp">Creating Docker Base Image</a>
        </li>

        <li>
            <a href="docs/containers.jsp">Container Runtime (RUNC,RKT,CRI-O,Conatinerd) </a>
        </li>

        <li>
            <a href="docs/podman-install.jsp">Podman Install on Ubuntu/Debian</a>
        </li>
    </ul>
</div>


<hr>


<%@ include file="thanks.jsp"%>
<hr>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>