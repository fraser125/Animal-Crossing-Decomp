lbl_80489B50:
/* 80489B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489B54  7C 08 02 A6 */	mflr r0
/* 80489B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80489B60  4B C1 13 69 */	bl func_8009AEC8
/* 80489B64  7C 7A 1B 78 */	mr r26, r3
/* 80489B68  3B E0 FF FF */	li r31, -1
/* 80489B6C  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80489B70  3B BA 02 14 */	addi r29, r26, 0x214
/* 80489B74  3B 80 00 00 */	li r28, 0
/* 80489B78  80 63 00 00 */	lwz r3, 0(r3)
/* 80489B7C  83 C3 01 7C */	lwz r30, 0x17c(r3)
/* 80489B80  28 1E 00 00 */	cmplwi r30, 0
/* 80489B84  41 82 00 78 */	beq lbl_80489BFC
/* 80489B88  3B 60 00 00 */	li r27, 0
lbl_80489B8C:
/* 80489B8C  80 1A 09 34 */	lwz r0, 0x934(r26)
/* 80489B90  7C 1C 00 00 */	cmpw r28, r0
/* 80489B94  40 80 00 68 */	bge lbl_80489BFC
/* 80489B98  80 9D 00 08 */	lwz r4, 8(r29)
/* 80489B9C  28 04 00 00 */	cmplwi r4, 0
/* 80489BA0  41 82 00 4C */	beq lbl_80489BEC
/* 80489BA4  88 04 00 00 */	lbz r0, 0(r4)
/* 80489BA8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80489BAC  28 00 00 01 */	cmplwi r0, 1
/* 80489BB0  40 82 00 38 */	bne lbl_80489BE8
/* 80489BB4  88 04 00 2A */	lbz r0, 0x2a(r4)
/* 80489BB8  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 80489BBC  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 80489BC0  7C 00 07 74 */	extsb r0, r0
/* 80489BC4  2C 00 00 01 */	cmpwi r0, 1
/* 80489BC8  40 82 00 20 */	bne lbl_80489BE8
/* 80489BCC  7F C3 F3 78 */	mr r3, r30
/* 80489BD0  38 84 00 2C */	addi r4, r4, 0x2c
/* 80489BD4  4B F4 18 9D */	bl mNpc_CheckCmpAnimalPersonalID
/* 80489BD8  2C 03 00 01 */	cmpwi r3, 1
/* 80489BDC  40 82 00 0C */	bne lbl_80489BE8
/* 80489BE0  7F 7F DB 78 */	mr r31, r27
/* 80489BE4  48 00 00 18 */	b lbl_80489BFC
lbl_80489BE8:
/* 80489BE8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80489BEC:
/* 80489BEC  3B 7B 00 01 */	addi r27, r27, 1
/* 80489BF0  3B BD 00 34 */	addi r29, r29, 0x34
/* 80489BF4  2C 1B 00 23 */	cmpwi r27, 0x23
/* 80489BF8  41 80 FF 94 */	blt lbl_80489B8C
lbl_80489BFC:
/* 80489BFC  7F E3 FB 78 */	mr r3, r31
/* 80489C00  39 61 00 20 */	addi r11, r1, 0x20
/* 80489C04  4B C1 13 11 */	bl func_8009AF14
/* 80489C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489C0C  7C 08 03 A6 */	mtlr r0
/* 80489C10  38 21 00 20 */	addi r1, r1, 0x20
/* 80489C14  4E 80 00 20 */	blr 
