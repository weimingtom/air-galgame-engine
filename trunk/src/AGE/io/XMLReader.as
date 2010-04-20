package AGE.io
{
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.xml.XMLDocument;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.xml.SimpleXMLDecoder;
	
	/**
	* XML文件读取类
	* @author 刘峰
	*/
	public class XMLReader
	{
		public function XMLReader()
		{
		}
		/**
		 * 同步读取XML文件
		 * @param fileName 将要读取的xml的相对路径及名称
		 * @return 读取出的xml序列化后的对象
		 */
		public static function read(fileName:String):Object{
			var xmlFile:File = File.applicationDirectory;
			xmlFile = xmlFile.resolvePath(fileName);
			var stream:FileStream = new FileStream();
			stream.open(xmlFile, FileMode.READ);
			var xml:XML = XML(stream.readUTFBytes(stream.bytesAvailable));
			stream.close();
			var xmlDoc:XMLDocument = new XMLDocument(xml);
			var decoder:SimpleXMLDecoder = new SimpleXMLDecoder(true);
			var resultObj:Object = decoder.decodeXML(xmlDoc);
			return resultObj;
		}
	}
}