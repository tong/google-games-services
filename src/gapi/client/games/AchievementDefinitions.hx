package gapi.client.games;

@:native("gapi.client.games.achievementDefinitions")
extern class AchievementDefinitions {
    static function list( ?params : { ?language:String, ?maxResults:Int, ?pageToken:String} ) : Request;
}
