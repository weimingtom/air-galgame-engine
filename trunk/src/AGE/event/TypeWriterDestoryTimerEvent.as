package AGE.event
{
	import flash.events.Event;
	
	/**
	 * 打字机销毁计时器事件
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class TypeWriterDestoryTimerEvent extends Event
	{
		/**
		 * 
		 */
		static public const DESTORY_TIMER:String="destorytimer";
		/**
		 * 
		 * @param bubbles @see flash.events.Event.bubbles
		 * @param cancelable @see flash.events.Event.cancelable
		 */
		public function TypeWriterDestoryTimerEvent(bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(DESTORY_TIMER, bubbles, cancelable);
		}
	}
}