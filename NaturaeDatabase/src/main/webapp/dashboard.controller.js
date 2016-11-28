(function(){
	angular.module("dashboard")
		.controller("dashboardController", dashboardController);
		
	function dashboardController(){
		var vm = this;
		vm.bestellingen = [
			{klantNaam: "tom", opleverdatum: "3 jan 20176", verzonden: true},
			{klantNaam: "joeri", opleverdatum: "45 jan 20176", verzonden: false},
			{klantNaam: "reindert", opleverdatum: "3 mrt 2076", verzonden: true},
		];
		

		
	}
})();