//Import gith
var gith = require('gith');

//Listen on port 3456
gith = gith.create(3456);

//Setup gith params
gith({repo: 'JoeReid/WebHook-Test'}).on('all', function() {
	if (payload.branch === 'master') {
		//exec
		exec_sh('test.sh');
	}
});

//function to exec shellscripts
function exec_sh(fpath) {
	//Import exec
	var exec = require('child_process').exec;
	exec(fpath, function(error, stdout, stderr) {
		console.log("exec done");	
	});
}
