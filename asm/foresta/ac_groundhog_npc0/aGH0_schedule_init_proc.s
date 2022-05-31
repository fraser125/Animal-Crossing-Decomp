lbl_80590E38:
/* 80590E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590E3C  7C 08 02 A6 */	mflr r0
/* 80590E40  3C A0 80 59 */	lis r5, aGH0_think_proc@ha /* 0x80590E04@ha */
/* 80590E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590E48  38 05 0E 04 */	addi r0, r5, aGH0_think_proc@l /* 0x80590E04@l */
/* 80590E4C  38 A0 00 37 */	li r5, 0x37
/* 80590E50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80590E54  7C 9F 23 78 */	mr r31, r4
/* 80590E58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80590E5C  7C 7E 1B 78 */	mr r30, r3
/* 80590E60  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80590E64  38 60 00 00 */	li r3, 0
/* 80590E68  38 00 FF FF */	li r0, -1
/* 80590E6C  90 BE 08 40 */	stw r5, 0x840(r30)
/* 80590E70  98 7E 08 31 */	stb r3, 0x831(r30)
/* 80590E74  90 1E 08 F4 */	stw r0, 0x8f4(r30)
/* 80590E78  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80590E7C  4B FF FE 31 */	bl aGH0_get_now_term
/* 80590E80  90 7E 09 A0 */	stw r3, 0x9a0(r30)
/* 80590E84  38 80 00 05 */	li r4, 5
/* 80590E88  38 60 00 01 */	li r3, 1
/* 80590E8C  38 00 00 FE */	li r0, 0xfe
/* 80590E90  B0 9E 09 74 */	sth r4, 0x974(r30)
/* 80590E94  98 7E 09 59 */	stb r3, 0x959(r30)
/* 80590E98  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80590E9C  A0 7E 00 06 */	lhz r3, 6(r30)
/* 80590EA0  3C A3 FF FF */	addis r5, r3, 0xffff
/* 80590EA4  34 A5 2F 78 */	addic. r5, r5, 0x2f78
/* 80590EA8  41 80 00 0C */	blt lbl_80590EB4
/* 80590EAC  2C 05 00 04 */	cmpwi r5, 4
/* 80590EB0  41 80 00 08 */	blt lbl_80590EB8
lbl_80590EB4:
/* 80590EB4  38 A0 00 00 */	li r5, 0
lbl_80590EB8:
/* 80590EB8  3C 80 80 6C */	lis r4, def_angle@ha /* 0x806C2834@ha */
/* 80590EBC  90 BE 09 A4 */	stw r5, 0x9a4(r30)
/* 80590EC0  54 A0 08 3C */	slwi r0, r5, 1
/* 80590EC4  3C 60 80 6C */	lis r3, def_pos@ha /* 0x806C283C@ha */
/* 80590EC8  38 84 28 34 */	addi r4, r4, def_angle@l /* 0x806C2834@l */
/* 80590ECC  54 A5 18 38 */	slwi r5, r5, 3
/* 80590ED0  7C C4 02 AE */	lhax r6, r4, r0
/* 80590ED4  38 83 28 3C */	addi r4, r3, def_pos@l /* 0x806C283C@l */
/* 80590ED8  7C 64 2A 14 */	add r3, r4, r5
/* 80590EDC  38 00 00 00 */	li r0, 0
/* 80590EE0  B0 DE 00 DE */	sth r6, 0xde(r30)
/* 80590EE4  B0 DE 00 36 */	sth r6, 0x36(r30)
/* 80590EE8  B0 DE 09 24 */	sth r6, 0x924(r30)
/* 80590EEC  B0 DE 09 A8 */	sth r6, 0x9a8(r30)
/* 80590EF0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80590EF4  7C 04 2C 2E */	lfsx f0, r4, r5
/* 80590EF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80590EFC  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80590F00  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80590F04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80590F08  EC 01 00 2A */	fadds f0, f1, f0
/* 80590F0C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80590F10  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80590F14  4B AC BD E1 */	bl fqrand
/* 80590F18  3C 60 80 65 */	lis r3, lit_591@ha /* 0x80649C84@ha */
/* 80590F1C  3C 00 43 30 */	lis r0, 0x4330
/* 80590F20  38 83 9C 84 */	addi r4, r3, lit_591@l /* 0x80649C84@l */
/* 80590F24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80590F28  C0 04 00 00 */	lfs f0, 0(r4)
/* 80590F2C  3C 60 80 65 */	lis r3, lit_472@ha /* 0x80649C74@ha */
/* 80590F30  38 83 9C 74 */	addi r4, r3, lit_472@l /* 0x80649C74@l */
/* 80590F34  EC 20 00 72 */	fmuls f1, f0, f1
/* 80590F38  3C 60 80 65 */	lis r3, lit_590@ha /* 0x80649C80@ha */
/* 80590F3C  C8 44 00 00 */	lfd f2, 0(r4)
/* 80590F40  C0 03 9C 80 */	lfs f0, lit_590@l(r3)  /* 0x80649C80@l */
/* 80590F44  FC 20 08 1E */	fctiwz f1, f1
/* 80590F48  D8 21 00 08 */	stfd f1, 8(r1)
/* 80590F4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80590F50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80590F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590F58  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80590F5C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80590F60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80590F64  40 82 00 0C */	bne lbl_80590F70
/* 80590F68  38 00 01 00 */	li r0, 0x100
/* 80590F6C  B0 1E 08 BA */	sth r0, 0x8ba(r30)
lbl_80590F70:
/* 80590F70  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 80590F74  2C 00 00 04 */	cmpwi r0, 4
/* 80590F78  40 82 00 10 */	bne lbl_80590F88
/* 80590F7C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80590F80  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80590F84  90 1E 09 64 */	stw r0, 0x964(r30)
lbl_80590F88:
/* 80590F88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80590F8C  7F C3 F3 78 */	mr r3, r30
/* 80590F90  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80590F94  7F E4 FB 78 */	mr r4, r31
/* 80590F98  3C C5 00 02 */	addis r6, r5, 2
/* 80590F9C  38 A0 00 09 */	li r5, 9
/* 80590FA0  80 E6 60 4C */	lwz r7, 0x604c(r6)
/* 80590FA4  38 C0 00 00 */	li r6, 0
/* 80590FA8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80590FAC  7D 89 03 A6 */	mtctr r12
/* 80590FB0  4E 80 04 21 */	bctrl 
/* 80590FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80590FB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80590FBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80590FC0  7C 08 03 A6 */	mtlr r0
/* 80590FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80590FC8  4E 80 00 20 */	blr 
