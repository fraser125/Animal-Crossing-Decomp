lbl_80537EAC:
/* 80537EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537EB0  7C 08 02 A6 */	mflr r0
/* 80537EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537EBC  7C 9F 23 78 */	mr r31, r4
/* 80537EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80537EC4  7C 7E 1B 78 */	mr r30, r3
/* 80537EC8  4B FF E9 D1 */	bl aNPC_think_main_proc
/* 80537ECC  88 1E 07 C8 */	lbz r0, 0x7c8(r30)
/* 80537ED0  28 00 00 01 */	cmplwi r0, 1
/* 80537ED4  40 82 00 14 */	bne lbl_80537EE8
/* 80537ED8  7F C3 F3 78 */	mr r3, r30
/* 80537EDC  7F E4 FB 78 */	mr r4, r31
/* 80537EE0  38 A0 00 07 */	li r5, 7
/* 80537EE4  4B FF E9 59 */	bl aNPC_think_init_proc
lbl_80537EE8:
/* 80537EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537EF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80537EF4  7C 08 03 A6 */	mtlr r0
/* 80537EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80537EFC  4E 80 00 20 */	blr 
