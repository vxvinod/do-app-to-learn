CommentPoller = {
	
	 poll: function(){
	 		setTimeout(this.request, 5000);
	 },

	 request: function(){
	 	$.get($("#comments").data('url'), {after:$(".comment").last().data('id')});
	 }
};

(function(){

	if ($("#comments").length > 0){
		CommentPoller.poll();
	}
})();

