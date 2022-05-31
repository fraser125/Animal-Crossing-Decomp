lbl_80378E88:
/* 80378E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378E8C  7C 08 02 A6 */	mflr r0
/* 80378E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378E98  93 C1 00 08 */	stw r30, 8(r1)
/* 80378E9C  7C 7E 1B 78 */	mr r30, r3
/* 80378EA0  88 03 00 00 */	lbz r0, 0(r3)
/* 80378EA4  28 00 00 7F */	cmplwi r0, 0x7f
/* 80378EA8  40 82 00 E0 */	bne lbl_80378F88
/* 80378EAC  48 02 BD E5 */	bl mFI_CheckFieldData
/* 80378EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80378EB4  41 82 00 D4 */	beq lbl_80378F88
/* 80378EB8  48 02 BE 15 */	bl mFI_GetFieldId
/* 80378EBC  7C 64 1B 78 */	mr r4, r3
/* 80378EC0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80378EC4  38 03 CF FF */	addi r0, r3, -12289
/* 80378EC8  28 00 00 11 */	cmplwi r0, 0x11
/* 80378ECC  41 81 00 94 */	bgt lbl_80378F60
/* 80378ED0  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064F560@ha */
/* 80378ED4  54 00 10 3A */	slwi r0, r0, 2
/* 80378ED8  38 63 F5 60 */	addi r3, r3, lit_628@l /* 0x8064F560@l */
/* 80378EDC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80378EE0  7C 09 03 A6 */	mtctr r0
/* 80378EE4  4E 80 04 20 */	bctr 
lbl_80378EE8:
/* 80378EE8  7F C3 F3 78 */	mr r3, r30
/* 80378EEC  4B FF FE C9 */	bl mBGMRoom_make_scene_bgm_shop_get
/* 80378EF0  7C 7F 1B 78 */	mr r31, r3
/* 80378EF4  48 00 00 70 */	b lbl_80378F64
lbl_80378EF8:
/* 80378EF8  3B E0 00 19 */	li r31, 0x19
/* 80378EFC  48 00 00 68 */	b lbl_80378F64
lbl_80378F00:
/* 80378F00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80378F04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80378F08  3C 63 00 03 */	addis r3, r3, 3
/* 80378F0C  88 03 88 6B */	lbz r0, -0x7795(r3)
/* 80378F10  28 00 00 00 */	cmplwi r0, 0
/* 80378F14  41 82 00 0C */	beq lbl_80378F20
/* 80378F18  3B E0 00 3E */	li r31, 0x3e
/* 80378F1C  48 00 00 48 */	b lbl_80378F64
lbl_80378F20:
/* 80378F20  3B E0 00 29 */	li r31, 0x29
/* 80378F24  48 00 00 40 */	b lbl_80378F64
lbl_80378F28:
/* 80378F28  3B E0 00 2D */	li r31, 0x2d
/* 80378F2C  48 00 00 38 */	b lbl_80378F64
lbl_80378F30:
/* 80378F30  3B E0 00 1A */	li r31, 0x1a
/* 80378F34  48 00 00 30 */	b lbl_80378F64
lbl_80378F38:
/* 80378F38  3B E0 00 4D */	li r31, 0x4d
/* 80378F3C  48 00 00 28 */	b lbl_80378F64
lbl_80378F40:
/* 80378F40  3B E0 00 FE */	li r31, 0xfe
/* 80378F44  48 00 00 20 */	b lbl_80378F64
lbl_80378F48:
/* 80378F48  3B E0 00 58 */	li r31, 0x58
/* 80378F4C  48 00 00 18 */	b lbl_80378F64
lbl_80378F50:
/* 80378F50  3B E0 00 59 */	li r31, 0x59
/* 80378F54  48 00 00 10 */	b lbl_80378F64
lbl_80378F58:
/* 80378F58  3B E0 00 5A */	li r31, 0x5a
/* 80378F5C  48 00 00 08 */	b lbl_80378F64
lbl_80378F60:
/* 80378F60  3B E0 00 7F */	li r31, 0x7f
lbl_80378F64:
/* 80378F64  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80378F68  28 00 00 7F */	cmplwi r0, 0x7f
/* 80378F6C  41 82 00 1C */	beq lbl_80378F88
/* 80378F70  7F C3 F3 78 */	mr r3, r30
/* 80378F74  4B FF FA 21 */	bl mBGMElem_default_set
/* 80378F78  9B FE 00 00 */	stb r31, 0(r30)
/* 80378F7C  7F E3 FB 78 */	mr r3, r31
/* 80378F80  38 80 01 68 */	li r4, 0x168
/* 80378F84  48 00 2E ED */	bl mBGMPsComp_make_ps_room
lbl_80378F88:
/* 80378F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378F90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80378F94  7C 08 03 A6 */	mtlr r0
/* 80378F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80378F9C  4E 80 00 20 */	blr 
