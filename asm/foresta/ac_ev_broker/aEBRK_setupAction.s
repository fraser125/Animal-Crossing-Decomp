lbl_8051A27C:
/* 8051A27C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A280  7C 08 02 A6 */	mflr r0
/* 8051A284  3C A0 80 6A */	lis r5, process@ha /* 0x806A0080@ha */
/* 8051A288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A28C  38 00 00 00 */	li r0, 0
/* 8051A290  38 A5 00 80 */	addi r5, r5, process@l /* 0x806A0080@l */
/* 8051A294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051A298  7C 9F 23 78 */	mr r31, r4
/* 8051A29C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051A2A0  7C 7E 1B 78 */	mr r30, r3
/* 8051A2A4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8051A2A8  54 80 10 3A */	slwi r0, r4, 2
/* 8051A2AC  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8051A2B0  7C 05 00 2E */	lwzx r0, r5, r0
/* 8051A2B4  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 8051A2B8  4B FF FB 81 */	bl aEBRK_set_animation
/* 8051A2BC  7F C3 F3 78 */	mr r3, r30
/* 8051A2C0  7F E4 FB 78 */	mr r4, r31
/* 8051A2C4  4B FF FF 75 */	bl aEBRK_set_spd_info
/* 8051A2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051A2D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051A2D4  7C 08 03 A6 */	mtlr r0
/* 8051A2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A2DC  4E 80 00 20 */	blr 
