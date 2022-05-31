lbl_804C674C:
/* 804C674C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C6750  7C 08 02 A6 */	mflr r0
/* 804C6754  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C6758  39 61 00 30 */	addi r11, r1, 0x30
/* 804C675C  4B BD 47 69 */	bl func_8009AEC4
/* 804C6760  3C E0 80 66 */	lis r7, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804C6764  3C C0 80 6A */	lis r6, d_size_682@ha /* 0x8069B8E4@ha */
/* 804C6768  7C 79 1B 78 */	mr r25, r3
/* 804C676C  7C 9A 23 78 */	mr r26, r4
/* 804C6770  7C BB 2B 78 */	mr r27, r5
/* 804C6774  3B C7 F0 5C */	addi r30, r7, ZeroSVec@l /* 0x8065F05C@l */
/* 804C6778  3B E6 B8 E4 */	addi r31, r6, d_size_682@l /* 0x8069B8E4@l */
/* 804C677C  3B 80 00 00 */	li r28, 0
/* 804C6780  3B A0 00 00 */	li r29, 0
lbl_804C6784:
/* 804C6784  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 804C6788  28 00 00 00 */	cmplwi r0, 0
/* 804C678C  41 82 00 30 */	beq lbl_804C67BC
/* 804C6790  93 A1 00 08 */	stw r29, 8(r1)
/* 804C6794  7F 23 CB 78 */	mr r3, r25
/* 804C6798  7F 44 D3 78 */	mr r4, r26
/* 804C679C  7F 66 DB 78 */	mr r6, r27
/* 804C67A0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 804C67A4  7F C7 F3 78 */	mr r7, r30
/* 804C67A8  7F E8 FB 78 */	mr r8, r31
/* 804C67AC  39 40 00 00 */	li r10, 0
/* 804C67B0  A0 BB 00 0C */	lhz r5, 0xc(r27)
/* 804C67B4  89 3B 00 0E */	lbz r9, 0xe(r27)
/* 804C67B8  48 00 44 C9 */	bl bit_cmn_single_drawS
lbl_804C67BC:
/* 804C67BC  3B 9C 00 01 */	addi r28, r28, 1
/* 804C67C0  3B 7B 00 14 */	addi r27, r27, 0x14
/* 804C67C4  2C 1C 00 03 */	cmpwi r28, 3
/* 804C67C8  41 80 FF BC */	blt lbl_804C6784
/* 804C67CC  39 61 00 30 */	addi r11, r1, 0x30
/* 804C67D0  4B BD 47 41 */	bl func_8009AF10
/* 804C67D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C67D8  7C 08 03 A6 */	mtlr r0
/* 804C67DC  38 21 00 30 */	addi r1, r1, 0x30
/* 804C67E0  4E 80 00 20 */	blr 
