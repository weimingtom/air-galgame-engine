package AGE.music
{
	import flash.media.Sound;
	import flash.net.URLRequest;

	/**
	* ÒôÀÖ²¥·ÅÆ÷Àà
	* @author Áõ·å
	*/
	public class MusicPlayer
	{
		private var bgmplayer:Sound=new Sound();
		private var bgmRequest:URLRequest;		
		public function MusicPlayer()
		{
		}
		
		/**
		 * ²¥·Å±³¾°ÒôÀÖ
		 * @param src ÒôÀÖÎÄ¼şURL
		 */
		public function bgmPlay(src:String){
			bgmRequest=new URLRequest(src);
			bgmplayer.load(bgmRequest);
			bgmplayer.play(0,int.MAX_VALUE);
		}
	}
}