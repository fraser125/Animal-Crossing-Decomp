lbl_804DF564:
/* 804DF564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF568  7C 08 02 A6 */	mflr r0
/* 804DF56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF574  7C 7F 1B 78 */	mr r31, r3
/* 804DF578  7C 83 23 78 */	mr r3, r4
/* 804DF57C  38 80 00 00 */	li r4, 0
/* 804DF580  4B F0 68 F9 */	bl mRmTp_GetFtrActionSE
/* 804DF584  7C 60 1B 79 */	or. r0, r3, r3
/* 804DF588  41 80 00 14 */	blt lbl_804DF59C
/* 804DF58C  7F E3 FB 78 */	mr r3, r31
/* 804DF590  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804DF594  4B FF FC F5 */	bl Player_actor_set_sound_common2
/* 804DF598  48 00 00 10 */	b lbl_804DF5A8
lbl_804DF59C:
/* 804DF59C  7F E3 FB 78 */	mr r3, r31
/* 804DF5A0  38 80 04 20 */	li r4, 0x420
/* 804DF5A4  4B FF FC E5 */	bl Player_actor_set_sound_common2
lbl_804DF5A8:
/* 804DF5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF5B0  7C 08 03 A6 */	mtlr r0
/* 804DF5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF5B8  4E 80 00 20 */	blr 
