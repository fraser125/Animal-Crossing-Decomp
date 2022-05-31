lbl_805769D4:
/* 805769D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805769D8  7C 08 02 A6 */	mflr r0
/* 805769DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805769E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805769E4  7C 7F 1B 78 */	mr r31, r3
/* 805769E8  4B FF FB ED */	bl aNSS_set_stop_spd
/* 805769EC  38 00 FF FF */	li r0, -1
/* 805769F0  90 1F 09 98 */	stw r0, 0x998(r31)
/* 805769F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805769F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805769FC  7C 08 03 A6 */	mtlr r0
/* 80576A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80576A04  4E 80 00 20 */	blr 
