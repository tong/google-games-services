package gapi.client;

@:native("gapi.client.Request")
extern class Request {
    function execute( response : Dynamic->Void ) : Void;
}
