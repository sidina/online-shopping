$(function (){
	//solving the menu problem
	switch(menu){
	
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Procucts':
		$('#listProducts').addClass('active');
		break;
	default:
		$('#listProducts').addClass('active');
	    $('#a_'+menu).addClass('active');
	break;
	}	
});