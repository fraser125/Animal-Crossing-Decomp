lbl_804BF334:
/* 804BF334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BF338  7C 08 02 A6 */	mflr r0
/* 804BF33C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BF340  39 61 00 30 */	addi r11, r1, 0x30
/* 804BF344  4B BD BB 81 */	bl func_8009AEC4
/* 804BF348  3C E0 80 66 */	lis r7, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804BF34C  3C C0 80 6A */	lis r6, d_size_682@ha /* 0x806988E4@ha */
/* 804BF350  7C 79 1B 78 */	mr r25, r3
/* 804BF354  7C 9A 23 78 */	mr r26, r4
/* 804BF358  7C BB 2B 78 */	mr r27, r5
/* 804BF35C  3B C7 F0 5C */	addi r30, r7, ZeroSVec@l /* 0x8065F05C@l */
/* 804BF360  3B E6 88 E4 */	addi r31, r6, d_size_682@l /* 0x806988E4@l */
/* 804BF364  3B 80 00 00 */	li r28, 0
/* 804BF368  3B A0 00 00 */	li r29, 0
lbl_804BF36C:
/* 804BF36C  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 804BF370  28 00 00 00 */	cmplwi r0, 0
/* 804BF374  41 82 00 30 */	beq lbl_804BF3A4
/* 804BF378  93 A1 00 08 */	stw r29, 8(r1)
/* 804BF37C  7F 23 CB 78 */	mr r3, r25
/* 804BF380  7F 44 D3 78 */	mr r4, r26
/* 804BF384  7F 66 DB 78 */	mr r6, r27
/* 804BF388  93 A1 00 0C */	stw r29, 0xc(r1)
/* 804BF38C  7F C7 F3 78 */	mr r7, r30
/* 804BF390  7F E8 FB 78 */	mr r8, r31
/* 804BF394  39 40 00 00 */	li r10, 0
/* 804BF398  A0 BB 00 0C */	lhz r5, 0xc(r27)
/* 804BF39C  89 3B 00 0E */	lbz r9, 0xe(r27)
/* 804BF3A0  48 00 44 C9 */	bl bit_cmn_single_drawS
lbl_804BF3A4:
/* 804BF3A4  3B 9C 00 01 */	addi r28, r28, 1
/* 804BF3A8  3B 7B 00 14 */	addi r27, r27, 0x14
/* 804BF3AC  2C 1C 00 03 */	cmpwi r28, 3
/* 804BF3B0  41 80 FF BC */	blt lbl_804BF36C
/* 804BF3B4  39 61 00 30 */	addi r11, r1, 0x30
/* 804BF3B8  4B BD BB 59 */	bl func_8009AF10
/* 804BF3BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BF3C0  7C 08 03 A6 */	mtlr r0
/* 804BF3C4  38 21 00 30 */	addi r1, r1, 0x30
/* 804BF3C8  4E 80 00 20 */	blr 
