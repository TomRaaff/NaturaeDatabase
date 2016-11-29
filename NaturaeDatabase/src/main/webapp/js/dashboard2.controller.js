(function(){
	angular.module("dashboard2")
		.controller("dashboard2Controller", ['$http', dashboard2Controller]);
		
	function dashboard2Controller($http){
		var vm = this;
		$http.get("/alleBestellingen").then(  
				function(response){
					vm.bestellingen = response.data;
		}); 
		
	}
})();