lbl_804FE084:
/* 804FE084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE088  7C 08 02 A6 */	mflr r0
/* 804FE08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE094  7C 9F 23 78 */	mr r31, r4
/* 804FE098  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE09C  7C 7E 1B 78 */	mr r30, r3
/* 804FE0A0  4B FD 94 3D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FE0A4  2C 03 00 00 */	cmpwi r3, 0
/* 804FE0A8  40 82 00 18 */	bne lbl_804FE0C0
/* 804FE0AC  7F C3 F3 78 */	mr r3, r30
/* 804FE0B0  7F E4 FB 78 */	mr r4, r31
/* 804FE0B4  38 A0 00 01 */	li r5, 1
/* 804FE0B8  38 C0 00 00 */	li r6, 0
/* 804FE0BC  4B FD D2 35 */	bl Player_actor_Set_FootMark_Base1
lbl_804FE0C0:
/* 804FE0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE0C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE0CC  7C 08 03 A6 */	mtlr r0
/* 804FE0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE0D4  4E 80 00 20 */	blr 
