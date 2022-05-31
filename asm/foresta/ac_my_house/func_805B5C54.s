lbl_805B5C54:
/* 805B5C54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B5C58  7C 08 02 A6 */	mflr r0
/* 805B5C5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B5C60  39 61 00 40 */	addi r11, r1, 0x40
/* 805B5C64  4B AE 52 6D */	bl func_8009AED0
/* 805B5C68  7C BC 2B 78 */	mr r28, r5
/* 805B5C6C  83 E3 00 00 */	lwz r31, 0(r3)
/* 805B5C70  2C 1C 00 08 */	cmpwi r28, 8
/* 805B5C74  7D 1D 43 78 */	mr r29, r8
/* 805B5C78  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805B5C7C  40 82 00 FC */	bne lbl_805B5D78
/* 805B5C80  A8 1D 00 34 */	lha r0, 0x34(r29)
/* 805B5C84  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 805B5C88  40 82 00 1C */	bne lbl_805B5CA4
/* 805B5C8C  38 00 00 78 */	li r0, 0x78
/* 805B5C90  38 80 00 FF */	li r4, 0xff
/* 805B5C94  38 A0 00 FF */	li r5, 0xff
/* 805B5C98  38 C0 00 96 */	li r6, 0x96
/* 805B5C9C  38 E0 00 FF */	li r7, 0xff
/* 805B5CA0  48 00 00 B0 */	b lbl_805B5D50
lbl_805B5CA4:
/* 805B5CA4  2C 00 00 00 */	cmpwi r0, 0
/* 805B5CA8  40 82 00 1C */	bne lbl_805B5CC4
/* 805B5CAC  38 00 00 00 */	li r0, 0
/* 805B5CB0  38 80 00 00 */	li r4, 0
/* 805B5CB4  38 A0 00 00 */	li r5, 0
/* 805B5CB8  38 C0 00 00 */	li r6, 0
/* 805B5CBC  38 E0 00 FF */	li r7, 0xff
/* 805B5CC0  48 00 00 90 */	b lbl_805B5D50
lbl_805B5CC4:
/* 805B5CC4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805B5CC8  3C 00 43 30 */	lis r0, 0x4330
/* 805B5CCC  3C 80 80 65 */	lis r4, lit_668@ha /* 0x8064A984@ha */
/* 805B5CD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 805B5CD4  38 64 A9 84 */	addi r3, r4, lit_668@l /* 0x8064A984@l */
/* 805B5CD8  38 E0 00 FF */	li r7, 0xff
/* 805B5CDC  90 01 00 08 */	stw r0, 8(r1)
/* 805B5CE0  3C 80 80 65 */	lis r4, lit_809@ha /* 0x8064A99C@ha */
/* 805B5CE4  C8 23 00 00 */	lfd f1, 0(r3)
/* 805B5CE8  38 A4 A9 9C */	addi r5, r4, lit_809@l /* 0x8064A99C@l */
/* 805B5CEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B5CF0  3C 60 80 65 */	lis r3, lit_811@ha /* 0x8064A9A4@ha */
/* 805B5CF4  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B5CF8  38 83 A9 A4 */	addi r4, r3, lit_811@l /* 0x8064A9A4@l */
/* 805B5CFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B5D00  3C A0 80 65 */	lis r5, lit_810@ha /* 0x8064A9A0@ha */
/* 805B5D04  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B5D08  3C 60 80 65 */	lis r3, lit_812@ha /* 0x8064A9A8@ha */
/* 805B5D0C  C0 45 A9 A0 */	lfs f2, lit_810@l(r5)  /* 0x8064A9A0@l */
/* 805B5D10  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B5D14  C0 03 A9 A8 */	lfs f0, lit_812@l(r3)  /* 0x8064A9A8@l */
/* 805B5D18  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805B5D1C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 805B5D20  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805B5D24  FC 20 08 1E */	fctiwz f1, f1
/* 805B5D28  FC 40 10 1E */	fctiwz f2, f2
/* 805B5D2C  FC 00 00 1E */	fctiwz f0, f0
/* 805B5D30  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805B5D34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B5D38  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B5D3C  7C 04 03 78 */	mr r4, r0
/* 805B5D40  7C 05 03 78 */	mr r5, r0
/* 805B5D44  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 805B5D48  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 805B5D4C  80 01 00 14 */	lwz r0, 0x14(r1)
lbl_805B5D50:
/* 805B5D50  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 805B5D54  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 805B5D58  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805B5D5C  90 7E 00 00 */	stw r3, 0(r30)
/* 805B5D60  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 805B5D64  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 805B5D68  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 805B5D6C  90 1E 00 04 */	stw r0, 4(r30)
/* 805B5D70  3B DE 00 08 */	addi r30, r30, 8
/* 805B5D74  48 00 01 1C */	b lbl_805B5E90
lbl_805B5D78:
/* 805B5D78  2C 1C 00 0C */	cmpwi r28, 0xc
/* 805B5D7C  40 82 00 10 */	bne lbl_805B5D8C
/* 805B5D80  38 00 00 00 */	li r0, 0
/* 805B5D84  90 06 00 00 */	stw r0, 0(r6)
/* 805B5D88  48 00 01 08 */	b lbl_805B5E90
lbl_805B5D8C:
/* 805B5D8C  2C 1C 00 03 */	cmpwi r28, 3
/* 805B5D90  41 82 00 0C */	beq lbl_805B5D9C
/* 805B5D94  2C 1C 00 05 */	cmpwi r28, 5
/* 805B5D98  40 82 00 A0 */	bne lbl_805B5E38
lbl_805B5D9C:
/* 805B5D9C  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 805B5DA0  FC 00 00 1E */	fctiwz f0, f0
/* 805B5DA4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B5DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5DAC  2C 00 00 00 */	cmpwi r0, 0
/* 805B5DB0  41 82 00 7C */	beq lbl_805B5E2C
/* 805B5DB4  2C 1C 00 03 */	cmpwi r28, 3
/* 805B5DB8  40 82 00 0C */	bne lbl_805B5DC4
/* 805B5DBC  4B E0 40 C1 */	bl mEnv_GetWindAngleS
/* 805B5DC0  48 00 00 08 */	b lbl_805B5DC8
lbl_805B5DC4:
/* 805B5DC4  A8 7D 00 24 */	lha r3, 0x24(r29)
lbl_805B5DC8:
/* 805B5DC8  2C 1C 00 03 */	cmpwi r28, 3
/* 805B5DCC  7C 63 07 34 */	extsh r3, r3
/* 805B5DD0  40 82 00 20 */	bne lbl_805B5DF0
/* 805B5DD4  80 1D 02 B4 */	lwz r0, 0x2b4(r29)
/* 805B5DD8  3C 80 80 6C */	lis r4, angle_table_743@ha /* 0x806C5FD8@ha */
/* 805B5DDC  38 84 5F D8 */	addi r4, r4, angle_table_743@l /* 0x806C5FD8@l */
/* 805B5DE0  54 00 0F BC */	rlwinm r0, r0, 1, 0x1e, 0x1e
/* 805B5DE4  7C 04 02 AE */	lhax r0, r4, r0
/* 805B5DE8  7C 03 02 14 */	add r0, r3, r0
/* 805B5DEC  7C 03 07 34 */	extsh r3, r0
lbl_805B5DF0:
/* 805B5DF0  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805B5DF4  2C 00 00 00 */	cmpwi r0, 0
/* 805B5DF8  40 82 00 10 */	bne lbl_805B5E08
/* 805B5DFC  38 80 00 01 */	li r4, 1
/* 805B5E00  4B E5 68 5D */	bl Matrix_RotateY
/* 805B5E04  48 00 00 0C */	b lbl_805B5E10
lbl_805B5E08:
/* 805B5E08  38 80 00 01 */	li r4, 1
/* 805B5E0C  4B E5 66 AD */	bl Matrix_RotateX
lbl_805B5E10:
/* 805B5E10  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805B5E14  2C 00 00 01 */	cmpwi r0, 1
/* 805B5E18  40 82 00 78 */	bne lbl_805B5E90
/* 805B5E1C  38 60 C0 00 */	li r3, -16384
/* 805B5E20  38 80 00 01 */	li r4, 1
/* 805B5E24  4B E5 69 CD */	bl Matrix_RotateZ
/* 805B5E28  48 00 00 68 */	b lbl_805B5E90
lbl_805B5E2C:
/* 805B5E2C  38 00 00 00 */	li r0, 0
/* 805B5E30  90 06 00 00 */	stw r0, 0(r6)
/* 805B5E34  48 00 00 5C */	b lbl_805B5E90
lbl_805B5E38:
/* 805B5E38  2C 1C 00 01 */	cmpwi r28, 1
/* 805B5E3C  40 82 00 28 */	bne lbl_805B5E64
/* 805B5E40  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 805B5E44  FC 00 00 1E */	fctiwz f0, f0
/* 805B5E48  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B5E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5E50  2C 00 00 00 */	cmpwi r0, 0
/* 805B5E54  40 82 00 3C */	bne lbl_805B5E90
/* 805B5E58  38 00 00 00 */	li r0, 0
/* 805B5E5C  90 06 00 00 */	stw r0, 0(r6)
/* 805B5E60  48 00 00 30 */	b lbl_805B5E90
lbl_805B5E64:
/* 805B5E64  2C 1C 00 06 */	cmpwi r28, 6
/* 805B5E68  40 82 00 28 */	bne lbl_805B5E90
/* 805B5E6C  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805B5E70  3C 60 81 20 */	lis r3, aMHS_door_closed_flag@ha /* 0x811FA1E8@ha */
/* 805B5E74  38 63 A1 E8 */	addi r3, r3, aMHS_door_closed_flag@l /* 0x811FA1E8@l */
/* 805B5E78  54 00 10 3A */	slwi r0, r0, 2
/* 805B5E7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B5E80  2C 00 00 00 */	cmpwi r0, 0
/* 805B5E84  41 82 00 0C */	beq lbl_805B5E90
/* 805B5E88  38 00 C0 13 */	li r0, -16365
/* 805B5E8C  B0 09 00 02 */	sth r0, 2(r9)
lbl_805B5E90:
/* 805B5E90  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805B5E94  38 60 00 01 */	li r3, 1
/* 805B5E98  39 61 00 40 */	addi r11, r1, 0x40
/* 805B5E9C  4B AE 50 81 */	bl func_8009AF1C
/* 805B5EA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B5EA4  7C 08 03 A6 */	mtlr r0
/* 805B5EA8  38 21 00 40 */	addi r1, r1, 0x40
/* 805B5EAC  4E 80 00 20 */	blr 
