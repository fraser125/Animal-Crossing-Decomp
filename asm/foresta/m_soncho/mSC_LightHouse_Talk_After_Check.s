lbl_803EDA38:
/* 803EDA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDA3C  7C 08 02 A6 */	mflr r0
/* 803EDA40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EDA50  3F E3 00 02 */	addis r31, r3, 2
/* 803EDA54  7F E3 FB 78 */	mr r3, r31
/* 803EDA58  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EDA5C  4B FF FB E1 */	bl mSC_LightHouse_get_period
/* 803EDA60  2C 03 00 03 */	cmpwi r3, 3
/* 803EDA64  40 82 00 0C */	bne lbl_803EDA70
/* 803EDA68  38 60 00 00 */	li r3, 0
/* 803EDA6C  48 00 00 14 */	b lbl_803EDA80
lbl_803EDA70:
/* 803EDA70  88 1F 41 71 */	lbz r0, 0x4171(r31)
/* 803EDA74  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 803EDA78  30 03 FF FF */	addic r0, r3, -1
/* 803EDA7C  7C 60 19 10 */	subfe r3, r0, r3
lbl_803EDA80:
/* 803EDA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EDA88  7C 08 03 A6 */	mtlr r0
/* 803EDA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDA90  4E 80 00 20 */	blr 
