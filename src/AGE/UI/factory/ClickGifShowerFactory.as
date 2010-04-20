package AGE.UI.factory
{
	import AGE.UI.control.ClickGifShower;
	
	/**
	* ���GIF��ʾ����
	* @author ����
	*/
	public class ClickGifShowerFactory
	{
	
		/**
		 * ����ClickGifShower��ʵ��
		 * @see AGE.UI.control.ClickGifShower
		 * @param template ģ��
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