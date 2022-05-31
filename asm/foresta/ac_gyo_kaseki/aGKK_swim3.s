lbl_805A5DEC:
/* 805A5DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5DF0  7C 08 02 A6 */	mflr r0
/* 805A5DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A5DFC  7C 7F 1B 78 */	mr r31, r3
/* 805A5E00  93 C1 00 08 */	stw r30, 8(r1)
/* 805A5E04  7C 9E 23 78 */	mr r30, r4
/* 805A5E08  4B FF FC 51 */	bl aGKK_check_wall
/* 805A5E0C  2C 03 00 01 */	cmpwi r3, 1
/* 805A5E10  40 82 00 14 */	bne lbl_805A5E24
/* 805A5E14  7F E3 FB 78 */	mr r3, r31
/* 805A5E18  38 80 00 06 */	li r4, 6
/* 805A5E1C  48 00 0D 3D */	bl aGKK_setupAction
/* 805A5E20  48 00 00 48 */	b lbl_805A5E68
lbl_805A5E24:
/* 805A5E24  A8 9F 02 32 */	lha r4, 0x232(r31)
/* 805A5E28  38 7F 00 36 */	addi r3, r31, 0x36
/* 805A5E2C  38 A0 04 00 */	li r5, 0x400
/* 805A5E30  4B E1 4D 15 */	bl chase_angle
/* 805A5E34  2C 03 00 01 */	cmpwi r3, 1
/* 805A5E38  40 82 00 1C */	bne lbl_805A5E54
/* 805A5E3C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A5E40  7F E3 FB 78 */	mr r3, r31
/* 805A5E44  38 80 00 03 */	li r4, 3
/* 805A5E48  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A5E4C  48 00 0D 0D */	bl aGKK_setupAction
/* 805A5E50  48 00 00 18 */	b lbl_805A5E68
lbl_805A5E54:
/* 805A5E54  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A5E58  7F E3 FB 78 */	mr r3, r31
/* 805A5E5C  7F C4 F3 78 */	mr r4, r30
/* 805A5E60  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A5E64  4B FF FD ED */	bl aGKK_check_uki
lbl_805A5E68:
/* 805A5E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5E70  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A5E74  7C 08 03 A6 */	mtlr r0
/* 805A5E78  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5E7C  4E 80 00 20 */	blr 
