lbl_8048E4C0:
/* 8048E4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E4C4  7C 08 02 A6 */	mflr r0
/* 8048E4C8  7C 64 1B 78 */	mr r4, r3
/* 8048E4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E4D0  2C 04 FF FF */	cmpwi r4, -1
/* 8048E4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048E4D8  41 82 00 5C */	beq lbl_8048E534
/* 8048E4DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8048E4E0  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E4E4  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8048E4E8  54 85 08 3C */	slwi r5, r4, 1
/* 8048E4EC  3C C6 00 02 */	addis r6, r6, 2
/* 8048E4F0  3B E3 EB F0 */	addi r31, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E4F4  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 8048E4F8  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8048E4FC  7C A3 2A 14 */	add r5, r3, r5
/* 8048E500  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 8048E504  7C 05 00 40 */	cmplw r5, r0
/* 8048E508  40 82 00 2C */	bne lbl_8048E534
/* 8048E50C  38 A0 00 00 */	li r5, 0
/* 8048E510  38 C0 00 00 */	li r6, 0
/* 8048E514  4B F5 29 15 */	bl mPr_SetPossessionItem
/* 8048E518  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 8048E51C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048E520  2C 00 00 01 */	cmpwi r0, 1
/* 8048E524  41 82 00 0C */	beq lbl_8048E530
/* 8048E528  2C 00 00 03 */	cmpwi r0, 3
/* 8048E52C  40 82 00 08 */	bne lbl_8048E534
lbl_8048E530:
/* 8048E530  4B F4 5B 81 */	bl mNpc_SetIslandGetFtr
lbl_8048E534:
/* 8048E534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048E53C  7C 08 03 A6 */	mtlr r0
/* 8048E540  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E544  4E 80 00 20 */	blr 
