lbl_803BA998:
/* 803BA998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA99C  7C 08 02 A6 */	mflr r0
/* 803BA9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA9A4  4B FE 05 15 */	bl mEv_CheckTitleDemo
/* 803BA9A8  2C 03 00 02 */	cmpwi r3, 2
/* 803BA9AC  41 82 00 2C */	beq lbl_803BA9D8
/* 803BA9B0  40 80 00 10 */	bge lbl_803BA9C0
/* 803BA9B4  2C 03 00 01 */	cmpwi r3, 1
/* 803BA9B8  40 80 00 18 */	bge lbl_803BA9D0
/* 803BA9BC  48 00 00 34 */	b lbl_803BA9F0
lbl_803BA9C0:
/* 803BA9C0  2C 03 00 05 */	cmpwi r3, 5
/* 803BA9C4  41 82 00 24 */	beq lbl_803BA9E8
/* 803BA9C8  40 80 00 28 */	bge lbl_803BA9F0
/* 803BA9CC  48 00 00 14 */	b lbl_803BA9E0
lbl_803BA9D0:
/* 803BA9D0  38 60 00 03 */	li r3, 3
/* 803BA9D4  48 00 00 40 */	b lbl_803BAA14
lbl_803BA9D8:
/* 803BA9D8  38 60 00 01 */	li r3, 1
/* 803BA9DC  48 00 00 38 */	b lbl_803BAA14
lbl_803BA9E0:
/* 803BA9E0  38 60 00 00 */	li r3, 0
/* 803BA9E4  48 00 00 30 */	b lbl_803BAA14
lbl_803BA9E8:
/* 803BA9E8  38 60 00 02 */	li r3, 2
/* 803BA9EC  48 00 00 28 */	b lbl_803BAA14
lbl_803BA9F0:
/* 803BA9F0  4B FE A2 DD */	bl mFI_GetFieldId
/* 803BA9F4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803BA9F8  40 82 00 18 */	bne lbl_803BAA10
/* 803BA9FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BAA00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BAA04  3C 63 00 02 */	addis r3, r3, 2
/* 803BAA08  A8 63 66 6C */	lha r3, 0x666c(r3)
/* 803BAA0C  48 00 00 08 */	b lbl_803BAA14
lbl_803BAA10:
/* 803BAA10  38 60 00 00 */	li r3, 0
lbl_803BAA14:
/* 803BAA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BAA18  7C 08 03 A6 */	mtlr r0
/* 803BAA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BAA20  4E 80 00 20 */	blr 
