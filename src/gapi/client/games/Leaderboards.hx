package gapi.client.games;

@:native("gapi.client.games.leaderboards")
extern class Leaderboards {
    static function get( params : { leaderboardId:String, ?language:String } ) : Request;
    static function list( ?params : { ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
}
