lbl_8054F494:
/* 8054F494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F498  7C 08 02 A6 */	mflr r0
/* 8054F49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F4A4  7C 7F 1B 78 */	mr r31, r3
/* 8054F4A8  38 60 00 DA */	li r3, 0xda
/* 8054F4AC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8054F4B0  28 00 D0 0B */	cmplwi r0, 0xd00b
/* 8054F4B4  40 82 00 08 */	bne lbl_8054F4BC
/* 8054F4B8  38 60 00 DC */	li r3, 0xdc
lbl_8054F4BC:
/* 8054F4BC  4B FF F1 41 */	bl aNSC_get_msg_no
/* 8054F4C0  4B E4 90 55 */	bl mDemo_Set_msg_num
/* 8054F4C4  38 00 00 07 */	li r0, 7
/* 8054F4C8  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054F4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F4D4  7C 08 03 A6 */	mtlr r0
/* 8054F4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F4DC  4E 80 00 20 */	blr 
