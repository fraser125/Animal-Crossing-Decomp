lbl_80544A0C:
/* 80544A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544A10  7C 08 02 A6 */	mflr r0
/* 80544A14  2C 03 00 0F */	cmpwi r3, 0xf
/* 80544A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544A20  3B E0 00 00 */	li r31, 0
/* 80544A24  93 C1 00 08 */	stw r30, 8(r1)
/* 80544A28  40 80 00 5C */	bge lbl_80544A84
/* 80544A2C  2C 03 FF F1 */	cmpwi r3, -15
/* 80544A30  40 82 00 18 */	bne lbl_80544A48
/* 80544A34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544A38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80544A3C  3F C3 00 02 */	addis r30, r3, 2
/* 80544A40  3B DE 34 40 */	addi r30, r30, 0x3440
/* 80544A44  48 00 00 1C */	b lbl_80544A60
lbl_80544A48:
/* 80544A48  1C 83 09 88 */	mulli r4, r3, 0x988
/* 80544A4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544A50  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80544A54  7C 60 22 14 */	add r3, r0, r4
/* 80544A58  3F C3 00 01 */	addis r30, r3, 1
/* 80544A5C  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_80544A60:
/* 80544A60  A0 7E 08 E4 */	lhz r3, 0x8e4(r30)
/* 80544A64  4B FF 67 69 */	bl aNPC_dma_regist_check_cloth_data
/* 80544A68  2C 03 00 00 */	cmpwi r3, 0
/* 80544A6C  40 82 00 10 */	bne lbl_80544A7C
/* 80544A70  A0 7E 08 E4 */	lhz r3, 0x8e4(r30)
/* 80544A74  4B FF 66 85 */	bl aNPC_dma_regist_cloth_data
/* 80544A78  48 00 00 10 */	b lbl_80544A88
lbl_80544A7C:
/* 80544A7C  3B E0 00 01 */	li r31, 1
/* 80544A80  48 00 00 08 */	b lbl_80544A88
lbl_80544A84:
/* 80544A84  3B E0 00 01 */	li r31, 1
lbl_80544A88:
/* 80544A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544A8C  7F E3 FB 78 */	mr r3, r31
/* 80544A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80544A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80544A98  7C 08 03 A6 */	mtlr r0
/* 80544A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80544AA0  4E 80 00 20 */	blr 
