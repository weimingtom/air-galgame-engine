package AGE.event
{
	import flash.events.Event;
	
	/**
	 * 给变量赋值事件
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class EvaluateValueToVariableEvent extends Event
	{
		public var value:Number=0;
		public var val:String="";
		static public const EVALUATE_VALUE_TO_VARIABLE:String="EvaluateValueToVariable";
		
		public function EvaluateValueToVariableEvent(value:Number,val:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(EVALUATE_VALUE_TO_VARIABLE, bubbles, cancelable);
			this.value=value;
			this.val=val;
		}
	}
}