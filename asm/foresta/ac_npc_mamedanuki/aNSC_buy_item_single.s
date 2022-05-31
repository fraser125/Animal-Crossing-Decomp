lbl_8055BF14:
/* 8055BF14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055BF18  7C 08 02 A6 */	mflr r0
/* 8055BF1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055BF20  39 61 00 30 */	addi r11, r1, 0x30
/* 8055BF24  4B B3 EF 99 */	bl func_8009AEBC
/* 8055BF28  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8055BF2C  3C E0 00 02 */	lis r7, 0x0002 /* 0x0001869F@ha */
/* 8055BF30  39 06 85 38 */	addi r8, r6, common_data@l /* 0x81138538@l */
/* 8055BF34  3C C0 80 6B */	lis r6, aNSC_exchange_itemNo@ha /* 0x806A9E30@ha */
/* 8055BF38  3F 88 00 02 */	addis r28, r8, 2
/* 8055BF3C  7C 7F 1B 78 */	mr r31, r3
/* 8055BF40  83 7C 61 3C */	lwz r27, 0x613c(r28)
/* 8055BF44  7C 97 23 78 */	mr r23, r4
/* 8055BF48  7C B8 2B 78 */	mr r24, r5
/* 8055BF4C  3B A7 86 9F */	addi r29, r7, 0x869F /* 0x0001869F@l */
/* 8055BF50  3B C6 9E 30 */	addi r30, r6, aNSC_exchange_itemNo@l /* 0x806A9E30@l */
/* 8055BF54  3B 20 00 01 */	li r25, 1
/* 8055BF58  48 00 00 54 */	b lbl_8055BFAC
lbl_8055BF5C:
/* 8055BF5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8055BF60  7C 03 E8 40 */	cmplw r3, r29
/* 8055BF64  41 80 00 18 */	blt lbl_8055BF7C
/* 8055BF68  38 03 8A D0 */	addi r0, r3, -30000
/* 8055BF6C  3B 40 00 00 */	li r26, 0
/* 8055BF70  90 1F 00 00 */	stw r0, 0(r31)
/* 8055BF74  3B 20 00 00 */	li r25, 0
/* 8055BF78  48 00 00 08 */	b lbl_8055BF80
lbl_8055BF7C:
/* 8055BF7C  3B 40 00 01 */	li r26, 1
lbl_8055BF80:
/* 8055BF80  7F 63 DB 78 */	mr r3, r27
/* 8055BF84  7E E4 BB 78 */	mr r4, r23
/* 8055BF88  38 A0 00 00 */	li r5, 0
/* 8055BF8C  4B E8 47 E5 */	bl mPr_GetPossessionItemIdxWithCond
/* 8055BF90  57 40 08 3C */	slwi r0, r26, 1
/* 8055BF94  7C 64 1B 78 */	mr r4, r3
/* 8055BF98  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8055BF9C  38 C0 00 00 */	li r6, 0
/* 8055BFA0  7C BE 02 2E */	lhzx r5, r30, r0
/* 8055BFA4  4B E8 4E 85 */	bl mPr_SetPossessionItem
/* 8055BFA8  3B 18 FF FF */	addi r24, r24, -1
lbl_8055BFAC:
/* 8055BFAC  28 18 00 00 */	cmplwi r24, 0
/* 8055BFB0  40 82 FF AC */	bne lbl_8055BF5C
/* 8055BFB4  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8055BFB8  3B C3 86 9F */	addi r30, r3, 0x869F /* 0x0001869F@l */
/* 8055BFBC  48 00 00 20 */	b lbl_8055BFDC
lbl_8055BFC0:
/* 8055BFC0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8055BFC4  38 80 21 02 */	li r4, 0x2102
/* 8055BFC8  38 A0 00 00 */	li r5, 0
/* 8055BFCC  38 03 8A D0 */	addi r0, r3, -30000
/* 8055BFD0  90 1F 00 00 */	stw r0, 0(r31)
/* 8055BFD4  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8055BFD8  4B E8 4F 31 */	bl mPr_SetFreePossessionItem
lbl_8055BFDC:
/* 8055BFDC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8055BFE0  7C 00 F0 40 */	cmplw r0, r30
/* 8055BFE4  40 80 FF DC */	bge lbl_8055BFC0
/* 8055BFE8  7F 23 CB 78 */	mr r3, r25
/* 8055BFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 8055BFF0  4B B3 EF 19 */	bl func_8009AF08
/* 8055BFF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055BFF8  7C 08 03 A6 */	mtlr r0
/* 8055BFFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8055C000  4E 80 00 20 */	blr 
