lbl_803C7B28:
/* 803C7B28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C7B2C  7C 08 02 A6 */	mflr r0
/* 803C7B30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C7B34  39 61 00 30 */	addi r11, r1, 0x30
/* 803C7B38  4B CD 33 8D */	bl func_8009AEC4
/* 803C7B3C  3C 80 80 66 */	lis r4, data_8065A208@ha /* 0x8065A208@ha */
/* 803C7B40  38 60 00 00 */	li r3, 0
/* 803C7B44  3B A4 A2 08 */	addi r29, r4, data_8065A208@l /* 0x8065A208@l */
/* 803C7B48  38 80 00 00 */	li r4, 0
/* 803C7B4C  4B FD F6 09 */	bl mFI_BkNumtoUtFGTop
/* 803C7B50  7C 7E 1B 79 */	or. r30, r3, r3
/* 803C7B54  41 82 00 90 */	beq lbl_803C7BE4
/* 803C7B58  3B 20 00 00 */	li r25, 0
/* 803C7B5C  3B E0 00 00 */	li r31, 0
lbl_803C7B60:
/* 803C7B60  7F 9D FA 14 */	add r28, r29, r31
/* 803C7B64  7F 23 CB 78 */	mr r3, r25
/* 803C7B68  80 1C 00 04 */	lwz r0, 4(r28)
/* 803C7B6C  8B 7C 00 00 */	lbz r27, 0(r28)
/* 803C7B70  54 1A 07 BE */	clrlwi r26, r0, 0x1e
/* 803C7B74  4B FF F8 65 */	bl func_803C73D8
/* 803C7B78  2C 03 00 00 */	cmpwi r3, 0
/* 803C7B7C  41 82 00 48 */	beq lbl_803C7BC4
/* 803C7B80  2C 19 00 00 */	cmpwi r25, 0
/* 803C7B84  38 00 00 00 */	li r0, 0
/* 803C7B88  41 80 00 10 */	blt lbl_803C7B98
/* 803C7B8C  2C 19 00 19 */	cmpwi r25, 0x19
/* 803C7B90  40 80 00 08 */	bge lbl_803C7B98
/* 803C7B94  38 00 00 01 */	li r0, 1
lbl_803C7B98:
/* 803C7B98  2C 00 00 00 */	cmpwi r0, 0
/* 803C7B9C  38 00 1E EC */	li r0, 0x1eec
/* 803C7BA0  41 82 00 10 */	beq lbl_803C7BB0
/* 803C7BA4  57 23 14 3A */	rlwinm r3, r25, 2, 0x10, 0x1d
/* 803C7BA8  38 03 1E EC */	addi r0, r3, 0x1eec
/* 803C7BAC  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_803C7BB0:
/* 803C7BB0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803C7BB4  57 60 08 3C */	slwi r0, r27, 1
/* 803C7BB8  7C 63 D2 14 */	add r3, r3, r26
/* 803C7BBC  7C 7E 03 2E */	sthx r3, r30, r0
/* 803C7BC0  48 00 00 14 */	b lbl_803C7BD4
lbl_803C7BC4:
/* 803C7BC4  A0 7C 00 02 */	lhz r3, 2(r28)
/* 803C7BC8  57 60 08 3C */	slwi r0, r27, 1
/* 803C7BCC  7C 7A 1A 14 */	add r3, r26, r3
/* 803C7BD0  7C 7E 03 2E */	sthx r3, r30, r0
lbl_803C7BD4:
/* 803C7BD4  3B 39 00 01 */	addi r25, r25, 1
/* 803C7BD8  3B FF 00 08 */	addi r31, r31, 8
/* 803C7BDC  2C 19 00 19 */	cmpwi r25, 0x19
/* 803C7BE0  41 80 FF 80 */	blt lbl_803C7B60
lbl_803C7BE4:
/* 803C7BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C7BE8  4B CD 33 29 */	bl func_8009AF10
/* 803C7BEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C7BF0  7C 08 03 A6 */	mtlr r0
/* 803C7BF4  38 21 00 30 */	addi r1, r1, 0x30
/* 803C7BF8  4E 80 00 20 */	blr 
