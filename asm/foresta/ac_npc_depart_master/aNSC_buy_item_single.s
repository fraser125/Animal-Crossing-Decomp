lbl_8054ED74:
/* 8054ED74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054ED78  7C 08 02 A6 */	mflr r0
/* 8054ED7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054ED80  39 61 00 30 */	addi r11, r1, 0x30
/* 8054ED84  4B B4 C1 39 */	bl func_8009AEBC
/* 8054ED88  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8054ED8C  3C E0 00 02 */	lis r7, 0x0002 /* 0x0001869F@ha */
/* 8054ED90  39 06 85 38 */	addi r8, r6, common_data@l /* 0x81138538@l */
/* 8054ED94  3C C0 80 6A */	lis r6, aNSC_exchange_itemNo@ha /* 0x806A5C80@ha */
/* 8054ED98  3F 88 00 02 */	addis r28, r8, 2
/* 8054ED9C  7C 7F 1B 78 */	mr r31, r3
/* 8054EDA0  83 7C 61 3C */	lwz r27, 0x613c(r28)
/* 8054EDA4  7C 97 23 78 */	mr r23, r4
/* 8054EDA8  7C B8 2B 78 */	mr r24, r5
/* 8054EDAC  3B A7 86 9F */	addi r29, r7, 0x869F /* 0x0001869F@l */
/* 8054EDB0  3B C6 5C 80 */	addi r30, r6, aNSC_exchange_itemNo@l /* 0x806A5C80@l */
/* 8054EDB4  3B 20 00 01 */	li r25, 1
/* 8054EDB8  48 00 00 54 */	b lbl_8054EE0C
lbl_8054EDBC:
/* 8054EDBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8054EDC0  7C 03 E8 40 */	cmplw r3, r29
/* 8054EDC4  41 80 00 18 */	blt lbl_8054EDDC
/* 8054EDC8  38 03 8A D0 */	addi r0, r3, -30000
/* 8054EDCC  3B 40 00 00 */	li r26, 0
/* 8054EDD0  90 1F 00 00 */	stw r0, 0(r31)
/* 8054EDD4  3B 20 00 00 */	li r25, 0
/* 8054EDD8  48 00 00 08 */	b lbl_8054EDE0
lbl_8054EDDC:
/* 8054EDDC  3B 40 00 01 */	li r26, 1
lbl_8054EDE0:
/* 8054EDE0  7F 63 DB 78 */	mr r3, r27
/* 8054EDE4  7E E4 BB 78 */	mr r4, r23
/* 8054EDE8  38 A0 00 00 */	li r5, 0
/* 8054EDEC  4B E9 19 85 */	bl mPr_GetPossessionItemIdxWithCond
/* 8054EDF0  57 40 08 3C */	slwi r0, r26, 1
/* 8054EDF4  7C 64 1B 78 */	mr r4, r3
/* 8054EDF8  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8054EDFC  38 C0 00 00 */	li r6, 0
/* 8054EE00  7C BE 02 2E */	lhzx r5, r30, r0
/* 8054EE04  4B E9 20 25 */	bl mPr_SetPossessionItem
/* 8054EE08  3B 18 FF FF */	addi r24, r24, -1
lbl_8054EE0C:
/* 8054EE0C  28 18 00 00 */	cmplwi r24, 0
/* 8054EE10  40 82 FF AC */	bne lbl_8054EDBC
/* 8054EE14  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8054EE18  3B C3 86 9F */	addi r30, r3, 0x869F /* 0x0001869F@l */
/* 8054EE1C  48 00 00 20 */	b lbl_8054EE3C
lbl_8054EE20:
/* 8054EE20  80 7F 00 00 */	lwz r3, 0(r31)
/* 8054EE24  38 80 21 02 */	li r4, 0x2102
/* 8054EE28  38 A0 00 00 */	li r5, 0
/* 8054EE2C  38 03 8A D0 */	addi r0, r3, -30000
/* 8054EE30  90 1F 00 00 */	stw r0, 0(r31)
/* 8054EE34  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8054EE38  4B E9 20 D1 */	bl mPr_SetFreePossessionItem
lbl_8054EE3C:
/* 8054EE3C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8054EE40  7C 00 F0 40 */	cmplw r0, r30
/* 8054EE44  40 80 FF DC */	bge lbl_8054EE20
/* 8054EE48  7F 23 CB 78 */	mr r3, r25
/* 8054EE4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054EE50  4B B4 C0 B9 */	bl func_8009AF08
/* 8054EE54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054EE58  7C 08 03 A6 */	mtlr r0
/* 8054EE5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054EE60  4E 80 00 20 */	blr 
