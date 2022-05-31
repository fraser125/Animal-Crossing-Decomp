lbl_803DFB74:
/* 803DFB74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DFB78  7C 08 02 A6 */	mflr r0
/* 803DFB7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DFB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DFB84  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DFB88  3C 84 00 02 */	addis r4, r4, 2
/* 803DFB8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DFB90  7C 7F 1B 78 */	mr r31, r3
/* 803DFB94  38 61 00 08 */	addi r3, r1, 8
/* 803DFB98  38 84 61 20 */	addi r4, r4, 0x6120
/* 803DFB9C  48 02 76 99 */	bl lbRTC_TimeCopy
/* 803DFBA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFBA4  38 81 00 08 */	addi r4, r1, 8
/* 803DFBA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFBAC  3C 63 00 02 */	addis r3, r3, 2
/* 803DFBB0  38 63 0E C8 */	addi r3, r3, 0xec8
/* 803DFBB4  48 02 6D 61 */	bl lbRTC_IsOverTime
/* 803DFBB8  2C 03 00 01 */	cmpwi r3, 1
/* 803DFBBC  41 82 00 1C */	beq lbl_803DFBD8
/* 803DFBC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFBC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFBC8  3C 63 00 03 */	addis r3, r3, 3
/* 803DFBCC  88 03 88 6A */	lbz r0, -0x7796(r3)
/* 803DFBD0  28 00 00 01 */	cmplwi r0, 1
/* 803DFBD4  40 82 00 30 */	bne lbl_803DFC04
lbl_803DFBD8:
/* 803DFBD8  7F E3 FB 78 */	mr r3, r31
/* 803DFBDC  4B FF FD 09 */	bl mPO_make_post_man
/* 803DFBE0  2C 03 00 01 */	cmpwi r3, 1
/* 803DFBE4  40 82 00 20 */	bne lbl_803DFC04
/* 803DFBE8  38 61 00 08 */	addi r3, r1, 8
/* 803DFBEC  4B FF FF 01 */	bl mPO_set_next_delivery_time
/* 803DFBF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFBF4  38 00 00 00 */	li r0, 0
/* 803DFBF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFBFC  3C 63 00 03 */	addis r3, r3, 3
/* 803DFC00  98 03 88 6A */	stb r0, -0x7796(r3)
lbl_803DFC04:
/* 803DFC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DFC08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DFC0C  7C 08 03 A6 */	mtlr r0
/* 803DFC10  38 21 00 20 */	addi r1, r1, 0x20
/* 803DFC14  4E 80 00 20 */	blr 
