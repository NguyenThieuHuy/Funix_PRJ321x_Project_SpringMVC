	var xValues = [	"2022-10-02","2022-11-02","2022-03-05","2022-05-05","2022-06-03","2022-06-12","2022-07-29","2022-07-30","2022-08-09","2022-08-10"];
	var yValues = [320,123,241,542,500,321,900,467,733,800];
    new Chart("myChart", {
      type: "line",
      data: {
        labels: xValues,
        datasets: [{
          fill: false,
          lineTension: 0,
          backgroundColor: "rgba(0,0,255,1.0)",
          borderColor: "rgba(0,0,255,0.1)",
          data: yValues
        }]
      },
      options: {
        legend: {display: false},
        scales: {
          yAxes: [{ticks: {min: 100, max:1000}}],
        }
      }
    });
    
	// Get the element with id="defaultOpen" and click on it
	function openPage(pageName,elmnt,color) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].style.backgroundColor = "";
	  }
	  document.getElementById(pageName).style.display = "block";
	  elmnt.style.backgroundColor = color;
	}
	
	document.getElementById("defaultOpen").click();