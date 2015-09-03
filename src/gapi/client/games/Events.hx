package gapi.client.games;

@:native("gapi.client.games.events")
extern class Events {
    static function listByPlayer( ?params : { ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
    static function listDefinitions( ?params : { ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
    static function record( ?params : { ?language:String } ) : Request;
}
