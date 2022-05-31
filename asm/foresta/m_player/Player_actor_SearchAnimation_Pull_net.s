lbl_804F39C0:
/* 804F39C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F39C4  7C 08 02 A6 */	mflr r0
/* 804F39C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F39CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F39D0  7C 9F 23 78 */	mr r31, r4
/* 804F39D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804F39D8  7C 7E 1B 78 */	mr r30, r3
/* 804F39DC  4B FE 3B 01 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F39E0  2C 03 00 00 */	cmpwi r3, 0
/* 804F39E4  40 82 00 18 */	bne lbl_804F39FC
/* 804F39E8  7F C3 F3 78 */	mr r3, r30
/* 804F39EC  7F E4 FB 78 */	mr r4, r31
/* 804F39F0  38 A0 00 00 */	li r5, 0
/* 804F39F4  38 C0 00 00 */	li r6, 0
/* 804F39F8  4B FE 78 F9 */	bl Player_actor_Set_FootMark_Base1
lbl_804F39FC:
/* 804F39FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3A04  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3A08  7C 08 03 A6 */	mtlr r0
/* 804F3A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3A10  4E 80 00 20 */	blr 
