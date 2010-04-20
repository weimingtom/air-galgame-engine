package AGE.UI.factory
{
	import AGE.UI.control.ClickGifShower;
	
	/**
	 * 点击GIF显示工厂
	 * @author 银鸑鷟(SliverPhoenix)
	 */
	public class ClickGifShowerFactory
	{
		
		/**
		 * 产生ClickGifShower的实例
		 * @see AGE.UI.control.ClickGifShower
		 * @param template 模板
		 * @return ClickGifShower
		 */
		public static function manufacture(template:Object):ClickGifShower{
			var product:ClickGifShower=new ClickGifShower();
			product.x=new Number(template.x);
			product.y=new Number(template.y);
			product.width=new Number(template.width);
			product.height=new Number(template.height);
			product.source=template.src;
			return product;
		}
	}
}