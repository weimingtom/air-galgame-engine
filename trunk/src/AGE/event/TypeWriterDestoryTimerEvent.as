package AGE.event
{
	import flash.events.Event;
	
	/**
	* ���ֻ����ټ�ʱ���¼�
	* @author ����
	*/
	public class TypeWriterDestoryTimerEvent extends Event
	{
		/**
		* 
		*/
		static public const DESTORYTIMER:String="destorytimer";
		/**
		* 
		* @param bubbles @see flash.events.Event.bubbles
		* @param cancelable @see flash.events.Event.cancelable
		*/
		public function TypeWriterDestoryTimerEvent(bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(DESTORYTIMER, bubbles, cancelable);
		}
	}
}