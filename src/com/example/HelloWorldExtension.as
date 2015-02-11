package com.example
{
    import flash.events.EventDispatcher;
    import flash.external.ExtensionContext;
    import flash.system.Capabilities;

    public class HelloWorldExtension extends EventDispatcher
    {
        private var context:ExtensionContext;

        public function HelloWorldExtension()
        {
            //ネイティブ拡張コンテキストを生成
            context = ExtensionContext.createExtensionContext("example.ane.HelloWorld", "type");
        }

        public function getHelloWorld():String
        {
            return context.call("GetHelloWorld") as String;
        }

        public function dispose():void
        {
            return context.dispose();
        }
    }
}
