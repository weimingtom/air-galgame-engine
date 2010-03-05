package gal.UI.factory
{
	import gal.UI.control.ClickGifShower;
	
	public class ClickGifShowerFactory
	{
		public static function manufacture(x:Number,y:Number,width:Number,height:Number,src:String){
			var product:ClickGifShower=new ClickGifShower();
			product.x=x;
			product.y=y;
			product.width=width;
			product.height=height;
			product.source=src;
			return product;
		}
	}
}