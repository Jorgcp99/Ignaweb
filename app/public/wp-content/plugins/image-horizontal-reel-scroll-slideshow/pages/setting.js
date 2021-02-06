function Ihrss_submit()
{
	if(document.Ihrss_form.Ihrss_path.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_path);
		document.Ihrss_form.Ihrss_path.focus();
		return false;
	}
//	else if(document.Ihrss_form.Ihrss_link.value=="")
//	{
//		alert(Ihrss_adminscripts.Ihrss_link);
//		document.Ihrss_form.Ihrss_link.focus();
//		return false;
//	}
	else if(document.Ihrss_form.Ihrss_target.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_target);
		document.Ihrss_form.Ihrss_target.focus();
		return false;
	}
	else if(document.Ihrss_form.Ihrss_title.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_title);
		document.Ihrss_form.Ihrss_title.focus();
		return false;
	}
	else if(document.Ihrss_form.Ihrss_type.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_type);
		document.Ihrss_form.Ihrss_type.focus();
		return false;
	}
	else if(document.Ihrss_form.Ihrss_status.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_status);
		document.Ihrss_form.Ihrss_status.focus();
		return false;
	}
	else if(document.Ihrss_form.Ihrss_order.value=="")
	{
		alert(Ihrss_adminscripts.Ihrss_order);
		document.Ihrss_form.Ihrss_order.focus();
		return false;
	}
	else if(isNaN(document.Ihrss_form.Ihrss_order.value))
	{
		alert(Ihrss_adminscripts.Ihrss_order);
		document.Ihrss_form.Ihrss_order.focus();
		return false;
	}
}

function Ihrss_delete(id)
{
	if(confirm(Ihrss_adminscripts.Ihrss_delete))
	{
		document.frm_Ihrss_display.action="options-general.php?page=image-horizontal-reel-scroll-slideshow&ac=del&did="+id;
		document.frm_Ihrss_display.submit();
	}
}

function Ihrss_redirect()
{
	window.location = "options-general.php?page=image-horizontal-reel-scroll-slideshow";
}

function Ihrss_help()
{
	window.open("http://www.gopiplus.com/work/2011/05/08/wordpress-plugin-image-horizontal-reel-scroll-slideshow/");
}