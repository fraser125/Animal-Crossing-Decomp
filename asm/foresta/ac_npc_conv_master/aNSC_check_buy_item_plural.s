lbl_80546AF8:
/* 80546AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80546AFC  7C 08 02 A6 */	mflr r0
/* 80546B00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80546B04  39 61 00 20 */	addi r11, r1, 0x20
/* 80546B08  4B B5 43 CD */	bl func_8009AED4
/* 80546B0C  83 E4 01 74 */	lwz r31, 0x174(r4)
/* 80546B10  3B A0 00 07 */	li r29, 7
/* 80546B14  AB C4 01 7A */	lha r30, 0x17a(r4)
/* 80546B18  93 C3 09 B0 */	stw r30, 0x9b0(r3)
/* 80546B1C  48 00 00 44 */	b lbl_80546B60
lbl_80546B20:
/* 80546B20  A0 7F 00 00 */	lhz r3, 0(r31)
/* 80546B24  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80546B28  2C 00 00 02 */	cmpwi r0, 2
/* 80546B2C  40 82 00 18 */	bne lbl_80546B44
/* 80546B30  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80546B34  2C 00 00 0F */	cmpwi r0, 0xf
/* 80546B38  40 82 00 0C */	bne lbl_80546B44
/* 80546B3C  3B A0 00 06 */	li r29, 6
/* 80546B40  48 00 00 28 */	b lbl_80546B68
lbl_80546B44:
/* 80546B44  4B EA 1B 5D */	bl mSP_ItemNo2ItemPrice
/* 80546B48  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80546B4C  41 82 00 0C */	beq lbl_80546B58
/* 80546B50  3B A0 00 06 */	li r29, 6
/* 80546B54  48 00 00 14 */	b lbl_80546B68
lbl_80546B58:
/* 80546B58  3B FF 00 04 */	addi r31, r31, 4
/* 80546B5C  3B DE FF FF */	addi r30, r30, -1
lbl_80546B60:
/* 80546B60  28 1E 00 00 */	cmplwi r30, 0
/* 80546B64  40 82 FF BC */	bne lbl_80546B20
lbl_80546B68:
/* 80546B68  7F A3 EB 78 */	mr r3, r29
/* 80546B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80546B70  4B B5 43 B1 */	bl func_8009AF20
/* 80546B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80546B78  7C 08 03 A6 */	mtlr r0
/* 80546B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80546B80  4E 80 00 20 */	blr 
