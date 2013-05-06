var Project = function(title, image, description) {
	this.title = title;
	this.image = image;
	this.description = description;
};

Project.prototype.display = function() {
	alert(this.title);
};

jQuery(".thumbnail").click(function(){
	var id = jQuery(this).attr("data-id");
	$.ajax({
        type: "GET",
        url: "/brandings/"+id,
        dataType: "JSON" 
    }).success(function(data){
    	jQuery("body").append(data);
   		// var project = new Project(data.title, data.photos[0], data.description);
			// project.display();
    });
});