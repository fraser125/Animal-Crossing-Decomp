lbl_8055A2B0:
/* 8055A2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A2B4  7C 08 02 A6 */	mflr r0
/* 8055A2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A2C0  7C 7F 1B 78 */	mr r31, r3
/* 8055A2C4  4B E3 E1 35 */	bl mDemo_Get_talk_actor
/* 8055A2C8  28 03 00 00 */	cmplwi r3, 0
/* 8055A2CC  41 82 00 14 */	beq lbl_8055A2E0
/* 8055A2D0  7C 03 F8 40 */	cmplw r3, r31
/* 8055A2D4  41 82 00 0C */	beq lbl_8055A2E0
/* 8055A2D8  38 00 00 02 */	li r0, 2
/* 8055A2DC  48 00 00 20 */	b lbl_8055A2FC
lbl_8055A2E0:
/* 8055A2E0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D037@ha */
/* 8055A2E4  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8055A2E8  38 03 D0 37 */	addi r0, r3, 0xD037 /* 0x0000D037@l */
/* 8055A2EC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8055A2F0  7C 04 00 50 */	subf r0, r4, r0
/* 8055A2F4  7C 00 00 34 */	cntlzw r0, r0
/* 8055A2F8  54 00 D9 7E */	srwi r0, r0, 5
lbl_8055A2FC:
/* 8055A2FC  3C 60 80 6B */	lis r3, weight@ha /* 0x806A96A8@ha */
/* 8055A300  38 63 96 A8 */	addi r3, r3, weight@l /* 0x806A96A8@l */
/* 8055A304  7C 03 00 AE */	lbzx r0, r3, r0
/* 8055A308  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8055A30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A314  7C 08 03 A6 */	mtlr r0
/* 8055A318  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A31C  4E 80 00 20 */	blr 
