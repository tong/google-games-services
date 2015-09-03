package gapi.client.games;

@:enum abstract Timespan(String) {
    var ALL = "ALL";
    var ALL_TIME = "ALL_TIME";
    var DAILY = "DAILY";
    var WEEKLY = "WEEKLY";
}

@:enum abstract RankType(String) {
    var ALL = "ALL";
    var PUBLIC = "PUBLIC";
    var SOCIAL = "SOCIAL";
}

@:enum abstract Collection(String) {
    var PUBLIC = "PUBLIC";
    var SOCIAL = "SOCIAL";
}

@:native("gapi.client.games.scores")
extern class Scores {
    static function get( params : { leaderboardId:String, playerId:String, timeSpan:Timespan, ?includeRankType:RankType, ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
    static function list( params : { collection:Collection, leaderboardId:String, timeSpan:Timespan, ?language:String, ?maxResults:Int, ?pageToken:String } ) : Request;
    static function listWindow( params : { collection:Collection, leaderboardId:String, timeSpan:Timespan, ?language:String, ?maxResults:Int, ?pageToken:String, ?resultsAbove:Int, ?returnTopIfAbsent:Bool } ) : Request;
    static function submit( params : { leaderboardId:String, score:Float, ?language:String, ?scoreTag:String } ) : Request;
    static function submitMultiple( params : { ?language:String } ) : Request;
}
