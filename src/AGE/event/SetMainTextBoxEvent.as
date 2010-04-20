package AGE.event
{
	import flash.events.Event;
	
	import AGE.UI.control.TextBox;
	
	/**
	* ����ı���ؼ��¼�
	* @author ����
	*/
	public class SetMainTextBoxEvent extends Event
	{
		/**
		* 
		*/
		static public const SETMAINTEXTBOX:String = "setmaintextbox";
		/**
		* 
		*/
		public var mainTextBox:TextBox;
		
		/**
		* ��ӿؼ������¼�
		* @param mainTextBox ���ı���ؼ�
		* @param bubbles @see flash.events.Event.bubbles
		* @param cancelable @see flash.events.Event.cancelable
		*/
		public function SetMainTextBoxEvent(mainTextBox:TextBox, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(SETMAINTEXTBOX, bubbles, cancelable);
			this.mainTextBox=mainTextBox;
		}
	}
}