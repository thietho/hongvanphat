<div class="section" id="sitemaplist">

	<div class="section-title"><?php echo @$dash_header ?></div>
    
    <div class="section-content padding1">
    
    	<form name="frm" id="frm" action="<?php echo @$action?>" method="post" enctype="multipart/form-data">
        
        	<div class="button right">
            	<input type="button" value="<?php echo @$button_save ?>" class="button" onClick="save()"/>   
     	        <input type="hidden" name="mediaid" value="<?php echo @$item['mediaid']?>">
                
            </div>
            <div class="clearer">^&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        	<div>
            	<h3><?php echo @$dash_infor_header ?></h3><br />
            	<p>
            		<label><?php echo @$dash_title ?></label><br />
					<input type="text" name="Title" value="<?php echo @$item['Title']?>" class="text" size=60 />
            	</p>
                <p>
            		<label><?php echo @$dash_slogan ?></label><br />
					<input type="text" name="Slogan" value="<?php echo @$item['Slogan']?>" class="text" size=60 />
            	</p>
                  
                <p>
            		<label><?php echo @$dash_currency ?></label><br />
					<input type="text" name="Currency" value="<?php echo @$item['Currency']?>" class="text" size=60 />
            	</p>
                
                <p>
            		<label><?php echo @$dash_email ?></label><br />
					<input type="text" name="EmailContact" value="<?php echo @$item['EmailContact']?>" class="text" size=60 />
            	</p>
                <p>
                    <label>Tiêu đê phiếu</label><br />
                    <textarea name="HeaderBill"><?php echo @$item['HeaderBill']?></textarea>
                        
                </p>
                <p>
                    <label>Keyword</label><br />
                    <textarea name="Keyword"><?php echo @$item['Keyword']?></textarea>
                        
                </p>
				<p>
                    <label>Mô tả</label><br />
                    <textarea name="Description"><?php echo @$item['Description']?></textarea>
                        
                </p>
            </div>
            <div>
            	<?php foreach($statusPro as $key => $val){ ?>
            	<p>
                	<label><?php echo $val?></label>
                    <input type="button" class="button" value="Chọn sản phẩm" onClick="browseProduct('add<?php echo $key?>()');">
                    <div id="<?php echo $key?>"><?php echo $item[$key]?></div>
                    <div class="clear"></div>
                </p>
                <script language="javascript">
				function add<?php echo $key?>()
				{
					$('.selectProduct').click(function(e) {
							var obj = new Object();
							obj.id = 0;
							obj.mediaid = $(this).attr('ref');
							obj.imagepath = $(this).attr('image');
							obj.title = $(this).attr('title');
							obj.code = $(this).attr('code');
							obj.unit = $(this).attr('unit');
							obj.price = $(this).attr('price');
							obj.pricepromotion = $(this).attr('pricepromotion');
							obj.discountpercent = $(this).attr('discountpercent');
							obj.productname = $(this).attr('productname');
							obj.brandname = $(this).attr('brandname');
							
							var str = '<div class="left dashboardproduct"><img src="'+ obj.imagepath +'">'+ obj.productname +'<input type="hidden" name="<?php echo $key?>[]" value="'+ obj.mediaid +'"><input type="button" class="button btn_removeProduct" value="Xóa"></div>';
							
							$('#<?php echo $key?>').append(str);
							$("#popupbrowseproduct").dialog("close");
							intRemove();
					});
				}
				</script>
                <?php } ?>
            </div>
        </form>
    
    </div>
    
</div>

<script language="javascript">

function save()
{
	$.blockUI({ message: "<h1><?php echo @$announ_infor ?></h1>" }); 
	/*var oEditor = CKEDITOR.instances['editor1'] ;
	var pageValue = oEditor.getData();
	$('textarea#editor1').val(pageValue);*/
	$.post("?route=common/dashboard/save", $("#frm").serialize(),
		function(data){
			if(data == "true")
			{
				//window.location.reload();
			}
			$.unblockUI();
		}
	);
}
function intRemove()
{
	$('.btn_removeProduct').click(function(e) {
		$(this).parent('div').remove();
	});
}
$(document).ready(function(e) {
    intRemove()
});
</script>
