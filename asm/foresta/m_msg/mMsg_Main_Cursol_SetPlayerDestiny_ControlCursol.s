lbl_803C43B4:
/* 803C43B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C43B8  7C 08 02 A6 */	mflr r0
/* 803C43BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C43C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C43C4  7C BF 2B 78 */	mr r31, r5
/* 803C43C8  93 C1 00 08 */	stw r30, 8(r1)
/* 803C43CC  7C 9E 23 78 */	mr r30, r4
/* 803C43D0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C43D4  4B FF BC 75 */	bl func_803C0048
/* 803C43D8  80 1E 00 00 */	lwz r0, 0(r30)
/* 803C43DC  7C 00 1A 14 */	add r0, r0, r3
/* 803C43E0  7F E3 FB 78 */	mr r3, r31
/* 803C43E4  90 1E 00 00 */	stw r0, 0(r30)
/* 803C43E8  4B FD 41 E5 */	bl mDemo_Set_change_player_destiny
/* 803C43EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C43F0  38 60 00 00 */	li r3, 0
/* 803C43F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C43F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C43FC  7C 08 03 A6 */	mtlr r0
/* 803C4400  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4404  4E 80 00 20 */	blr 
