lbl_80514B08:
/* 80514B08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80514B0C  7C 08 02 A6 */	mflr r0
/* 80514B10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80514B14  39 61 00 20 */	addi r11, r1, 0x20
/* 80514B18  4B B8 63 B9 */	bl func_8009AED0
/* 80514B1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80514B20  3B A0 00 00 */	li r29, 0
/* 80514B24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80514B28  3F E3 00 01 */	addis r31, r3, 1
/* 80514B2C  3B FF 37 A8 */	addi r31, r31, 0x37a8
lbl_80514B30:
/* 80514B30  7F FE FB 78 */	mr r30, r31
/* 80514B34  3B 80 00 00 */	li r28, 0
lbl_80514B38:
/* 80514B38  7F C3 F3 78 */	mr r3, r30
/* 80514B3C  4B ED D0 31 */	bl mSN_ClearSnowman
/* 80514B40  3B 9C 00 01 */	addi r28, r28, 1
/* 80514B44  3B DE 00 02 */	addi r30, r30, 2
/* 80514B48  2C 1C 01 00 */	cmpwi r28, 0x100
/* 80514B4C  41 80 FF EC */	blt lbl_80514B38
/* 80514B50  3B BD 00 01 */	addi r29, r29, 1
/* 80514B54  3B FF 02 00 */	addi r31, r31, 0x200
/* 80514B58  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80514B5C  41 80 FF D4 */	blt lbl_80514B30
/* 80514B60  39 61 00 20 */	addi r11, r1, 0x20
/* 80514B64  4B B8 63 B9 */	bl func_8009AF1C
/* 80514B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80514B6C  7C 08 03 A6 */	mtlr r0
/* 80514B70  38 21 00 20 */	addi r1, r1, 0x20
/* 80514B74  4E 80 00 20 */	blr 
