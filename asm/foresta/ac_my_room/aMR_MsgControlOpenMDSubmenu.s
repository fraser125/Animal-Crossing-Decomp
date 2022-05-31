lbl_804755D0:
/* 804755D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804755D4  7C 08 02 A6 */	mflr r0
/* 804755D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804755DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804755E0  7C 7F 1B 78 */	mr r31, r3
/* 804755E4  93 C1 00 08 */	stw r30, 8(r1)
/* 804755E8  3B C4 1D EC */	addi r30, r4, 0x1dec
/* 804755EC  4B F2 4D 4D */	bl mDemo_CheckDemo
/* 804755F0  2C 03 00 00 */	cmpwi r3, 0
/* 804755F4  40 82 00 30 */	bne lbl_80475624
/* 804755F8  7F E3 FB 78 */	mr r3, r31
/* 804755FC  4B FF EC 31 */	bl aMR_MemoryMusicBoxStatus
/* 80475600  7F C3 F3 78 */	mr r3, r30
/* 80475604  38 80 00 01 */	li r4, 1
/* 80475608  38 A0 00 0A */	li r5, 0xa
/* 8047560C  38 C0 00 00 */	li r6, 0
/* 80475610  4B F7 A0 CD */	bl mSM_open_submenu
/* 80475614  4B F0 DF 2D */	bl func_80383540
/* 80475618  4B F0 E5 5D */	bl mChoice_Clear_ChoseNum
/* 8047561C  38 00 00 1F */	li r0, 0x1f
/* 80475620  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80475624:
/* 80475624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047562C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80475630  7C 08 03 A6 */	mtlr r0
/* 80475634  38 21 00 10 */	addi r1, r1, 0x10
/* 80475638  4E 80 00 20 */	blr 
