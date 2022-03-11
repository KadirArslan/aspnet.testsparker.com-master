<style>
.hlist dd, .hlist dt, .hlist li {
    margin: 0;
    display: inline;
}
</style>
<div id="toc" class="toc plainlinks hlist" style="text-align:left;">
<div id="toctitle" style="text-align:center;display:inline-block;"><span style="font-weight:bold;">Contents&nbsp;:</span></div>
<div style="margin:auto;white-space:nowrap;display:inline-block;">
<ul>
<li><a href="?cat=A">A</a></li>
<li><a href="?cat=B">B</a></li>
<li><a href="?cat=C">C</a></li>
<li><a href="?cat=D">D</a></li>
<li><a href="?cat=E">E</a></li>
<li><a href="?cat=F">F</a></li>
<li><a href="?cat=G">G</a></li>
<li><a href="?cat=H">H</a></li>
<li><a href="?cat=I">I</a></li>
<li><a href="?cat=J">J</a></li>
<li><a href="?cat=K">K</a></li>
<li><a href="?cat=L">L</a></li>
<li><a href="?cat=M">M</a></li>
<li><a href="?cat=N">N</a></li>
<li><a href="?cat=O">O</a></li>
<li><a href="?cat=P">P</a></li>
<li><a href="?cat=Q">Q</a></li>
<li><a href="?cat=R">R</a></li>
<li><a href="?cat=S">S</a></li>
<li><a href="?cat=T">T</a></li>
<li><a href="?cat=U">U</a></li>
<li><a href="?cat=V">V</a></li>
<li><a href="?cat=W">W</a></li>
<li><a href="?cat=X">X</a></li>
<li><a href="?cat=Y">Y</a></li>
<li><a href="?cat=Z">Z</a></li>
</ul>
</div>
</div>

<?php
	if (isset($_GET["cat"])){
		if (strlen($_GET["cat"])>0){
		
?>
			<h1>Category: <?php echo @$_GET["cat"];?>
			<h3>Sorry. We didnt found any customer on this category</h3>
	
<?php 
	}
	}
?>