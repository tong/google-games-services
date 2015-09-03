package gapi.client.games;

@:enum abstract PlatformType(String) {
    var ANDROID = "ANDROID";
    var IOS = "IOS";
    var WEB_APP = "WEB_APP";
}

@:native("gapi.client.games.applications")
extern class Applications {
    static function get( ?params : { applicationId:String, ?language:String, ?platformType:PlatformType } ) : Request;
    static function played() : Request;
}
