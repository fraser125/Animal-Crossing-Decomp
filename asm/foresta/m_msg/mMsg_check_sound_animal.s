lbl_803C1E90:
/* 803C1E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C1E94  7C 08 02 A6 */	mflr r0
/* 803C1E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C1E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C1EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 803C1EA4  7C 7E 1B 78 */	mr r30, r3
/* 803C1EA8  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C1EAC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 803C1EB0  41 82 00 0C */	beq lbl_803C1EBC
/* 803C1EB4  3B E0 00 00 */	li r31, 0
/* 803C1EB8  48 00 00 34 */	b lbl_803C1EEC
lbl_803C1EBC:
/* 803C1EBC  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803C1EC0  3B E0 00 00 */	li r31, 0
/* 803C1EC4  2C 00 00 00 */	cmpwi r0, 0
/* 803C1EC8  40 82 00 20 */	bne lbl_803C1EE8
/* 803C1ECC  4B FF FF 5D */	bl mMsg_check_sound_special
/* 803C1ED0  2C 03 00 00 */	cmpwi r3, 0
/* 803C1ED4  40 82 00 14 */	bne lbl_803C1EE8
/* 803C1ED8  7F C3 F3 78 */	mr r3, r30
/* 803C1EDC  4B FF FF 91 */	bl mMsg_check_sound_shasho
/* 803C1EE0  2C 03 00 00 */	cmpwi r3, 0
/* 803C1EE4  41 82 00 08 */	beq lbl_803C1EEC
lbl_803C1EE8:
/* 803C1EE8  3B E0 00 01 */	li r31, 1
lbl_803C1EEC:
/* 803C1EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C1EF0  7F E3 FB 78 */	mr r3, r31
/* 803C1EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C1EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C1EFC  7C 08 03 A6 */	mtlr r0
/* 803C1F00  38 21 00 10 */	addi r1, r1, 0x10
/* 803C1F04  4E 80 00 20 */	blr 
