lbl_805428C8:
/* 805428C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805428CC  7C 08 02 A6 */	mflr r0
/* 805428D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805428D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805428D8  7C 9F 23 78 */	mr r31, r4
/* 805428DC  93 C1 00 08 */	stw r30, 8(r1)
/* 805428E0  7C 7E 1B 78 */	mr r30, r3
/* 805428E4  4B FF FA E1 */	bl aNPC_think_chk_interrupt_proc
/* 805428E8  2C 03 00 00 */	cmpwi r3, 0
/* 805428EC  40 82 00 10 */	bne lbl_805428FC
/* 805428F0  7F C3 F3 78 */	mr r3, r30
/* 805428F4  7F E4 FB 78 */	mr r4, r31
/* 805428F8  4B FF FF A5 */	bl aNPC_think_wander_next_act
lbl_805428FC:
/* 805428FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542904  83 C1 00 08 */	lwz r30, 8(r1)
/* 80542908  7C 08 03 A6 */	mtlr r0
/* 8054290C  38 21 00 10 */	addi r1, r1, 0x10
/* 80542910  4E 80 00 20 */	blr 
