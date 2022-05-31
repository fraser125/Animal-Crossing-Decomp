lbl_80588DD8:
/* 80588DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588DDC  7C 08 02 A6 */	mflr r0
/* 80588DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80588DE8  7C 7F 1B 78 */	mr r31, r3
/* 80588DEC  88 03 09 94 */	lbz r0, 0x994(r3)
/* 80588DF0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80588DF4  41 82 00 08 */	beq lbl_80588DFC
/* 80588DF8  48 00 00 B0 */	b lbl_80588EA8
lbl_80588DFC:
/* 80588DFC  88 BF 09 98 */	lbz r5, 0x998(r31)
/* 80588E00  3C 80 80 6C */	lis r4, aTS0_endRatio@ha /* 0x806C1E70@ha */
/* 80588E04  38 84 1E 70 */	addi r4, r4, aTS0_endRatio@l /* 0x806C1E70@l */
/* 80588E08  C0 3F 09 9C */	lfs f1, 0x99c(r31)
/* 80588E0C  7C A5 07 74 */	extsb r5, r5
/* 80588E10  54 A0 10 3A */	slwi r0, r5, 2
/* 80588E14  7C 04 04 2E */	lfsx f0, r4, r0
/* 80588E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588E1C  4C 41 13 82 */	cror 2, 1, 2
/* 80588E20  40 82 00 30 */	bne lbl_80588E50
/* 80588E24  38 A5 00 01 */	addi r5, r5, 1
/* 80588E28  38 80 00 0A */	li r4, 0xa
/* 80588E2C  7C 05 23 D6 */	divw r0, r5, r4
/* 80588E30  7C 00 21 D6 */	mullw r0, r0, r4
/* 80588E34  7C 00 28 50 */	subf r0, r0, r5
/* 80588E38  98 1F 09 94 */	stb r0, 0x994(r31)
/* 80588E3C  4B FF FC 29 */	bl aTS0_setup_morph
/* 80588E40  3C 60 81 1F */	lis r3, aTS0_failure_actor_p@ha /* 0x811ED3D8@ha */
/* 80588E44  38 00 00 00 */	li r0, 0
/* 80588E48  90 03 D3 D8 */	stw r0, aTS0_failure_actor_p@l(r3)  /* 0x811ED3D8@l */
/* 80588E4C  98 1F 09 96 */	stb r0, 0x996(r31)
lbl_80588E50:
/* 80588E50  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80588E54  2C 00 00 01 */	cmpwi r0, 1
/* 80588E58  40 82 00 1C */	bne lbl_80588E74
/* 80588E5C  38 00 00 01 */	li r0, 1
/* 80588E60  7F E3 FB 78 */	mr r3, r31
/* 80588E64  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80588E68  88 9F 09 94 */	lbz r4, 0x994(r31)
/* 80588E6C  7C 84 07 74 */	extsb r4, r4
/* 80588E70  4B FF F9 E1 */	bl aTS0_set_animation
lbl_80588E74:
/* 80588E74  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80588E78  2C 00 00 5E */	cmpwi r0, 0x5e
/* 80588E7C  40 82 00 4C */	bne lbl_80588EC8
/* 80588E80  3C 60 80 65 */	lis r3, lit_643@ha /* 0x80649B30@ha */
/* 80588E84  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80588E88  C0 03 9B 30 */	lfs f0, lit_643@l(r3)  /* 0x80649B30@l */
/* 80588E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588E90  40 81 00 38 */	ble lbl_80588EC8
/* 80588E94  38 60 00 28 */	li r3, 0x28
/* 80588E98  38 00 00 1E */	li r0, 0x1e
/* 80588E9C  B0 7F 07 54 */	sth r3, 0x754(r31)
/* 80588EA0  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 80588EA4  48 00 00 24 */	b lbl_80588EC8
lbl_80588EA8:
/* 80588EA8  3C 80 80 65 */	lis r4, lit_625@ha /* 0x80649B2C@ha */
/* 80588EAC  C0 3F 09 9C */	lfs f1, 0x99c(r31)
/* 80588EB0  C0 04 9B 2C */	lfs f0, lit_625@l(r4)  /* 0x80649B2C@l */
/* 80588EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588EB8  4C 41 13 82 */	cror 2, 1, 2
/* 80588EBC  40 82 00 0C */	bne lbl_80588EC8
/* 80588EC0  38 80 00 0A */	li r4, 0xa
/* 80588EC4  4B FF F9 E5 */	bl aTS0_set_animation2
lbl_80588EC8:
/* 80588EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80588ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80588ED0  7C 08 03 A6 */	mtlr r0
/* 80588ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80588ED8  4E 80 00 20 */	blr 
