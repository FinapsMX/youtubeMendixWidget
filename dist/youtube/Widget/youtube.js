dojo.provide("youtube.Widget.youtube");


mendix.widget.declare("youtube.Widget.youtube",
{
    addons  : [mendix.addon._Contextable],
    inputargs: { 
				  value : ''
											},

    postCreate : function()
    {
      logger.debug(this.id + ".postCreate");
      this.actRendered();
    },

    applyContext : function(context, callback) {
        var object = context.getObject();
        var toGet = this.value             
        if (object != null) {
            this.domNode.innerHTML = '<iframe width="560" height="315" src="'+ object.get(toGet) +'" frameborder="0" allowfullscreen></iframe>'; 
        }

        callback && callback();
    },
		


    uninitialize : function()
    {
        logger.debug(this.id + ".uninitialize");
    }
  

});