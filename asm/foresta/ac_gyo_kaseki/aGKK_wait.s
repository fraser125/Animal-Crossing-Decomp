lbl_805A5F38:
/* 805A5F38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A5F3C  7C 08 02 A6 */	mflr r0
/* 805A5F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A5F44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A5F48  7C 7F 1B 78 */	mr r31, r3
/* 805A5F4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A5F50  7C 9E 23 78 */	mr r30, r4
/* 805A5F54  80 63 02 18 */	lwz r3, 0x218(r3)
/* 805A5F58  2C 03 00 00 */	cmpwi r3, 0
/* 805A5F5C  40 82 00 0C */	bne lbl_805A5F68
/* 805A5F60  38 00 00 00 */	li r0, 0
/* 805A5F64  48 00 00 0C */	b lbl_805A5F70
lbl_805A5F68:
/* 805A5F68  38 03 FF FF */	addi r0, r3, -1
/* 805A5F6C  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A5F70:
/* 805A5F70  2C 00 00 00 */	cmpwi r0, 0
/* 805A5F74  40 82 00 48 */	bne lbl_805A5FBC
/* 805A5F78  7F E3 FB 78 */	mr r3, r31
/* 805A5F7C  4B FF EF 6D */	bl aGKK_speed_reset
/* 805A5F80  4B AB 6D 75 */	bl fqrand
/* 805A5F84  3C 60 80 65 */	lis r3, lit_748@ha /* 0x8064A488@ha */
/* 805A5F88  3C 80 80 6C */	lis r4, swim_action@ha /* 0x806C4288@ha */
/* 805A5F8C  38 A3 A4 88 */	addi r5, r3, lit_748@l /* 0x8064A488@l */
/* 805A5F90  7F E3 FB 78 */	mr r3, r31
/* 805A5F94  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A5F98  38 84 42 88 */	addi r4, r4, swim_action@l /* 0x806C4288@l */
/* 805A5F9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A5FA0  FC 00 00 1E */	fctiwz f0, f0
/* 805A5FA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A5FA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A5FAC  54 00 10 3A */	slwi r0, r0, 2
/* 805A5FB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805A5FB4  48 00 0B A5 */	bl aGKK_setupAction
/* 805A5FB8  48 00 00 30 */	b lbl_805A5FE8
lbl_805A5FBC:
/* 805A5FBC  7F E3 FB 78 */	mr r3, r31
/* 805A5FC0  4B FF FA 99 */	bl aGKK_check_wall
/* 805A5FC4  2C 03 00 01 */	cmpwi r3, 1
/* 805A5FC8  40 82 00 14 */	bne lbl_805A5FDC
/* 805A5FCC  7F E3 FB 78 */	mr r3, r31
/* 805A5FD0  38 80 00 06 */	li r4, 6
/* 805A5FD4  48 00 0B 85 */	bl aGKK_setupAction
/* 805A5FD8  48 00 00 10 */	b lbl_805A5FE8
lbl_805A5FDC:
/* 805A5FDC  7F E3 FB 78 */	mr r3, r31
/* 805A5FE0  7F C4 F3 78 */	mr r4, r30
/* 805A5FE4  4B FF FC 6D */	bl aGKK_check_uki
lbl_805A5FE8:
/* 805A5FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A5FEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A5FF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A5FF4  7C 08 03 A6 */	mtlr r0
/* 805A5FF8  38 21 00 20 */	addi r1, r1, 0x20
/* 805A5FFC  4E 80 00 20 */	blr 
