package AGE.UI.factory
{
	import AGE.UI.control.Role;
	
	/**
	* 规则工厂
	* @author 刘峰
	*/
	public class RoleFactory
	{
		public function RoleFactory()
		{
		}
		
		/**
		 * 产生Role的实例
		 * @see AGE.UI.control.Role
		 * @param template 模板
		 * @return Role
		 */
		public static function manufacture(template:Object):Role{
			var product:Role=new Role();
			product.x=new Number(template.x);
			product.y=new Number(template.y);
			product.width=new Number(template.width);
			product.height=new Number(template.height);
			product.position=template.positionName;
			return product;
		}
	}
}