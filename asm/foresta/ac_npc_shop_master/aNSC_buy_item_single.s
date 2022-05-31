lbl_805789F4:
/* 805789F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805789F8  7C 08 02 A6 */	mflr r0
/* 805789FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80578A00  39 61 00 30 */	addi r11, r1, 0x30
/* 80578A04  4B B2 24 B9 */	bl func_8009AEBC
/* 80578A08  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80578A0C  3C E0 00 02 */	lis r7, 0x0002 /* 0x0001869F@ha */
/* 80578A10  39 06 85 38 */	addi r8, r6, common_data@l /* 0x81138538@l */
/* 80578A14  3C C0 80 6C */	lis r6, aNSC_exchange_itemNo@ha /* 0x806C0244@ha */
/* 80578A18  3F 88 00 02 */	addis r28, r8, 2
/* 80578A1C  7C 7F 1B 78 */	mr r31, r3
/* 80578A20  83 7C 61 3C */	lwz r27, 0x613c(r28)
/* 80578A24  7C 97 23 78 */	mr r23, r4
/* 80578A28  7C B8 2B 78 */	mr r24, r5
/* 80578A2C  3B A7 86 9F */	addi r29, r7, 0x869F /* 0x0001869F@l */
/* 80578A30  3B C6 02 44 */	addi r30, r6, aNSC_exchange_itemNo@l /* 0x806C0244@l */
/* 80578A34  3B 20 00 01 */	li r25, 1
/* 80578A38  48 00 00 54 */	b lbl_80578A8C
lbl_80578A3C:
/* 80578A3C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80578A40  7C 03 E8 40 */	cmplw r3, r29
/* 80578A44  41 80 00 18 */	blt lbl_80578A5C
/* 80578A48  38 03 8A D0 */	addi r0, r3, -30000
/* 80578A4C  3B 40 00 00 */	li r26, 0
/* 80578A50  90 1F 00 00 */	stw r0, 0(r31)
/* 80578A54  3B 20 00 00 */	li r25, 0
/* 80578A58  48 00 00 08 */	b lbl_80578A60
lbl_80578A5C:
/* 80578A5C  3B 40 00 01 */	li r26, 1
lbl_80578A60:
/* 80578A60  7F 63 DB 78 */	mr r3, r27
/* 80578A64  7E E4 BB 78 */	mr r4, r23
/* 80578A68  38 A0 00 00 */	li r5, 0
/* 80578A6C  4B E6 7D 05 */	bl mPr_GetPossessionItemIdxWithCond
/* 80578A70  57 40 08 3C */	slwi r0, r26, 1
/* 80578A74  7C 64 1B 78 */	mr r4, r3
/* 80578A78  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80578A7C  38 C0 00 00 */	li r6, 0
/* 80578A80  7C BE 02 2E */	lhzx r5, r30, r0
/* 80578A84  4B E6 83 A5 */	bl mPr_SetPossessionItem
/* 80578A88  3B 18 FF FF */	addi r24, r24, -1
lbl_80578A8C:
/* 80578A8C  28 18 00 00 */	cmplwi r24, 0
/* 80578A90  40 82 FF AC */	bne lbl_80578A3C
/* 80578A94  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80578A98  3B C3 86 9F */	addi r30, r3, 0x869F /* 0x0001869F@l */
/* 80578A9C  48 00 00 20 */	b lbl_80578ABC
lbl_80578AA0:
/* 80578AA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80578AA4  38 80 21 02 */	li r4, 0x2102
/* 80578AA8  38 A0 00 00 */	li r5, 0
/* 80578AAC  38 03 8A D0 */	addi r0, r3, -30000
/* 80578AB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80578AB4  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80578AB8  4B E6 84 51 */	bl mPr_SetFreePossessionItem
lbl_80578ABC:
/* 80578ABC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80578AC0  7C 00 F0 40 */	cmplw r0, r30
/* 80578AC4  40 80 FF DC */	bge lbl_80578AA0
/* 80578AC8  7F 23 CB 78 */	mr r3, r25
/* 80578ACC  39 61 00 30 */	addi r11, r1, 0x30
/* 80578AD0  4B B2 24 39 */	bl func_8009AF08
/* 80578AD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80578AD8  7C 08 03 A6 */	mtlr r0
/* 80578ADC  38 21 00 30 */	addi r1, r1, 0x30
/* 80578AE0  4E 80 00 20 */	blr 
