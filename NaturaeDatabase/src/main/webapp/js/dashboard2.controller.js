(function(){
	angular.module("dashboard2")
		.controller("dashboard2Controller", dashboard2Controller);
		
	function dashboard2Controller(){
		var vm = this;
		$.get("/alleBestellingen",  
				function(bestellingen){
					vm.bestellingen = bestellingen;			
		}); 
		
		

		
	}
})();