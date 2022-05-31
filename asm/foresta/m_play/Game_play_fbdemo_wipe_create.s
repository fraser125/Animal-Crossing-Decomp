lbl_80629E64:
/* 80629E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629E68  7C 08 02 A6 */	mflr r0
/* 80629E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629E74  7C 7F 1B 78 */	mr r31, r3
/* 80629E78  4B FF FF 4D */	bl Game_play_fbdemo_wipe_create_sub
/* 80629E7C  7F E3 FB 78 */	mr r3, r31
/* 80629E80  48 00 00 19 */	bl Game_play_fbdemo_wipe_init
/* 80629E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629E8C  7C 08 03 A6 */	mtlr r0
/* 80629E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80629E94  4E 80 00 20 */	blr 
