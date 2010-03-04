package gal.event
{
	import flash.events.Event;
	
	import gal.UI.control.TextBox;
	
	public class AddTextBoxEvent extends Event
	{
		static public const ADDTEXTBOX:String="addtextbox";
		public var textBox:TextBox;
		public function AddTextBoxEvent(textBox:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(ADDTEXTBOX, bubbles, cancelable);
			this.textBox=textBox as TextBox;
		}
	}
}