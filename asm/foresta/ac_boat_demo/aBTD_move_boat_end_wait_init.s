lbl_8041596C:
/* 8041596C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415970  7C 08 02 A6 */	mflr r0
/* 80415974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415978  4B FA 9D 31 */	bl func_803BF6A8
/* 8041597C  38 80 00 01 */	li r4, 1
/* 80415980  4B FA CC AD */	bl mMsg_sound_set_voice_silent
/* 80415984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415988  7C 08 03 A6 */	mtlr r0
/* 8041598C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415990  4E 80 00 20 */	blr 
