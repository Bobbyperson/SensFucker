global function sensfuckerInit

void function sensfuckerInit()
{
    AddCallback_OnPlayerKilled ( randomizeSens )
}

void function randomizeSens( ObituaryCallbackParams inputParams )
{
    if (inputParams.attacker == GetLocalClientPlayer()){
        float sens = RandomFloatRange(GetConVarFloat("sensfucker_min"), GetConVarFloat("sensfucker_max"))
        SetConVarFloat( "mouse_sensitivity", sens)
        SetConVarFloat( "mouse_sensitivity_zoomed", sens)
    }
}