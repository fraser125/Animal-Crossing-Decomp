lbl_803E3088:
/* 803E3088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E308C  7C 08 02 A6 */	mflr r0
/* 803E3090  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803E3094  7C 66 1B 78 */	mr r6, r3
/* 803E3098  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E309C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803E30A0  38 A0 FF FF */	li r5, -1
/* 803E30A4  38 80 00 01 */	li r4, 1
/* 803E30A8  B0 03 00 00 */	sth r0, 0(r3)
/* 803E30AC  38 00 00 03 */	li r0, 3
/* 803E30B0  38 66 00 0C */	addi r3, r6, 0xc
/* 803E30B4  90 A6 00 04 */	stw r5, 4(r6)
/* 803E30B8  90 06 00 08 */	stw r0, 8(r6)
/* 803E30BC  4B FF F8 2D */	bl mQst_ClearDelivery
/* 803E30C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E30C4  7C 08 03 A6 */	mtlr r0
/* 803E30C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E30CC  4E 80 00 20 */	blr 
