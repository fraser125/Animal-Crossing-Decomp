lbl_80565F68:
/* 80565F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565F6C  7C 08 02 A6 */	mflr r0
/* 80565F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565F74  38 00 00 00 */	li r0, 0
/* 80565F78  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 80565F7C  4B FF FE A1 */	bl aNNW_normal_wait_init
/* 80565F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565F84  7C 08 03 A6 */	mtlr r0
/* 80565F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80565F8C  4E 80 00 20 */	blr 
