lbl_803EDD28:
/* 803EDD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDD2C  7C 08 02 A6 */	mflr r0
/* 803EDD30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDD34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDD3C  3C 63 00 02 */	addis r3, r3, 2
/* 803EDD40  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EDD44  4B FF F8 F9 */	bl mSC_LightHouse_get_period
/* 803EDD48  2C 03 00 01 */	cmpwi r3, 1
/* 803EDD4C  41 82 00 08 */	beq lbl_803EDD54
/* 803EDD50  48 00 00 0C */	b lbl_803EDD5C
lbl_803EDD54:
/* 803EDD54  38 60 00 01 */	li r3, 1
/* 803EDD58  48 00 00 08 */	b lbl_803EDD60
lbl_803EDD5C:
/* 803EDD5C  38 60 00 00 */	li r3, 0
lbl_803EDD60:
/* 803EDD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDD64  7C 08 03 A6 */	mtlr r0
/* 803EDD68  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDD6C  4E 80 00 20 */	blr 
