<div class="hvp-web-width">
    <img id="mainmenu-icon" src="<?php echo HTTP_SERVER.DIR_IMAGE.'menumain-icon.png'?>" />	
    <ul id="mainmenu">
        <?php echo $mainmenu?>
    </ul>
    <a href="#"><img id="hvp-logo" src="<?php echo HTTP_SERVER.DIR_IMAGE.'logo.png'?>" /></a>
</div>
<script language="javascript">

function mainmenu()
{
	$(" #mainmenu ul ul ").css({display: "none"}); // Opera Fix
	$("#mainmenu li").click(function(e) {
		if($(this).find('ul:first').css('display') == 'none')
        	$(this).find('ul:first').css({'display': "block"})
		else
			$(this).find('ul:first').css({'display': "none"})
    });
	/*$("#mainmenu li").hover(function(){
			$(this).find('ul:first').css({display: "none"}).show();
			},function(){
			$(this).find('ul:first').css({'display':'none'});
			});*/
}

$('#mainmenu-icon').click(function(e) {
    if($('#mainmenu').css('display') == 'none')
		$('#mainmenu').show();
	else
		$('#mainmenu').hide();
	
});

$(document).ready(function(){					
	mainmenu();
	
});
</script>
