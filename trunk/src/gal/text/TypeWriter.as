package gal.text
{
	import flash.events.TimerEvent;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	
	import gal.event.TypeWriterDestoryTimerEvent;
	
	import mx.controls.Text;
	
	import spark.components.RichText;
	import spark.components.WindowedApplication;

	public class TypeWriter
	{
		private static var timerList:Dictionary = new Dictionary();
		public static var inTextField:RichText;
		public static var isTypeing:Boolean=false;
		public static var main:WindowedApplication;
/****************Static函数****************/
		//为某段String在某个TextField上实现打字机效果，以xx毫秒为间隔
		public static function type (inString,inDelay)
		{
			//如果时间间隔为0，则直接显示字符串，并且返回
			if(inDelay == 0)
			{
				return (inTextField.text+=inString);
			}
			//设置一个定时器，每过inDelay毫秒取出字符串的第一个字符
			//然后将这个字符appendText到这个textField上
			var timer = new Timer(inDelay);
			timer.addEventListener ("timer",_onTimeUp);
			var timerListItem = new Object();//计时器列表单元
			{
				timerListItem.str = inString;
				timerListItem.length = inString.length;
				timerListItem.tf = inTextField;
				timerListItem.index = 0;
			};
			timerList[timer] = timerListItem;
			timer.start ();
			isTypeing=true;
		}
		//去掉监听，销毁timer，立即显示全部文字
		//参数：textField
		public static function update ()
		{
			var timer = null;
			var item;
			//遍历timerList找到相应的timer
			for (var i in timerList)
			{
				if (timerList[i].tf == inTextField)
				{
					timer = i;
					item = timerList[i];
					break;
				}
			}
			//如果没找到就返回false
			if (timer == null)
			{
				return false;
			}//显示所有文字
			item.tf.text+=(item.str.substr(item.index));
			//去掉监听，销毁timer
			TypeWriter._destoryTimer (timer);
			return true;
		}
		//每当定时器到时间后，执行这个函数
		private static function _onTimeUp (event:TimerEvent)
		{
			var tempItem = timerList[event.target];
			//检查是否index <length，如果不成立，则去掉监听，销毁timer
			if (tempItem.index >= tempItem.length)
			{
				TypeWriter._destoryTimer (event.target);
				return;
			}
			//不然则把当前index位置的字符取出，appendText到tf上
			//var rect:Rectangle = tempItem.tf.getCharBoundaries(tempItem.tf.text.length - 1);
			//rect && rect.x > 680 && tempItem.tf.appendText("\n");
			
			tempItem.tf.text+= (tempItem.str.charAt(tempItem.index));
			tempItem.index = tempItem.index + 1;
		}
		//去掉监听，销毁timer
		private static function _destoryTimer (timer)
		{
			timer.removeEventListener ("timer",_onTimeUp);
			delete timerList[timer];
			isTypeing=false;
			main.dispatchEvent(new TypeWriterDestoryTimerEvent());
		}
/****************Static函数****************/
	}
}