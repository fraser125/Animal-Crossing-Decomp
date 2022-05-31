lbl_803DFC18:
/* 803DFC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DFC1C  7C 08 02 A6 */	mflr r0
/* 803DFC20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DFC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DFC28  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DFC2C  3C 84 00 02 */	addis r4, r4, 2
/* 803DFC30  38 61 00 08 */	addi r3, r1, 8
/* 803DFC34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DFC38  3B E0 00 00 */	li r31, 0
/* 803DFC3C  38 84 61 20 */	addi r4, r4, 0x6120
/* 803DFC40  48 02 75 F5 */	bl lbRTC_TimeCopy
/* 803DFC44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFC48  38 81 00 08 */	addi r4, r1, 8
/* 803DFC4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFC50  3C 63 00 02 */	addis r3, r3, 2
/* 803DFC54  38 63 0E C8 */	addi r3, r3, 0xec8
/* 803DFC58  48 02 6C BD */	bl lbRTC_IsOverTime
/* 803DFC5C  2C 03 00 01 */	cmpwi r3, 1
/* 803DFC60  41 82 00 1C */	beq lbl_803DFC7C
/* 803DFC64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFC68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFC6C  3C 63 00 03 */	addis r3, r3, 3
/* 803DFC70  88 03 88 6A */	lbz r0, -0x7796(r3)
/* 803DFC74  28 00 00 01 */	cmplwi r0, 1
/* 803DFC78  40 82 00 24 */	bne lbl_803DFC9C
lbl_803DFC7C:
/* 803DFC7C  38 61 00 08 */	addi r3, r1, 8
/* 803DFC80  3B E0 00 01 */	li r31, 1
/* 803DFC84  4B FF FE 69 */	bl mPO_set_next_delivery_time
/* 803DFC88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFC8C  38 00 00 00 */	li r0, 0
/* 803DFC90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFC94  3C 63 00 03 */	addis r3, r3, 3
/* 803DFC98  98 03 88 6A */	stb r0, -0x7796(r3)
lbl_803DFC9C:
/* 803DFC9C  2C 1F 00 01 */	cmpwi r31, 1
/* 803DFCA0  40 82 00 08 */	bne lbl_803DFCA8
/* 803DFCA4  4B FF FB 8D */	bl mPO_delivery_mail
lbl_803DFCA8:
/* 803DFCA8  4B FD 3E 61 */	bl mLd_PlayerManKindCheck
/* 803DFCAC  2C 03 00 00 */	cmpwi r3, 0
/* 803DFCB0  40 82 00 1C */	bne lbl_803DFCCC
/* 803DFCB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFCB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFCBC  3C 63 00 02 */	addis r3, r3, 2
/* 803DFCC0  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803DFCC4  4B FD 38 F5 */	bl mHS_get_arrange_idx
/* 803DFCC8  4B FF F9 55 */	bl mPO_delivery_one_address_special_mail
lbl_803DFCCC:
/* 803DFCCC  2C 1F 00 01 */	cmpwi r31, 1
/* 803DFCD0  40 82 00 08 */	bne lbl_803DFCD8
/* 803DFCD4  4B FF FB 85 */	bl mPO_delivery_leaflet
lbl_803DFCD8:
/* 803DFCD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DFCDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DFCE0  7C 08 03 A6 */	mtlr r0
/* 803DFCE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DFCE8  4E 80 00 20 */	blr 
