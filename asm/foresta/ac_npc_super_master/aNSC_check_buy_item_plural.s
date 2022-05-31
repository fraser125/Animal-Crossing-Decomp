lbl_80581B9C:
/* 80581B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80581BA0  7C 08 02 A6 */	mflr r0
/* 80581BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80581BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80581BAC  4B B1 93 29 */	bl func_8009AED4
/* 80581BB0  83 E4 01 74 */	lwz r31, 0x174(r4)
/* 80581BB4  3B A0 00 07 */	li r29, 7
/* 80581BB8  AB C4 01 7A */	lha r30, 0x17a(r4)
/* 80581BBC  93 C3 09 B0 */	stw r30, 0x9b0(r3)
/* 80581BC0  48 00 00 44 */	b lbl_80581C04
lbl_80581BC4:
/* 80581BC4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 80581BC8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80581BCC  2C 00 00 02 */	cmpwi r0, 2
/* 80581BD0  40 82 00 18 */	bne lbl_80581BE8
/* 80581BD4  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80581BD8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80581BDC  40 82 00 0C */	bne lbl_80581BE8
/* 80581BE0  3B A0 00 06 */	li r29, 6
/* 80581BE4  48 00 00 28 */	b lbl_80581C0C
lbl_80581BE8:
/* 80581BE8  4B E6 6A B9 */	bl mSP_ItemNo2ItemPrice
/* 80581BEC  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80581BF0  41 82 00 0C */	beq lbl_80581BFC
/* 80581BF4  3B A0 00 06 */	li r29, 6
/* 80581BF8  48 00 00 14 */	b lbl_80581C0C
lbl_80581BFC:
/* 80581BFC  3B FF 00 04 */	addi r31, r31, 4
/* 80581C00  3B DE FF FF */	addi r30, r30, -1
lbl_80581C04:
/* 80581C04  28 1E 00 00 */	cmplwi r30, 0
/* 80581C08  40 82 FF BC */	bne lbl_80581BC4
lbl_80581C0C:
/* 80581C0C  7F A3 EB 78 */	mr r3, r29
/* 80581C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80581C14  4B B1 93 0D */	bl func_8009AF20
/* 80581C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581C1C  7C 08 03 A6 */	mtlr r0
/* 80581C20  38 21 00 20 */	addi r1, r1, 0x20
/* 80581C24  4E 80 00 20 */	blr 
