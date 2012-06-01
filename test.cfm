
<cfscript>
	myStruct= {a:1,b:2};
	myArr = [1,2,3];
	myObj = new myClass();
	myObj.a = 1;
	myObj.b = 2;
	myObj.c = 3;

	_ = new Underscore();
	_myStruct = new Underscore(myStruct);
	_myArr = new Underscore(myArr);
	_myObj = new Underscore(myObj);

	_.forEach(myStruct, function(val, key) {
		writeDump(key & ": " & val);
	});
	writeOutput("<br />");
	
	_.forEach(myArr, function(val, key) {
		writeDump(key & ": " & val);
	});
	writeOutput("<br />");
	
	_.forEach(myObj, function(val, key) {
		writeDump(key & ": " & val);
	});	
	writeOutput("<br />");
	
	collectObj = _myObj.collect(iterator = function(val, key) {
		return(key & ": " & val);
	});	
	writeDump(collectObj);
	writeOutput("<br />");

	collectArr = _myArr.collect(iterator = function(val, key) {
		return(key & ": " & val);
	});	
	writeDump(collectArr);
	writeOutput("<br />");

	reduceObj = _myObj.reduce(iterator = function(memo, num){
		return memo + num;
	}, memo = 0);
	writeDump(reduceObj);
	writeOutput("<br />");

	reduceArr = _myArr.reduce(iterator = function(memo, num){
		return memo + num;
	}, memo = 0);
	writeDump(reduceArr);	

	even = _.find([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
	writeDump(even);
	writeOutput("<br />");

	any = _.any(obj = [0, 'yes', false], iterator = function(val) {
		return val;
	});
	writeDump(any);
	writeOutput("<br />");	

	evens = _.filter([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
	writeDump(evens);
	writeOutput("<br />");	
</cfscript>