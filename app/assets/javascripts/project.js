var ProjectWindow = function(){
	this.open = false;
	this.project = null;
}

ProjectWindow.prototype.close = function(){
	jQuery("#project-window").remove();
	this.open = false;
}

ProjectWindow.prototype.open = function(project, index){
	this.project = project;
	if(this.open){
		if (Math.floor(this.index / 3) == Math.floor(index / 3)){
			jQuery("#project-window").html(this.css());
		}else{
			this.index = index;
			jQuery("#project-window").remove();
			jQuery("#project-window").eq(index).before(this.css());
		}
	}else{
		this.open = true;
		this.index = index;
		jQuery("#project-window").eq(index).before(this.css());
	}
}

ProjectWindow.prototype.css = function(title, image, description){
	return "<div id='"+title+"'><div class='image'><img src='"+image+"'/></div><div class='information'><h1>"+title+"</h1><p>"+description+"</p></div></div>";
}

var Project = function(title, image, description) {
	this.title = title;
	this.image = image;
	this.description = description;
};

jQuery(".project").click(function(){
	var controller = jQuery(this).attr("data-controller");
	var id = jQuery(this).attr("data-id");
	jQuery.ajax({
        type: "GET",
        url: "/"+controller+"/"+id,
        dataType: "JSON" 
    }).success(function(data){
    	projectWindow.open(new Project(data.title, data.image, data.description), 0);
    });
});