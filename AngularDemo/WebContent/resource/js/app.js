/**
 * angular app file
 */
var app = angular.module('AngularDemo',[])


/*
 * Controllers
 */
app.controller('MyController', function($scope, MyFactory){
	$scope.names = [
	                'Rishi',
	                'Yash',
	                'Mohan',
	                'Sohan',
	                'Himanshu',
	                'Pranav',
	                'Ayush',
	                'Bishwadeep'
	                ];
	
	$scope.persons = [];
	
	getPer();
	
	function getPer(){
		$scope.persons = Myfactory.getPersons();
	}
})

/*
 * Filters
 **/
app.filter('MyFilter', function($scope){
	return function(x){
		var i, c, txt = "";
        for (i = 0; i < x.length; i++) {
            c = x[i];
            if (i % 2 == 0) {
                c = c.toUpperCase();
            }
            txt += c;
        }
        return txt;
	}
})

/*
 * Factory
 */

app.factory('Myfactory', function(){
	var factory = {};
	var persons = [
	               {name:'Yash Gupta', city:'Ujjain'},
	               {name:'Bishwadeep Roy', city:'Chirmiri'},
	               {name:'Ayush Shrivastava', city:'New York'},
	               {name:'Pranav Bhaskar', city:'Lucknow'}
	               ];
	
	factory.getPersons = function(){
		return persons;
	}
	return factory;
})
