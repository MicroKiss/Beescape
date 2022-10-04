global.roomTarget = -1;
global.midTransition = false;

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function TransitionStart(roomTarget, typeOut)
{
	if (!global.midTransition)
	{
		//PlayAudio (transitionSound, false);
		global.midTransition = true;
		global.roomTarget = roomTarget;
		TransitionPlaceSequence(typeOut);
		return true;
	}
	else return false
}

//Places the sequences in the room
function TransitionPlaceSequence(type)
{
	if (layer_exists("transition")) layer_destroy("transition")
	var lay = layer_create(-1,"transition")

	return layer_sequence_create(lay,room_width /2 ,room_height /2 ,type);	

}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}