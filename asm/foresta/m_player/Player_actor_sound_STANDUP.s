lbl_804DF5BC:
/* 804DF5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF5C0  7C 08 02 A6 */	mflr r0
/* 804DF5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF5CC  7C 7F 1B 78 */	mr r31, r3
/* 804DF5D0  7C 83 23 78 */	mr r3, r4
/* 804DF5D4  38 80 00 01 */	li r4, 1
/* 804DF5D8  4B F0 68 A1 */	bl mRmTp_GetFtrActionSE
/* 804DF5DC  7C 60 1B 79 */	or. r0, r3, r3
/* 804DF5E0  41 80 00 14 */	blt lbl_804DF5F4
/* 804DF5E4  7F E3 FB 78 */	mr r3, r31
/* 804DF5E8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804DF5EC  4B FF FC 9D */	bl Player_actor_set_sound_common2
/* 804DF5F0  48 00 00 10 */	b lbl_804DF600
lbl_804DF5F4:
/* 804DF5F4  7F E3 FB 78 */	mr r3, r31
/* 804DF5F8  38 80 04 23 */	li r4, 0x423
/* 804DF5FC  4B FF FC 8D */	bl Player_actor_set_sound_common2
lbl_804DF600:
/* 804DF600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF608  7C 08 03 A6 */	mtlr r0
/* 804DF60C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF610  4E 80 00 20 */	blr 
