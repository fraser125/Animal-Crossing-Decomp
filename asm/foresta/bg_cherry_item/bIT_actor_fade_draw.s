lbl_804B04B8:
/* 804B04B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B04BC  7C 08 02 A6 */	mflr r0
/* 804B04C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B04C4  39 61 00 30 */	addi r11, r1, 0x30
/* 804B04C8  4B BE A9 FD */	bl func_8009AEC4
/* 804B04CC  3C E0 80 66 */	lis r7, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B04D0  3C C0 80 69 */	lis r6, d_size_682@ha /* 0x806927B4@ha */
/* 804B04D4  7C 79 1B 78 */	mr r25, r3
/* 804B04D8  7C 9A 23 78 */	mr r26, r4
/* 804B04DC  7C BB 2B 78 */	mr r27, r5
/* 804B04E0  3B C7 F0 5C */	addi r30, r7, ZeroSVec@l /* 0x8065F05C@l */
/* 804B04E4  3B E6 27 B4 */	addi r31, r6, d_size_682@l /* 0x806927B4@l */
/* 804B04E8  3B 80 00 00 */	li r28, 0
/* 804B04EC  3B A0 00 00 */	li r29, 0
lbl_804B04F0:
/* 804B04F0  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 804B04F4  28 00 00 00 */	cmplwi r0, 0
/* 804B04F8  41 82 00 30 */	beq lbl_804B0528
/* 804B04FC  93 A1 00 08 */	stw r29, 8(r1)
/* 804B0500  7F 23 CB 78 */	mr r3, r25
/* 804B0504  7F 44 D3 78 */	mr r4, r26
/* 804B0508  7F 66 DB 78 */	mr r6, r27
/* 804B050C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 804B0510  7F C7 F3 78 */	mr r7, r30
/* 804B0514  7F E8 FB 78 */	mr r8, r31
/* 804B0518  39 40 00 00 */	li r10, 0
/* 804B051C  A0 BB 00 0C */	lhz r5, 0xc(r27)
/* 804B0520  89 3B 00 0E */	lbz r9, 0xe(r27)
/* 804B0524  48 00 44 C9 */	bl bit_cmn_single_drawS
lbl_804B0528:
/* 804B0528  3B 9C 00 01 */	addi r28, r28, 1
/* 804B052C  3B 7B 00 14 */	addi r27, r27, 0x14
/* 804B0530  2C 1C 00 03 */	cmpwi r28, 3
/* 804B0534  41 80 FF BC */	blt lbl_804B04F0
/* 804B0538  39 61 00 30 */	addi r11, r1, 0x30
/* 804B053C  4B BE A9 D5 */	bl func_8009AF10
/* 804B0540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0544  7C 08 03 A6 */	mtlr r0
/* 804B0548  38 21 00 30 */	addi r1, r1, 0x30
/* 804B054C  4E 80 00 20 */	blr 
