package AGE.event
{
	import flash.events.Event;
	
	import AGE.UI.control.TextBox;
	
	/**
	 * 添加文本框控件事件
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class AddTextBoxEvent extends Event
	{
		/**
		 * 
		 */
		static public const ADD_TEXTBOX:String="addtextbox";
		/**
		 * 
		 */
		public var textBox:TextBox;
		/**
		 * 添加控件触发事件
		 * @param textBox 文本框控件
		 * @param bubbles @see flash.events.Event.bubbles
		 * @param cancelable @see flash.events.Event.cancelable
		 */
		public function AddTextBoxEvent(textBox:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(ADD_TEXTBOX, bubbles, cancelable);
			this.textBox=textBox as TextBox;
		}
	}
}