lbl_804A4E48:
/* 804A4E48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A4E4C  7C 08 02 A6 */	mflr r0
/* 804A4E50  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A4E54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A4E58  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804A4E5C  7C 7E 1B 78 */	mr r30, r3
/* 804A4E60  A8 03 01 F8 */	lha r0, 0x1f8(r3)
/* 804A4E64  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804A4E68  40 82 01 7C */	bne lbl_804A4FE4
/* 804A4E6C  88 BE 01 7C */	lbz r5, 0x17c(r30)
/* 804A4E70  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 804A4E74  41 82 01 68 */	beq lbl_804A4FDC
/* 804A4E78  83 FE 01 78 */	lwz r31, 0x178(r30)
/* 804A4E7C  54 A0 07 FA */	rlwinm r0, r5, 0, 0x1f, 0x1d
/* 804A4E80  28 1F 00 00 */	cmplwi r31, 0
/* 804A4E84  98 1E 01 7C */	stb r0, 0x17c(r30)
/* 804A4E88  41 82 01 48 */	beq lbl_804A4FD0
/* 804A4E8C  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 804A4E90  7C 00 F8 40 */	cmplw r0, r31
/* 804A4E94  41 82 00 74 */	beq lbl_804A4F08
/* 804A4E98  7F E5 FB 78 */	mr r5, r31
/* 804A4E9C  4B FF FD 31 */	bl aSMAN_snowman_hit_check
/* 804A4EA0  2C 03 00 00 */	cmpwi r3, 0
/* 804A4EA4  40 82 00 64 */	bne lbl_804A4F08
/* 804A4EA8  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A4EAC  3C 80 80 64 */	lis r4, lit_992@ha /* 0x80645D2C@ha */
/* 804A4EB0  C0 23 5C B4 */	lfs f1, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A4EB4  38 61 00 10 */	addi r3, r1, 0x10
/* 804A4EB8  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A4EBC  C0 44 5D 2C */	lfs f2, lit_992@l(r4)  /* 0x80645D2C@l */
/* 804A4EC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A4EC4  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 804A4EC8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 804A4ECC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A4ED0  EC 22 00 32 */	fmuls f1, f2, f0
/* 804A4ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A4ED8  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 804A4EDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A4EE0  4B F1 60 CD */	bl xyz_t_mult_v
/* 804A4EE4  3C 60 80 64 */	lis r3, lit_680@ha /* 0x80645CD8@ha */
/* 804A4EE8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804A4EEC  C0 03 5C D8 */	lfs f0, lit_680@l(r3)  /* 0x80645CD8@l */
/* 804A4EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4EF4  40 81 00 78 */	ble lbl_804A4F6C
/* 804A4EF8  38 9E 00 28 */	addi r4, r30, 0x28
/* 804A4EFC  38 60 01 02 */	li r3, 0x102
/* 804A4F00  48 18 95 91 */	bl sAdo_OngenTrgStartSpeed
/* 804A4F04  48 00 00 68 */	b lbl_804A4F6C
lbl_804A4F08:
/* 804A4F08  3C 60 80 64 */	lis r3, lit_994@ha /* 0x80645D34@ha */
/* 804A4F0C  3C A0 80 64 */	lis r5, lit_993@ha /* 0x80645D30@ha */
/* 804A4F10  38 83 5D 34 */	addi r4, r3, lit_994@l /* 0x80645D34@l */
/* 804A4F14  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A4F18  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A4F1C  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645CB0@ha */
/* 804A4F20  C0 45 5D 30 */	lfs f2, lit_993@l(r5)  /* 0x80645D30@l */
/* 804A4F24  EC 21 00 32 */	fmuls f1, f1, f0
/* 804A4F28  C0 03 5C B0 */	lfs f0, lit_639@l(r3)  /* 0x80645CB0@l */
/* 804A4F2C  EC 42 08 28 */	fsubs f2, f2, f1
/* 804A4F30  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804A4F34  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A4F38  B0 01 00 08 */	sth r0, 8(r1)
/* 804A4F3C  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 804A4F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4F44  40 81 00 0C */	ble lbl_804A4F50
/* 804A4F48  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A4F4C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_804A4F50:
/* 804A4F50  38 61 00 10 */	addi r3, r1, 0x10
/* 804A4F54  38 81 00 0C */	addi r4, r1, 0xc
/* 804A4F58  38 A1 00 08 */	addi r5, r1, 8
/* 804A4F5C  4B F5 15 E9 */	bl mRlib_spdF_Angle_to_spdXZ
/* 804A4F60  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4F64  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4F68  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_804A4F6C:
/* 804A4F6C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804A4F70  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4F74  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804A4F78  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804A4F7C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A4F80  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4F84  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A4F88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4F8C  40 81 00 10 */	ble lbl_804A4F9C
/* 804A4F90  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804A4F94  EC 00 10 2A */	fadds f0, f0, f2
/* 804A4F98  D0 1E 00 68 */	stfs f0, 0x68(r30)
lbl_804A4F9C:
/* 804A4F9C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 804A4FA0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4FA4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804A4FA8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804A4FAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A4FB0  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4FB4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A4FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4FBC  40 81 00 28 */	ble lbl_804A4FE4
/* 804A4FC0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 804A4FC4  EC 00 10 2A */	fadds f0, f0, f2
/* 804A4FC8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 804A4FCC  48 00 00 18 */	b lbl_804A4FE4
lbl_804A4FD0:
/* 804A4FD0  38 00 00 00 */	li r0, 0
/* 804A4FD4  90 1E 01 94 */	stw r0, 0x194(r30)
/* 804A4FD8  48 00 00 0C */	b lbl_804A4FE4
lbl_804A4FDC:
/* 804A4FDC  38 00 00 00 */	li r0, 0
/* 804A4FE0  90 1E 01 94 */	stw r0, 0x194(r30)
lbl_804A4FE4:
/* 804A4FE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A4FE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A4FEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804A4FF0  7C 08 03 A6 */	mtlr r0
/* 804A4FF4  38 21 00 30 */	addi r1, r1, 0x30
/* 804A4FF8  4E 80 00 20 */	blr 
