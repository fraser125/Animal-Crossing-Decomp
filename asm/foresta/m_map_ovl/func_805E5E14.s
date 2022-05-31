lbl_805E5E14:
/* 805E5E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5E18  7C 08 02 A6 */	mflr r0
/* 805E5E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E5E24  4B DA BA 61 */	bl mCoBG_Height2GetLayer
/* 805E5E28  2C 03 00 01 */	cmpwi r3, 1
/* 805E5E2C  41 82 00 28 */	beq lbl_805E5E54
/* 805E5E30  40 80 00 10 */	bge lbl_805E5E40
/* 805E5E34  2C 03 00 00 */	cmpwi r3, 0
/* 805E5E38  40 80 00 14 */	bge lbl_805E5E4C
/* 805E5E3C  48 00 00 28 */	b lbl_805E5E64
lbl_805E5E40:
/* 805E5E40  2C 03 00 03 */	cmpwi r3, 3
/* 805E5E44  40 80 00 20 */	bge lbl_805E5E64
/* 805E5E48  48 00 00 14 */	b lbl_805E5E5C
lbl_805E5E4C:
/* 805E5E4C  3B E0 00 02 */	li r31, 2
/* 805E5E50  48 00 00 18 */	b lbl_805E5E68
lbl_805E5E54:
/* 805E5E54  3B E0 00 01 */	li r31, 1
/* 805E5E58  48 00 00 10 */	b lbl_805E5E68
lbl_805E5E5C:
/* 805E5E5C  3B E0 00 00 */	li r31, 0
/* 805E5E60  48 00 00 08 */	b lbl_805E5E68
lbl_805E5E64:
/* 805E5E64  3B E0 00 01 */	li r31, 1
lbl_805E5E68:
/* 805E5E68  4B DF F1 71 */	bl mRF_CheckFieldStep3
/* 805E5E6C  2C 03 00 00 */	cmpwi r3, 0
/* 805E5E70  40 82 00 08 */	bne lbl_805E5E78
/* 805E5E74  3B FF FF FF */	addi r31, r31, -1
lbl_805E5E78:
/* 805E5E78  2C 1F 00 00 */	cmpwi r31, 0
/* 805E5E7C  40 80 00 08 */	bge lbl_805E5E84
/* 805E5E80  3B E0 00 00 */	li r31, 0
lbl_805E5E84:
/* 805E5E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5E88  7F E3 FB 78 */	mr r3, r31
/* 805E5E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E5E90  7C 08 03 A6 */	mtlr r0
/* 805E5E94  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5E98  4E 80 00 20 */	blr 
