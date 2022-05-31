lbl_805AC24C:
/* 805AC24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AC250  7C 08 02 A6 */	mflr r0
/* 805AC254  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AC258  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805AC25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AC260  3C C5 00 02 */	addis r6, r5, 2
/* 805AC264  38 80 00 02 */	li r4, 2
/* 805AC268  80 A6 60 DC */	lwz r5, 0x60dc(r6)
/* 805AC26C  80 05 00 04 */	lwz r0, 4(r5)
/* 805AC270  2C 00 00 00 */	cmpwi r0, 0
/* 805AC274  41 82 00 3C */	beq lbl_805AC2B0
/* 805AC278  88 06 61 25 */	lbz r0, 0x6125(r6)
/* 805AC27C  28 00 00 0C */	cmplwi r0, 0xc
/* 805AC280  40 82 00 2C */	bne lbl_805AC2AC
/* 805AC284  88 06 61 23 */	lbz r0, 0x6123(r6)
/* 805AC288  28 00 00 1F */	cmplwi r0, 0x1f
/* 805AC28C  40 82 00 20 */	bne lbl_805AC2AC
/* 805AC290  88 06 61 22 */	lbz r0, 0x6122(r6)
/* 805AC294  28 00 00 17 */	cmplwi r0, 0x17
/* 805AC298  40 82 00 14 */	bne lbl_805AC2AC
/* 805AC29C  88 06 61 21 */	lbz r0, 0x6121(r6)
/* 805AC2A0  28 00 00 3B */	cmplwi r0, 0x3b
/* 805AC2A4  40 82 00 08 */	bne lbl_805AC2AC
/* 805AC2A8  38 80 00 01 */	li r4, 1
lbl_805AC2AC:
/* 805AC2AC  48 00 00 6D */	bl aCOU_setup_action
lbl_805AC2B0:
/* 805AC2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC2B4  7C 08 03 A6 */	mtlr r0
/* 805AC2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AC2BC  4E 80 00 20 */	blr 
