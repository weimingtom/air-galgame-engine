package AGE.event
{
	import flash.events.Event;
	
	import AGE.UI.control.TextBox;
	
	/**
	 * 添加文本框控件事件
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class SetMainTextBoxEvent extends Event
	{
		/**
		 * 
		 */
		static public const SET_MAIN_TEXTBOX:String = "setmaintextbox";
		/**
		 * 
		 */
		public var mainTextBox:TextBox;
		
		/**
		 * 添加控件触发事件
		 * @param mainTextBox 主文本框控件
		 * @param bubbles @see flash.events.Event.bubbles
		 * @param cancelable @see flash.events.Event.cancelable
		 */
		public function SetMainTextBoxEvent(mainTextBox:TextBox, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(SET_MAIN_TEXTBOX, bubbles, cancelable);
			this.mainTextBox=mainTextBox;
		}
	}
}