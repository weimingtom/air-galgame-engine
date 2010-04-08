package AGE.UI.management
{
	import AGE.UI.control.*;
	import AGE.UI.factory.*;
	import AGE.event.*;
	
	import flash.filesystem.*;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.WindowedApplication;
	
	public class UImanagement
	{
		public var main:WindowedApplication;
		
		public function UImanagement(main:WindowedApplication)
		{
			this.main=main;
		}
		
		public function buildUI(UIArray:ArrayCollection):void{
			var tempUIcontrol:Object=new Object();
//			var control:Object=new Object();
			for(var i:int=0;i<=UIArray.length-1;i++){
				tempUIcontrol=UIArray.getItemAt(i);
				var control:Object=new Object();
				switch(tempUIcontrol.type){
					case "textBox":
						control=TextBoxFactory.manufacture(new Number(tempUIcontrol.x),
						new Number(tempUIcontrol.y),new Number(tempUIcontrol.width),
						new Number(tempUIcontrol.height),new Number(tempUIcontrol.textX),
						new Number(tempUIcontrol.textY),tempUIcontrol.src,
						new Number(tempUIcontrol.alpha));
						main.dispatchEvent(new AddControlEvent(control));
						if(tempUIcontrol.isMain){
							main.dispatchEvent(new SetMainTextBoxEvent(control as TextBox));
						}
						break;
					case "click_gif":
						control=ClickGifShowerFactory.manufacture(new Number(tempUIcontrol.x),
						new Number(tempUIcontrol.y),new Number(tempUIcontrol.width),
						new Number(tempUIcontrol.height),tempUIcontrol.src);
						main.dispatchEvent(new AddControlEvent(control));
						break;
					case "role":
						control=RoleFactory.manufacture(new Number(tempUIcontrol.x),
						new Number(tempUIcontrol.y),new Number(tempUIcontrol.width),
						new Number(tempUIcontrol.height),tempUIcontrol.positionName);
						main.dispatchEvent(new AddControlEvent(control));
						break;
				}
			}
		}
	}
}