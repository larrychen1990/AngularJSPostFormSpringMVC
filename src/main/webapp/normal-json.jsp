<!DOCTYPE html>
<html data-ng-app="serviceModule">
<head>
<meta charset="ISO-8859-1">
<title>AngularJS POST Spring MVC</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<script type="text/javascript">
 
	var serviceModule = angular.module('serviceModule', []);
	
	serviceModule.controller("AngularJSPostController", function($scope, $http) {
		
			$scope.variable = "AngularJS POST Spring MVC Example:";	
			var dataObj = {
					"name" : 'Java Honk',
					"location" : "NY",
					"phone" : "123456789",
					"id" : 1
			};		
			
// 			var response = $http.post('PostService', dataObj);
// 			response.success(function(data, status, headers, config) {
// 				$scope.responseData = data;
// 			});
// 			response.error(function(data, status, headers, config) {
// 				alert( "Exception details: " + JSON.stringify({data: data}));
// 			});
			
			$http({
				url:"PostService",
				method:'POST',
				data:dataObj
// 				data:JSON.stringify(dataObj)
			}).success(function(data, status, headers, config) {
				$scope.responseData = data;
			}).error(function(data, status, headers, config) {
				alert( "Exception details: " + JSON.stringify({data: data}));
			})
		
	});
	
</script>
</head>
<body data-ng-controller="AngularJSPostController"> 
	
	<div>
		<h4>{{variable}}</h4>
		<b>You had sent below data through post:</b>
		<p>Response:  {{responseData}}</p>		
	</div>
 
</body>
</html>