package gal.event
{
	import flash.events.Event;
	
	public class TypeWriterDestoryTimerEvent extends Event
	{
		static public const DESTORYTIMER:String="destorytimer";
		public function TypeWriterDestoryTimerEvent(bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(DESTORYTIMER, bubbles, cancelable);
		}
	}
}