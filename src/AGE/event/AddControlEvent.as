package AGE.event
{
	import flash.events.Event;
	
	import AGE.UI.control.TextBox;
	
	/**
	* ��ӿؼ��¼��Ļ���
	* @author ����
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
		* ��ӿؼ������¼�
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