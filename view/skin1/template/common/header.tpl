<div class="hvp-web-width">
    <img id="mainmenu-icon" src="<?php echo HTTP_SERVER.DIR_IMAGE.'menumain-icon.png'?>" />	
    <ul id="mainmenu">
        <?php echo $mainmenu?>
    </ul>
    <a href="#"><img id="hvp-logo" src="<?php echo HTTP_SERVER.DIR_IMAGE.'logo.png'?>" /></a>
</div>
<script language="javascript">

function mainmenu(){
$(" #mainmenu ul ul ").css({display: "none"}); // Opera Fix
$(" #mainmenu li").hover(function(){
		$(this).find('ul:first').css({visibility: "visible",display: "none"}).show();
		},function(){
		$(this).find('ul:first').css({visibility: "hidden"});
		});
}

$(document).ready(function(){					
	mainmenu();
	
});
</script>
