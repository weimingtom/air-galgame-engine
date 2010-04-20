package AGE.event
{
	import flash.events.Event;
	
	import AGE.UI.control.TextBox;
	
	/**
	 * 添加控件事件的基类
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class AddControlEvent extends Event
	{
		/**
		 * 
		 */
		static public const ADDTEXTBOX:String="addtextbox";
		/**
		 * 
		 */
		public var control:Object;
		/**
		 * 添加控件触发事件
		 * @param control
		 * @param bubbles @see flash.events.Event.bubbles
		 * @param cancelable @see flash.events.Event.cancelable
		 */
		public function AddControlEvent(control:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(ADDTEXTBOX, bubbles, cancelable);
			this.control=control;
		}
	}
}