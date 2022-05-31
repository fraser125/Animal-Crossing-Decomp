lbl_803EAED0:
/* 803EAED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EAED4  7C 08 02 A6 */	mflr r0
/* 803EAED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EAEDC  4B FF F8 35 */	bl mSP_ShopOpen
/* 803EAEE0  2C 03 00 06 */	cmpwi r3, 6
/* 803EAEE4  40 82 00 1C */	bne lbl_803EAF00
/* 803EAEE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAEEC  38 00 00 01 */	li r0, 1
/* 803EAEF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAEF4  3C 63 00 03 */	addis r3, r3, 3
/* 803EAEF8  90 03 88 9C */	stw r0, -0x7764(r3)
/* 803EAEFC  48 00 00 84 */	b lbl_803EAF80
lbl_803EAF00:
/* 803EAF00  4B FF FE 8D */	bl mSP_CheckFukubikiDay
/* 803EAF04  2C 03 00 00 */	cmpwi r3, 0
/* 803EAF08  41 82 00 1C */	beq lbl_803EAF24
/* 803EAF0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAF10  38 00 00 03 */	li r0, 3
/* 803EAF14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAF18  3C 63 00 03 */	addis r3, r3, 3
/* 803EAF1C  90 03 88 9C */	stw r0, -0x7764(r3)
/* 803EAF20  48 00 00 60 */	b lbl_803EAF80
lbl_803EAF24:
/* 803EAF24  4B FF FD ED */	bl mSP_Chk_HukubukuroSail
/* 803EAF28  2C 03 00 00 */	cmpwi r3, 0
/* 803EAF2C  41 82 00 1C */	beq lbl_803EAF48
/* 803EAF30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAF34  38 00 00 04 */	li r0, 4
/* 803EAF38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAF3C  3C 63 00 03 */	addis r3, r3, 3
/* 803EAF40  90 03 88 9C */	stw r0, -0x7764(r3)
/* 803EAF44  48 00 00 3C */	b lbl_803EAF80
lbl_803EAF48:
/* 803EAF48  4B FF FF 39 */	bl mSP_CheckHallowinDay
/* 803EAF4C  2C 03 00 00 */	cmpwi r3, 0
/* 803EAF50  41 82 00 1C */	beq lbl_803EAF6C
/* 803EAF54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAF58  38 00 00 02 */	li r0, 2
/* 803EAF5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAF60  3C 63 00 03 */	addis r3, r3, 3
/* 803EAF64  90 03 88 9C */	stw r0, -0x7764(r3)
/* 803EAF68  48 00 00 18 */	b lbl_803EAF80
lbl_803EAF6C:
/* 803EAF6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAF70  38 00 00 00 */	li r0, 0
/* 803EAF74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAF78  3C 63 00 03 */	addis r3, r3, 3
/* 803EAF7C  90 03 88 9C */	stw r0, -0x7764(r3)
lbl_803EAF80:
/* 803EAF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EAF84  7C 08 03 A6 */	mtlr r0
/* 803EAF88  38 21 00 10 */	addi r1, r1, 0x10
/* 803EAF8C  4E 80 00 20 */	blr 
