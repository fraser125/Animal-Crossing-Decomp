lbl_80594A74:
/* 80594A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594A78  7C 08 02 A6 */	mflr r0
/* 80594A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594A84  93 C1 00 08 */	stw r30, 8(r1)
/* 80594A88  7C 7E 1B 78 */	mr r30, r3
/* 80594A8C  7C 83 23 78 */	mr r3, r4
/* 80594A90  4B FF FD 39 */	bl aINS_searchRegistSpace
/* 80594A94  2C 03 00 00 */	cmpwi r3, 0
/* 80594A98  41 80 00 38 */	blt lbl_80594AD0
/* 80594A9C  1C 63 02 88 */	mulli r3, r3, 0x288
/* 80594AA0  3C A0 81 1F */	lis r5, data_811ED400@ha /* 0x811ED400@ha */
/* 80594AA4  80 05 D4 00 */	lwz r0, data_811ED400@l(r5)  /* 0x811ED400@l */
/* 80594AA8  38 80 02 88 */	li r4, 0x288
/* 80594AAC  3B E3 01 74 */	addi r31, r3, 0x174
/* 80594AB0  7F E0 FA 14 */	add r31, r0, r31
/* 80594AB4  7F E3 FB 78 */	mr r3, r31
/* 80594AB8  4B AC 85 B1 */	bl bzero
/* 80594ABC  7F E3 FB 78 */	mr r3, r31
/* 80594AC0  7F C4 F3 78 */	mr r4, r30
/* 80594AC4  4B FF FD 61 */	bl aINS_setupActor
/* 80594AC8  7F E3 FB 78 */	mr r3, r31
/* 80594ACC  48 00 00 08 */	b lbl_80594AD4
lbl_80594AD0:
/* 80594AD0  38 60 00 00 */	li r3, 0
lbl_80594AD4:
/* 80594AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594AE0  7C 08 03 A6 */	mtlr r0
/* 80594AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80594AE8  4E 80 00 20 */	blr 
