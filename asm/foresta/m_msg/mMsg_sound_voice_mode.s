lbl_803C2488:
/* 803C2488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C248C  7C 08 02 A6 */	mflr r0
/* 803C2490  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2494  4B FF FF 81 */	bl mMsg_sound_voice_mode_get
/* 803C2498  48 26 BB B9 */	bl sAdo_SetVoiceMode
/* 803C249C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C24A0  7C 08 03 A6 */	mtlr r0
/* 803C24A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C24A8  4E 80 00 20 */	blr 
