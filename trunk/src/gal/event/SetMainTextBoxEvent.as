package gal.event
{
	import flash.events.Event;
	
	import gal.UI.control.TextBox;
	
	public class SetMainTextBoxEvent extends Event
	{
		static public const SETMAINTEXTBOX:String = "setmaintextbox";
		public var mainTextBox:TextBox;
		
		public function SetMainTextBoxEvent(mainTextBox:TextBox, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(SETMAINTEXTBOX, bubbles, cancelable);
			this.mainTextBox=mainTextBox;
		}
	}
}