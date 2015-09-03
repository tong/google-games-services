package gapi.client.games;

@:native("gapi.client.games.players")
extern class Players {
    static function get( params : { playerId:String, ?language:String } ) : Request;
    static function list( params : { collection:String, ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
}
