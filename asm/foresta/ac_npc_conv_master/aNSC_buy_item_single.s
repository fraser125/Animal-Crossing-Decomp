lbl_8054745C:
/* 8054745C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80547460  7C 08 02 A6 */	mflr r0
/* 80547464  90 01 00 34 */	stw r0, 0x34(r1)
/* 80547468  39 61 00 30 */	addi r11, r1, 0x30
/* 8054746C  4B B5 3A 51 */	bl func_8009AEBC
/* 80547470  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80547474  3C E0 00 02 */	lis r7, 0x0002 /* 0x0001869F@ha */
/* 80547478  39 06 85 38 */	addi r8, r6, common_data@l /* 0x81138538@l */
/* 8054747C  3C C0 80 6A */	lis r6, aNSC_exchange_itemNo@ha /* 0x806A4A6C@ha */
/* 80547480  3F 88 00 02 */	addis r28, r8, 2
/* 80547484  7C 7F 1B 78 */	mr r31, r3
/* 80547488  83 7C 61 3C */	lwz r27, 0x613c(r28)
/* 8054748C  7C 97 23 78 */	mr r23, r4
/* 80547490  7C B8 2B 78 */	mr r24, r5
/* 80547494  3B A7 86 9F */	addi r29, r7, 0x869F /* 0x0001869F@l */
/* 80547498  3B C6 4A 6C */	addi r30, r6, aNSC_exchange_itemNo@l /* 0x806A4A6C@l */
/* 8054749C  3B 20 00 01 */	li r25, 1
/* 805474A0  48 00 00 54 */	b lbl_805474F4
lbl_805474A4:
/* 805474A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 805474A8  7C 03 E8 40 */	cmplw r3, r29
/* 805474AC  41 80 00 18 */	blt lbl_805474C4
/* 805474B0  38 03 8A D0 */	addi r0, r3, -30000
/* 805474B4  3B 40 00 00 */	li r26, 0
/* 805474B8  90 1F 00 00 */	stw r0, 0(r31)
/* 805474BC  3B 20 00 00 */	li r25, 0
/* 805474C0  48 00 00 08 */	b lbl_805474C8
lbl_805474C4:
/* 805474C4  3B 40 00 01 */	li r26, 1
lbl_805474C8:
/* 805474C8  7F 63 DB 78 */	mr r3, r27
/* 805474CC  7E E4 BB 78 */	mr r4, r23
/* 805474D0  38 A0 00 00 */	li r5, 0
/* 805474D4  4B E9 92 9D */	bl mPr_GetPossessionItemIdxWithCond
/* 805474D8  57 40 08 3C */	slwi r0, r26, 1
/* 805474DC  7C 64 1B 78 */	mr r4, r3
/* 805474E0  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805474E4  38 C0 00 00 */	li r6, 0
/* 805474E8  7C BE 02 2E */	lhzx r5, r30, r0
/* 805474EC  4B E9 99 3D */	bl mPr_SetPossessionItem
/* 805474F0  3B 18 FF FF */	addi r24, r24, -1
lbl_805474F4:
/* 805474F4  28 18 00 00 */	cmplwi r24, 0
/* 805474F8  40 82 FF AC */	bne lbl_805474A4
/* 805474FC  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80547500  3B C3 86 9F */	addi r30, r3, 0x869F /* 0x0001869F@l */
/* 80547504  48 00 00 20 */	b lbl_80547524
lbl_80547508:
/* 80547508  80 7F 00 00 */	lwz r3, 0(r31)
/* 8054750C  38 80 21 02 */	li r4, 0x2102
/* 80547510  38 A0 00 00 */	li r5, 0
/* 80547514  38 03 8A D0 */	addi r0, r3, -30000
/* 80547518  90 1F 00 00 */	stw r0, 0(r31)
/* 8054751C  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80547520  4B E9 99 E9 */	bl mPr_SetFreePossessionItem
lbl_80547524:
/* 80547524  80 1F 00 00 */	lwz r0, 0(r31)
/* 80547528  7C 00 F0 40 */	cmplw r0, r30
/* 8054752C  40 80 FF DC */	bge lbl_80547508
/* 80547530  7F 23 CB 78 */	mr r3, r25
/* 80547534  39 61 00 30 */	addi r11, r1, 0x30
/* 80547538  4B B5 39 D1 */	bl func_8009AF08
/* 8054753C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80547540  7C 08 03 A6 */	mtlr r0
/* 80547544  38 21 00 30 */	addi r1, r1, 0x30
/* 80547548  4E 80 00 20 */	blr 