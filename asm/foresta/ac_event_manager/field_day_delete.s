lbl_8041FAF8:
/* 8041FAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041FAFC  7C 08 02 A6 */	mflr r0
/* 8041FB00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041FB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041FB08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041FB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041FB10  3F E3 00 03 */	addis r31, r3, 3
/* 8041FB14  93 C1 00 08 */	stw r30, 8(r1)
/* 8041FB18  AB DF 87 EC */	lha r30, -0x7814(r31)
/* 8041FB1C  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8041FB20  41 82 00 9C */	beq lbl_8041FBBC
/* 8041FB24  40 80 00 14 */	bge lbl_8041FB38
/* 8041FB28  2C 1E 00 0C */	cmpwi r30, 0xc
/* 8041FB2C  41 82 00 50 */	beq lbl_8041FB7C
/* 8041FB30  40 80 00 14 */	bge lbl_8041FB44
/* 8041FB34  48 00 00 94 */	b lbl_8041FBC8
lbl_8041FB38:
/* 8041FB38  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8041FB3C  40 80 00 8C */	bge lbl_8041FBC8
/* 8041FB40  48 00 00 2C */	b lbl_8041FB6C
lbl_8041FB44:
/* 8041FB44  7F C3 F3 78 */	mr r3, r30
/* 8041FB48  38 80 00 05 */	li r4, 5
/* 8041FB4C  4B FF C0 51 */	bl delete_FG2
/* 8041FB50  7F C3 F3 78 */	mr r3, r30
/* 8041FB54  38 80 00 04 */	li r4, 4
/* 8041FB58  4B F7 E7 C5 */	bl mEv_clear_common_place
/* 8041FB5C  7F C3 F3 78 */	mr r3, r30
/* 8041FB60  38 80 00 06 */	li r4, 6
/* 8041FB64  4B F7 E7 B9 */	bl mEv_clear_common_place
/* 8041FB68  48 00 00 60 */	b lbl_8041FBC8
lbl_8041FB6C:
/* 8041FB6C  7F C3 F3 78 */	mr r3, r30
/* 8041FB70  38 80 00 05 */	li r4, 5
/* 8041FB74  4B F7 E7 A9 */	bl mEv_clear_common_place
/* 8041FB78  48 00 00 50 */	b lbl_8041FBC8
lbl_8041FB7C:
/* 8041FB7C  7F C3 F3 78 */	mr r3, r30
/* 8041FB80  38 80 00 06 */	li r4, 6
/* 8041FB84  4B FF C0 19 */	bl delete_FG2
/* 8041FB88  7F C3 F3 78 */	mr r3, r30
/* 8041FB8C  38 80 00 05 */	li r4, 5
/* 8041FB90  4B FF C0 0D */	bl delete_FG2
/* 8041FB94  7F C3 F3 78 */	mr r3, r30
/* 8041FB98  38 80 00 08 */	li r4, 8
/* 8041FB9C  4B FF C0 01 */	bl delete_FG2
/* 8041FBA0  7F C3 F3 78 */	mr r3, r30
/* 8041FBA4  38 80 00 07 */	li r4, 7
/* 8041FBA8  4B FF BF F5 */	bl delete_FG2
/* 8041FBAC  7F C3 F3 78 */	mr r3, r30
/* 8041FBB0  38 80 00 09 */	li r4, 9
/* 8041FBB4  4B F7 E7 69 */	bl mEv_clear_common_place
/* 8041FBB8  48 00 00 10 */	b lbl_8041FBC8
lbl_8041FBBC:
/* 8041FBBC  7F C3 F3 78 */	mr r3, r30
/* 8041FBC0  38 80 00 05 */	li r4, 5
/* 8041FBC4  4B F7 E7 59 */	bl mEv_clear_common_place
lbl_8041FBC8:
/* 8041FBC8  38 00 FF FF */	li r0, -1
/* 8041FBCC  B0 1F 87 EC */	sth r0, -0x7814(r31)
/* 8041FBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FBD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041FBD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041FBDC  7C 08 03 A6 */	mtlr r0
/* 8041FBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041FBE4  4E 80 00 20 */	blr 
