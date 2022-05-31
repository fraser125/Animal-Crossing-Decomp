lbl_8054319C:
/* 8054319C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805431A0  7C 08 02 A6 */	mflr r0
/* 805431A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805431A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805431AC  7C 9F 23 78 */	mr r31, r4
/* 805431B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805431B4  7C 7E 1B 78 */	mr r30, r3
/* 805431B8  4B FF F2 0D */	bl aNPC_think_chk_interrupt_proc
/* 805431BC  2C 03 00 00 */	cmpwi r3, 0
/* 805431C0  40 82 00 3C */	bne lbl_805431FC
/* 805431C4  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 805431C8  28 00 00 FF */	cmplwi r0, 0xff
/* 805431CC  40 82 00 30 */	bne lbl_805431FC
/* 805431D0  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 805431D4  28 00 00 00 */	cmplwi r0, 0
/* 805431D8  40 82 00 14 */	bne lbl_805431EC
/* 805431DC  7F C3 F3 78 */	mr r3, r30
/* 805431E0  7F E4 FB 78 */	mr r4, r31
/* 805431E4  4B FF F4 59 */	bl aNPC_think_main_proc
/* 805431E8  48 00 00 14 */	b lbl_805431FC
lbl_805431EC:
/* 805431EC  7F C3 F3 78 */	mr r3, r30
/* 805431F0  7F E4 FB 78 */	mr r4, r31
/* 805431F4  38 A0 00 00 */	li r5, 0
/* 805431F8  4B FF F3 E9 */	bl aNPC_think_init_proc
lbl_805431FC:
/* 805431FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543204  83 C1 00 08 */	lwz r30, 8(r1)
/* 80543208  7C 08 03 A6 */	mtlr r0
/* 8054320C  38 21 00 10 */	addi r1, r1, 0x10
/* 80543210  4E 80 00 20 */	blr 
