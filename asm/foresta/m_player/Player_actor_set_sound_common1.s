lbl_804DF25C:
/* 804DF25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF260  7C 08 02 A6 */	mflr r0
/* 804DF264  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF268  7C 60 1B 78 */	mr r0, r3
/* 804DF26C  7C 83 23 78 */	mr r3, r4
/* 804DF270  7C 04 03 78 */	mr r4, r0
/* 804DF274  48 14 ED 35 */	bl sAdo_OngenTrgStart
/* 804DF278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF27C  7C 08 03 A6 */	mtlr r0
/* 804DF280  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF284  4E 80 00 20 */	blr 
