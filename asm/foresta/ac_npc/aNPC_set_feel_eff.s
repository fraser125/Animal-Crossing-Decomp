lbl_805303A0:
/* 805303A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805303A4  7C 08 02 A6 */	mflr r0
/* 805303A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805303AC  80 04 07 58 */	lwz r0, 0x758(r4)
/* 805303B0  28 00 00 00 */	cmplwi r0, 0
/* 805303B4  41 82 00 0C */	beq lbl_805303C0
/* 805303B8  48 00 04 F9 */	bl aNPC_set_feel_effect
/* 805303BC  48 00 00 08 */	b lbl_805303C4
lbl_805303C0:
/* 805303C0  48 00 06 75 */	bl aNPC_set_other_effect
lbl_805303C4:
/* 805303C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805303C8  7C 08 03 A6 */	mtlr r0
/* 805303CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805303D0  4E 80 00 20 */	blr 
