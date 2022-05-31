lbl_80536EBC:
/* 80536EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536EC0  7C 08 02 A6 */	mflr r0
/* 80536EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80536ECC  7C 7F 1B 78 */	mr r31, r3
/* 80536ED0  4B FF F6 05 */	bl aNPC_think_chk_interrupt_proc
/* 80536ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80536ED8  40 82 00 0C */	bne lbl_80536EE4
/* 80536EDC  7F E3 FB 78 */	mr r3, r31
/* 80536EE0  4B FF FF B1 */	bl aNPC_think_wander_next_act
lbl_80536EE4:
/* 80536EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80536EEC  7C 08 03 A6 */	mtlr r0
/* 80536EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80536EF4  4E 80 00 20 */	blr 
