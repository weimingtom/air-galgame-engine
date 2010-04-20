package AGE.UI.management
{
	import AGE.UI.control.*;
	import AGE.UI.factory.*;
	import AGE.event.*;
	
	import flash.filesystem.*;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.WindowedApplication;
	
	/**
	 * 用户界面管理类
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class UImanagement
	{
		/**
		 * 
		 */
		public var main:WindowedApplication;
		
		/**
		 * 
		 * @param main 
		 */
		public function UImanagement(main:WindowedApplication)
		{
			this.main=main;
		}
		
		/**
		 * 
		 * @param UIArray 
		 */
		public function buildUI(UIArray:ArrayCollection):void{
			var tempUIcontrol:Object=new Object();
			//			var control:Object=new Object();
			for(var i:int=0;i<=UIArray.length-1;i++){
				tempUIcontrol=UIArray.getItemAt(i);
				var control:Object=new Object();
				switch(tempUIcontrol.type){
					case "textBox":
						control=TextBoxFactory.manufacture(tempUIcontrol);
						main.dispatchEvent(new AddControlEvent(control));
						if(tempUIcontrol.isMain){
							main.dispatchEvent(new SetMainTextBoxEvent(control as TextBox));
						}
						break;
					case "click_gif":
						control=ClickGifShowerFactory.manufacture(tempUIcontrol);
						main.dispatchEvent(new AddControlEvent(control));
						break;
					case "role":
						control=RoleFactory.manufacture(tempUIcontrol);
						main.dispatchEvent(new AddControlEvent(control));
						break;
				}
			}
		}
	}
}