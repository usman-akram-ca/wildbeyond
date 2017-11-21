
;(function($) {

	$('.WildBeyond-tab-nav a').on('click',function (e) {
		e.preventDefault();
		$(this).addClass('active').siblings().removeClass('active');
	});

	$('.WildBeyond-tab-nav .begin').on('click',function (e) {		
		$('.WildBeyond-tab-wrapper .begin').addClass('show').siblings().removeClass('show');
	});	
	$('.WildBeyond-tab-nav .actions, .WildBeyond-tab .actions').on('click',function (e) {		
		e.preventDefault();
		$('.WildBeyond-tab-wrapper .actions').addClass('show').siblings().removeClass('show');

		$('.WildBeyond-tab-nav a.actions').addClass('active').siblings().removeClass('active');

	});	
	$('.WildBeyond-tab-nav .support').on('click',function (e) {		
		$('.WildBeyond-tab-wrapper .support').addClass('show').siblings().removeClass('show');
	});	
	$('.WildBeyond-tab-nav .table').on('click',function (e) {		
		$('.WildBeyond-tab-wrapper .table').addClass('show').siblings().removeClass('show');
	});	


	$('.WildBeyond-tab-wrapper .install-now').on('click',function (e) {	
		$(this).replaceWith('<p style="color:#23d423;font-style:italic;font-size:14px;">Plugin installed and active!</p>');
	});	
	$('.WildBeyond-tab-wrapper .install-now.importer-install').on('click',function (e) {	
		$('.importer-button').show();
	});	


})(jQuery);
