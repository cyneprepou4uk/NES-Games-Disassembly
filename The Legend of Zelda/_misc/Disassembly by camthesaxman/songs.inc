.global songTable

.struct SongDescriptor
	unk1			.byte
	musicDataPtr	.addr
	offsetVoiceC	.byte
	offsetVoiceB	.byte
	offsetVoiceD	.byte
.endstruct