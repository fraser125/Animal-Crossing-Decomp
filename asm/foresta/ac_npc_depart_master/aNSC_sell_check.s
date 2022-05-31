lbl_80550B60:
/* 80550B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550B64  7C 08 02 A6 */	mflr r0
/* 80550B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80550B70  4B B4 A3 65 */	bl func_8009AED4
/* 80550B74  7C 7D 1B 78 */	mr r29, r3
/* 80550B78  7C 9E 23 78 */	mr r30, r4
/* 80550B7C  4B E6 EB 2D */	bl func_803BF6A8
/* 80550B80  4B E7 01 19 */	bl mMsg_Check_MainNormalContinue
/* 80550B84  2C 03 00 00 */	cmpwi r3, 0
/* 80550B88  41 82 00 78 */	beq lbl_80550C00
/* 80550B8C  3B E0 FF FF */	li r31, -1
/* 80550B90  4B E3 29 B1 */	bl func_80383540
/* 80550B94  4B E3 2F D9 */	bl mChoice_Get_ChoseNum
/* 80550B98  2C 03 00 01 */	cmpwi r3, 1
/* 80550B9C  41 82 00 1C */	beq lbl_80550BB8
/* 80550BA0  40 80 00 1C */	bge lbl_80550BBC
/* 80550BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80550BA8  40 80 00 08 */	bge lbl_80550BB0
/* 80550BAC  48 00 00 10 */	b lbl_80550BBC
lbl_80550BB0:
/* 80550BB0  3B E0 00 20 */	li r31, 0x20
/* 80550BB4  48 00 00 08 */	b lbl_80550BBC
lbl_80550BB8:
/* 80550BB8  3B E0 00 21 */	li r31, 0x21
lbl_80550BBC:
/* 80550BBC  2C 1F FF FF */	cmpwi r31, -1
/* 80550BC0  41 82 00 40 */	beq lbl_80550C00
/* 80550BC4  88 1D 09 B8 */	lbz r0, 0x9b8(r29)
/* 80550BC8  28 00 00 01 */	cmplwi r0, 1
/* 80550BCC  40 82 00 24 */	bne lbl_80550BF0
/* 80550BD0  A0 1D 09 B4 */	lhz r0, 0x9b4(r29)
/* 80550BD4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80550BD8  2C 00 00 04 */	cmpwi r0, 4
/* 80550BDC  40 82 00 14 */	bne lbl_80550BF0
/* 80550BE0  93 FD 09 98 */	stw r31, 0x998(r29)
/* 80550BE4  3B E0 00 27 */	li r31, 0x27
/* 80550BE8  A0 1D 09 BC */	lhz r0, 0x9bc(r29)
/* 80550BEC  B0 1D 09 BE */	sth r0, 0x9be(r29)
lbl_80550BF0:
/* 80550BF0  7F A3 EB 78 */	mr r3, r29
/* 80550BF4  7F C4 F3 78 */	mr r4, r30
/* 80550BF8  7F E5 FB 78 */	mr r5, r31
/* 80550BFC  48 00 1C 39 */	bl aNSC_setupAction
lbl_80550C00:
/* 80550C00  39 61 00 20 */	addi r11, r1, 0x20
/* 80550C04  4B B4 A3 1D */	bl func_8009AF20
/* 80550C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550C0C  7C 08 03 A6 */	mtlr r0
/* 80550C10  38 21 00 20 */	addi r1, r1, 0x20
/* 80550C14  4E 80 00 20 */	blr 
