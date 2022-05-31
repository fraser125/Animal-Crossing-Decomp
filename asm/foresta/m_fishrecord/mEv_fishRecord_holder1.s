lbl_803ABBE4:
/* 803ABBE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803ABBE8  7C 08 02 A6 */	mflr r0
/* 803ABBEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803ABBF0  39 61 00 30 */	addi r11, r1, 0x30
/* 803ABBF4  4B CE F2 E1 */	bl func_8009AED4
/* 803ABBF8  7C BF 2B 78 */	mr r31, r5
/* 803ABBFC  7C 7D 1B 78 */	mr r29, r3
/* 803ABC00  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 803ABC04  7C 9E 23 78 */	mr r30, r4
/* 803ABC08  38 61 00 0C */	addi r3, r1, 0xc
/* 803ABC0C  38 81 00 08 */	addi r4, r1, 8
/* 803ABC10  38 BF 00 14 */	addi r5, r31, 0x14
/* 803ABC14  4B FF FE A5 */	bl mEv_fishRecord_local
/* 803ABC18  2C 03 00 00 */	cmpwi r3, 0
/* 803ABC1C  40 82 00 34 */	bne lbl_803ABC50
/* 803ABC20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ABC24  7F A3 EB 78 */	mr r3, r29
/* 803ABC28  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ABC2C  3C 84 00 02 */	addis r4, r4, 2
/* 803ABC30  38 84 3E 68 */	addi r4, r4, 0x3e68
/* 803ABC34  48 03 44 ED */	bl mPr_CopyPersonalID
/* 803ABC38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ABC3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ABC40  3C 63 00 02 */	addis r3, r3, 2
/* 803ABC44  80 03 3E 84 */	lwz r0, 0x3e84(r3)
/* 803ABC48  90 1E 00 00 */	stw r0, 0(r30)
/* 803ABC4C  48 00 00 2C */	b lbl_803ABC78
lbl_803ABC50:
/* 803ABC50  80 01 00 08 */	lwz r0, 8(r1)
/* 803ABC54  7F E3 FB 78 */	mr r3, r31
/* 803ABC58  38 81 00 0C */	addi r4, r1, 0xc
/* 803ABC5C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803ABC60  48 03 44 C1 */	bl mPr_CopyPersonalID
/* 803ABC64  80 01 00 08 */	lwz r0, 8(r1)
/* 803ABC68  7F A3 EB 78 */	mr r3, r29
/* 803ABC6C  38 81 00 0C */	addi r4, r1, 0xc
/* 803ABC70  90 1E 00 00 */	stw r0, 0(r30)
/* 803ABC74  48 03 44 AD */	bl mPr_CopyPersonalID
lbl_803ABC78:
/* 803ABC78  39 61 00 30 */	addi r11, r1, 0x30
/* 803ABC7C  4B CE F2 A5 */	bl func_8009AF20
/* 803ABC80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803ABC84  7C 08 03 A6 */	mtlr r0
/* 803ABC88  38 21 00 30 */	addi r1, r1, 0x30
/* 803ABC8C  4E 80 00 20 */	blr 
