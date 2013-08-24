<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="document.aspx.cs" Inherits="Dawn.Web.document" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMenu" runat="server">
    <div class="nav-collapse collapse coreos-nav-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="home.aspx">Home</a>
            </li>
            <li>
                <a href="home.aspx">Service</a>
            </li>
            <li class="active">
                <a href="document.aspx">Documentation</a>
            </li>
        <%--    <li>
                <a href="http://coreos.com/blog/">Blog</a>
            </li>--%>
            <li>
                <a href="about.aspx">About</a>
            </li>
            <li>
                <a href="contact.aspx">Contact</a>
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="masthead hexagons coreos-header" style="height: 150px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Documentation</h1>
                    <p></p>
                </div>
                <p>
                    <div class="other_banner_header" style="position:inherit; float:right; margin-right:50px;">Duis eget nisl sit amet eros sagittis</div>
                </p>
                
                <!--/.col-lg-12-->
            </div>
            <!--/.row-->
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="coreos-docs-supernav">
                    <ul class="nav">
                        <li class="active"><a href="/docs/vagrant/">Running on Vagrant</a></li>
                        <li><a href="/docs/ec2/">Running on Amazon EC2</a></li>
                        <li><a href="/docs/qemu/">Running on QEMU/KVM</a></li>
                        <li><a href="/docs/using-coreos/">Using CoreOS</a></li>
                        <li><a href="/docs/sdk/">Developer SDK Guide</a></li>
                        <li><a href="/docs/oem/">Notes for distributors</a></li>
                        <li><a href="https://github.com/coreos/">Github</a></li>

                    </ul>
                </div>
                <!--/.coreos-docs-supernav-->
                <div class="coreos-docs-sidebar">
                    <ul class="nav coreos-docs-sidenav affix-top">
                        <li><a href="#download-and-install-vagrant">Download and Install Vagrant</a></li>
                        <li><a href="#startup-coreos">Startup CoreOS</a></li>
                        <li><a href="#using-coreos">Using CoreOS</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="coreos-docs">
                    <h1>Running CoreOS on Vagrant</h1>

                    <p>CoreOS is currently in heavy development and actively being tested. These instructions will bring up a single CoreOS instance under Vagrant.</p>

                    <p>You can direct questions to the <a href="irc://irc.freenode.org:6667/#coreos">IRC channel</a> or <a href="https://groups.google.com/forum/#!forum/coreos-dev">mailing list</a>.</p>

                    <a id="download-and-install-vagrant"></a>
                    <h2>Download and Install Vagrant</h2>

                    <p>
                        Vagrant is simple to use command line virtual machine manager. There are
install packages available for Windows, Linux and OSX. Find the latest
installer on the <a href="http://downloads.vagrantup.com/">Vagrant downloads page</a>. Be sure to get
version 1.2.3 or greater.
                    </p>

                    <a id="startup-coreos"></a>
                    <h2>Startup CoreOS</h2>

                    <p>Now that you have vagrant installed you can bring up a CoreOS instance.</p>

                    <p>
                        The following commands will first grab a Vagrantfile which file tells
Vagrant where it can find the latest disk image of CoreOS. Then Vagrant
will download the image and start it for you.
                    </p>

                    <pre><code>git clone https://github.com/coreos/coreos-vagrant/
cd coreos-vagrant
vagrant up
vagrant ssh
</code></pre>

                    <a id="using-coreos"></a>
                    <h2>Using CoreOS</h2>

                    <p>Now that you have a machine booted it is time to play around. Check out the <a href="/docs/using-coreos/">Using CoreOS</a> guide.</p>

                </div>
                <!--/.coreos-docs-->
            </div>
        </div>

        <!-- Quick back to top
      <a href="#" class="bs-top">
        Back to top
      </a> -->
    </div>

</asp:Content>
