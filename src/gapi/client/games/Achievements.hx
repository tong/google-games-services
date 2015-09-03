package gapi.client.games;

@:enum abstract State(String) {
    var ALL = "ALL";
    var HIDDEN = "HIDDEN";
    var REVEALED = "REVEALED";
    var UNLOCKED = "UNLOCKED";
}

@:native("gapi.client.games.achievements")
extern class Achievements {
    static function increment( achievementId : String, ?params : { stepsToIncrement:Int, ?requestId:Float } ) : Request;
    static function list( params : { playerId: String, ?language:String, ?maxResults:Int, ?pageToken:String, ?state:State } ) : Request;
    static function reveal( params : { achievementId:String } ) : Request;
    static function setStepsAtLeast( params : { achievementId:String, steps:Int } ) : Request;
    static function unlock( params : { achievementId:String } ) : Request;
    //TODO static function updateMultiple() : Request;
}
