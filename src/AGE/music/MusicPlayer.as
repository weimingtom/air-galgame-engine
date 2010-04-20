package AGE.music
{
	import flash.media.Sound;
	import flash.net.URLRequest;
	
	/**
	 * 音乐播放器类
	 * @author 刘峰
	 */
	public class MusicPlayer
	{
		private var bgmplayer:Sound=new Sound();
		private var bgmRequest:URLRequest;		
		public function MusicPlayer()
		{
		}
		
		/**
		 * 播放背景音乐
		 * @param src 音乐文件URL
		 */
		public function bgmPlay(src:String){
			bgmRequest=new URLRequest(src);
			bgmplayer.load(bgmRequest);
			bgmplayer.play(0,int.MAX_VALUE);
		}
	}
}