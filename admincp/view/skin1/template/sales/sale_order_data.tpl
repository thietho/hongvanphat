<table class="data-table" cellpadding="0" cellspacing="0">
    <thead>
        <tr class="tr-head">
            
            <th width="10px">STT</th>
            <th>Mã phiếu</th>
            <th>Ngày bán</th>
            <th>Khách hàng</th>
            <th>Tổng tiền bán</th>
            <th>Ghi chú</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    	<?php foreach($data_order as $key => $item){ ?>
        <tr id="order-<?php echo @$item['id']?>" orderid="<?php echo @$item['id']?>">
        	<td><center><?php echo @$key+1 ?></center></td>
            <td>
            	<a onclick="objdl.viewPX(<?php echo @$item['id']?>,'')"><?php echo @$item['maphieu']?></a>
                <?php if(@$this->user->checkPermission("sales/sale/edit")==true){ ?>
                <input type="button" class="button" value="Edit" onClick="saleOrder.editOrder(<?php echo @$item['id']?>);$('#listordercomplete').dialog( 'close' );">
                <?php }?>
            </td>
            <td><?php echo @$this->date->formatMySQLDate($item['ngaylap'])?></td>
            <td>
            	<?php if(@$item['tenkhachhang'])
                    {
                        echo $item['tenkhachhang'];
                        echo ($item['dienthoai'] != '') ?' - '.$item['dienthoai']:'';
                        echo ($item['diachi'] != '') ?' - '.$item['diachi']:'';
                    }
                ?>
            </td>
            <td class="number"><?php echo @$this->string->numberFormate($item['tongtien'])?></td>
            <td><?php echo @$item['ghichu']?></td>
            <td><?php echo $this->document->getCategory(@$item['trangthai'])?></td>
        </tr>
        <?php } ?>
    </tbody>

</table>