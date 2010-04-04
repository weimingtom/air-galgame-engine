package AGE.music
{
	import flash.media.Sound;
	import flash.net.URLRequest;

	public class MusicPlayer
	{
		private var bgmplayer:Sound=new Sound();
		private var bgmRequest:URLRequest;		
		public function MusicPlayer()
		{
		}
		
		public function bgmPlay(src:String){
			bgmRequest=new URLRequest(src);
			bgmplayer.load(bgmRequest);
			bgmplayer.play(0,int.MAX_VALUE);
		}
	}
}