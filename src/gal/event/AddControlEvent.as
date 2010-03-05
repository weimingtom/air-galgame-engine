package gal.event
{
	import flash.events.Event;
	
	import gal.UI.control.TextBox;
	
	public class AddControlEvent extends Event
	{
		static public const ADDTEXTBOX:String="addtextbox";
		public var control:Object;
		public function AddControlEvent(control:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(ADDTEXTBOX, bubbles, cancelable);
			this.control=control;
		}
	}
}