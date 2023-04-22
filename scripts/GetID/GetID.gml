function GetID()
{
	var ID = UnitManager.CurrentId
	UnitManager.CurrentId += 1
	return ID
}