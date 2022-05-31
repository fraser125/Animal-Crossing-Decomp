lbl_80417C50:
/* 80417C50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80417C54  7C 08 02 A6 */	mflr r0
/* 80417C58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80417C5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80417C60  4B C8 32 71 */	bl func_8009AED0
/* 80417C64  7C DF 33 78 */	mr r31, r6
/* 80417C68  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80417C6C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80417C70  3C C0 80 68 */	lis r6, data_80681998@ha /* 0x80681998@ha */
/* 80417C74  7F E0 07 34 */	extsh r0, r31
/* 80417C78  7C 7D 1B 78 */	mr r29, r3
/* 80417C7C  3C 64 00 02 */	addis r3, r4, 2
/* 80417C80  7C BE 2B 78 */	mr r30, r5
/* 80417C84  2C 00 00 03 */	cmpwi r0, 3
/* 80417C88  80 A3 61 10 */	lwz r5, 0x6110(r3)
/* 80417C8C  38 66 19 98 */	addi r3, r6, data_80681998@l /* 0x80681998@l */
/* 80417C90  41 82 00 0C */	beq lbl_80417C9C
/* 80417C94  2C 00 00 0C */	cmpwi r0, 0xc
/* 80417C98  40 82 00 14 */	bne lbl_80417CAC
lbl_80417C9C:
/* 80417C9C  88 1D 03 C4 */	lbz r0, 0x3c4(r29)
/* 80417CA0  3B FF FF FF */	addi r31, r31, -1
/* 80417CA4  60 00 00 04 */	ori r0, r0, 4
/* 80417CA8  98 1D 03 C4 */	stb r0, 0x3c4(r29)
lbl_80417CAC:
/* 80417CAC  7F E0 07 34 */	extsh r0, r31
/* 80417CB0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80417CB4  41 80 00 18 */	blt lbl_80417CCC
/* 80417CB8  88 1D 03 C4 */	lbz r0, 0x3c4(r29)
/* 80417CBC  3B FF FF F2 */	addi r31, r31, -14
/* 80417CC0  60 00 00 20 */	ori r0, r0, 0x20
/* 80417CC4  98 1D 03 C4 */	stb r0, 0x3c4(r29)
/* 80417CC8  48 00 00 38 */	b lbl_80417D00
lbl_80417CCC:
/* 80417CCC  2C 00 00 08 */	cmpwi r0, 8
/* 80417CD0  41 80 00 18 */	blt lbl_80417CE8
/* 80417CD4  88 1D 03 C4 */	lbz r0, 0x3c4(r29)
/* 80417CD8  3B FF FF F7 */	addi r31, r31, -9
/* 80417CDC  60 00 00 10 */	ori r0, r0, 0x10
/* 80417CE0  98 1D 03 C4 */	stb r0, 0x3c4(r29)
/* 80417CE4  48 00 00 1C */	b lbl_80417D00
lbl_80417CE8:
/* 80417CE8  2C 00 00 04 */	cmpwi r0, 4
/* 80417CEC  41 80 00 14 */	blt lbl_80417D00
/* 80417CF0  88 1D 03 C4 */	lbz r0, 0x3c4(r29)
/* 80417CF4  3B FF FF FB */	addi r31, r31, -5
/* 80417CF8  60 00 00 08 */	ori r0, r0, 8
/* 80417CFC  98 1D 03 C4 */	stb r0, 0x3c4(r29)
lbl_80417D00:
/* 80417D00  88 9D 03 C4 */	lbz r4, 0x3c4(r29)
/* 80417D04  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80417D08  41 82 00 5C */	beq lbl_80417D64
/* 80417D0C  28 05 00 03 */	cmplwi r5, 3
/* 80417D10  40 82 00 2C */	bne lbl_80417D3C
/* 80417D14  7F E4 07 34 */	extsh r4, r31
/* 80417D18  7F C0 07 34 */	extsh r0, r30
/* 80417D1C  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417D20  38 83 02 D0 */	addi r4, r3, 0x2d0
/* 80417D24  54 00 10 3A */	slwi r0, r0, 2
/* 80417D28  38 63 03 0C */	addi r3, r3, 0x30c
/* 80417D2C  7C 05 02 14 */	add r0, r5, r0
/* 80417D30  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417D34  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417D38  48 00 01 20 */	b lbl_80417E58
lbl_80417D3C:
/* 80417D3C  7F E4 07 34 */	extsh r4, r31
/* 80417D40  7F C0 07 34 */	extsh r0, r30
/* 80417D44  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417D48  38 83 02 58 */	addi r4, r3, 0x258
/* 80417D4C  54 00 10 3A */	slwi r0, r0, 2
/* 80417D50  38 63 02 94 */	addi r3, r3, 0x294
/* 80417D54  7C 05 02 14 */	add r0, r5, r0
/* 80417D58  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417D5C  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417D60  48 00 00 F8 */	b lbl_80417E58
lbl_80417D64:
/* 80417D64  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80417D68  41 82 00 5C */	beq lbl_80417DC4
/* 80417D6C  28 05 00 03 */	cmplwi r5, 3
/* 80417D70  40 82 00 2C */	bne lbl_80417D9C
/* 80417D74  7F E4 07 34 */	extsh r4, r31
/* 80417D78  7F C0 07 34 */	extsh r0, r30
/* 80417D7C  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417D80  38 83 01 E0 */	addi r4, r3, 0x1e0
/* 80417D84  54 00 10 3A */	slwi r0, r0, 2
/* 80417D88  38 63 02 1C */	addi r3, r3, 0x21c
/* 80417D8C  7C 05 02 14 */	add r0, r5, r0
/* 80417D90  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417D94  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417D98  48 00 00 C0 */	b lbl_80417E58
lbl_80417D9C:
/* 80417D9C  7F E4 07 34 */	extsh r4, r31
/* 80417DA0  7F C0 07 34 */	extsh r0, r30
/* 80417DA4  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417DA8  38 83 01 68 */	addi r4, r3, 0x168
/* 80417DAC  54 00 10 3A */	slwi r0, r0, 2
/* 80417DB0  38 63 01 A4 */	addi r3, r3, 0x1a4
/* 80417DB4  7C 05 02 14 */	add r0, r5, r0
/* 80417DB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417DBC  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417DC0  48 00 00 98 */	b lbl_80417E58
lbl_80417DC4:
/* 80417DC4  28 05 00 03 */	cmplwi r5, 3
/* 80417DC8  40 82 00 2C */	bne lbl_80417DF4
/* 80417DCC  7F E4 07 34 */	extsh r4, r31
/* 80417DD0  7F C0 07 34 */	extsh r0, r30
/* 80417DD4  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417DD8  38 83 00 F0 */	addi r4, r3, 0xf0
/* 80417DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80417DE0  38 63 01 2C */	addi r3, r3, 0x12c
/* 80417DE4  7C 05 02 14 */	add r0, r5, r0
/* 80417DE8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417DEC  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417DF0  48 00 00 68 */	b lbl_80417E58
lbl_80417DF4:
/* 80417DF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80417DF8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80417DFC  3C 84 00 02 */	addis r4, r4, 2
/* 80417E00  80 04 61 14 */	lwz r0, 0x6114(r4)
/* 80417E04  28 00 00 04 */	cmplwi r0, 4
/* 80417E08  40 82 00 2C */	bne lbl_80417E34
/* 80417E0C  7F E4 07 34 */	extsh r4, r31
/* 80417E10  7F C0 07 34 */	extsh r0, r30
/* 80417E14  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417E18  38 83 00 00 */	addi r4, r3, 0
/* 80417E1C  54 00 10 3A */	slwi r0, r0, 2
/* 80417E20  38 63 00 3C */	addi r3, r3, 0x3c
/* 80417E24  7C 05 02 14 */	add r0, r5, r0
/* 80417E28  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417E2C  7F 83 00 2E */	lwzx r28, r3, r0
/* 80417E30  48 00 00 28 */	b lbl_80417E58
lbl_80417E34:
/* 80417E34  7F E4 07 34 */	extsh r4, r31
/* 80417E38  7F C0 07 34 */	extsh r0, r30
/* 80417E3C  1C A4 00 14 */	mulli r5, r4, 0x14
/* 80417E40  38 83 00 78 */	addi r4, r3, 0x78
/* 80417E44  54 00 10 3A */	slwi r0, r0, 2
/* 80417E48  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80417E4C  7C 05 02 14 */	add r0, r5, r0
/* 80417E50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80417E54  7F 83 00 2E */	lwzx r28, r3, r0
lbl_80417E58:
/* 80417E58  7F A3 EB 78 */	mr r3, r29
/* 80417E5C  7F 85 E3 78 */	mr r5, r28
/* 80417E60  38 DD 03 88 */	addi r6, r29, 0x388
/* 80417E64  38 FD 03 A0 */	addi r7, r29, 0x3a0
/* 80417E68  4B F5 8C 2D */	bl cKF_SkeletonInfo_R_ct
/* 80417E6C  7F A3 EB 78 */	mr r3, r29
/* 80417E70  7F 84 E3 78 */	mr r4, r28
/* 80417E74  38 A0 00 00 */	li r5, 0
/* 80417E78  4B F5 8C 7D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80417E7C  7F A3 EB 78 */	mr r3, r29
/* 80417E80  4B F5 91 95 */	bl cKF_SkeletonInfo_R_play
/* 80417E84  3C 60 80 64 */	lis r3, lit_754@ha /* 0x80643CD0@ha */
/* 80417E88  7F C0 07 34 */	extsh r0, r30
/* 80417E8C  C0 03 3C D0 */	lfs f0, lit_754@l(r3)  /* 0x80643CD0@l */
/* 80417E90  2C 00 00 03 */	cmpwi r0, 3
/* 80417E94  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80417E98  88 7D 03 C4 */	lbz r3, 0x3c4(r29)
/* 80417E9C  60 63 00 01 */	ori r3, r3, 1
/* 80417EA0  98 7D 03 C4 */	stb r3, 0x3c4(r29)
/* 80417EA4  B3 DD 03 BC */	sth r30, 0x3bc(r29)
/* 80417EA8  B3 FD 03 BE */	sth r31, 0x3be(r29)
/* 80417EAC  40 82 00 24 */	bne lbl_80417ED0
/* 80417EB0  38 00 00 12 */	li r0, 0x12
/* 80417EB4  3C 60 80 64 */	lis r3, lit_755@ha /* 0x80643CD4@ha */
/* 80417EB8  B0 1D 03 BA */	sth r0, 0x3ba(r29)
/* 80417EBC  C0 03 3C D4 */	lfs f0, lit_755@l(r3)  /* 0x80643CD4@l */
/* 80417EC0  C0 3D 03 74 */	lfs f1, 0x374(r29)
/* 80417EC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80417EC8  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 80417ECC  48 00 00 C4 */	b lbl_80417F90
lbl_80417ED0:
/* 80417ED0  2C 00 00 04 */	cmpwi r0, 4
/* 80417ED4  40 82 00 24 */	bne lbl_80417EF8
/* 80417ED8  38 00 00 52 */	li r0, 0x52
/* 80417EDC  3C 60 80 64 */	lis r3, lit_755@ha /* 0x80643CD4@ha */
/* 80417EE0  B0 1D 03 BA */	sth r0, 0x3ba(r29)
/* 80417EE4  C0 03 3C D4 */	lfs f0, lit_755@l(r3)  /* 0x80643CD4@l */
/* 80417EE8  C0 3D 03 74 */	lfs f1, 0x374(r29)
/* 80417EEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80417EF0  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 80417EF4  48 00 00 9C */	b lbl_80417F90
lbl_80417EF8:
/* 80417EF8  7F C0 07 35 */	extsh. r0, r30
/* 80417EFC  40 82 00 24 */	bne lbl_80417F20
/* 80417F00  38 00 00 16 */	li r0, 0x16
/* 80417F04  3C 60 80 64 */	lis r3, lit_755@ha /* 0x80643CD4@ha */
/* 80417F08  B0 1D 03 BA */	sth r0, 0x3ba(r29)
/* 80417F0C  C0 03 3C D4 */	lfs f0, lit_755@l(r3)  /* 0x80643CD4@l */
/* 80417F10  C0 3D 03 74 */	lfs f1, 0x374(r29)
/* 80417F14  EC 01 00 2A */	fadds f0, f1, f0
/* 80417F18  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 80417F1C  48 00 00 74 */	b lbl_80417F90
lbl_80417F20:
/* 80417F20  3C 60 80 64 */	lis r3, lit_756@ha /* 0x80643CD8@ha */
/* 80417F24  7F E0 07 34 */	extsh r0, r31
/* 80417F28  C0 3D 03 74 */	lfs f1, 0x374(r29)
/* 80417F2C  2C 00 00 01 */	cmpwi r0, 1
/* 80417F30  C0 03 3C D8 */	lfs f0, lit_756@l(r3)  /* 0x80643CD8@l */
/* 80417F34  EC 01 00 2A */	fadds f0, f1, f0
/* 80417F38  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 80417F3C  41 82 00 30 */	beq lbl_80417F6C
/* 80417F40  40 80 00 10 */	bge lbl_80417F50
/* 80417F44  2C 00 00 00 */	cmpwi r0, 0
/* 80417F48  40 80 00 14 */	bge lbl_80417F5C
/* 80417F4C  48 00 00 3C */	b lbl_80417F88
lbl_80417F50:
/* 80417F50  2C 00 00 03 */	cmpwi r0, 3
/* 80417F54  40 80 00 34 */	bge lbl_80417F88
/* 80417F58  48 00 00 24 */	b lbl_80417F7C
lbl_80417F5C:
/* 80417F5C  38 9D 03 70 */	addi r4, r29, 0x370
/* 80417F60  38 60 00 63 */	li r3, 0x63
/* 80417F64  48 21 60 45 */	bl sAdo_OngenTrgStart
/* 80417F68  48 00 00 20 */	b lbl_80417F88
lbl_80417F6C:
/* 80417F6C  38 9D 03 70 */	addi r4, r29, 0x370
/* 80417F70  38 60 00 65 */	li r3, 0x65
/* 80417F74  48 21 60 35 */	bl sAdo_OngenTrgStart
/* 80417F78  48 00 00 10 */	b lbl_80417F88
lbl_80417F7C:
/* 80417F7C  38 9D 03 70 */	addi r4, r29, 0x370
/* 80417F80  38 60 00 67 */	li r3, 0x67
/* 80417F84  48 21 60 25 */	bl sAdo_OngenTrgStart
lbl_80417F88:
/* 80417F88  38 00 00 62 */	li r0, 0x62
/* 80417F8C  B0 1D 03 BA */	sth r0, 0x3ba(r29)
lbl_80417F90:
/* 80417F90  88 7D 03 C4 */	lbz r3, 0x3c4(r29)
/* 80417F94  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80417F98  41 82 00 98 */	beq lbl_80418030
/* 80417F9C  A8 1D 03 BE */	lha r0, 0x3be(r29)
/* 80417FA0  2C 00 00 02 */	cmpwi r0, 2
/* 80417FA4  40 82 00 8C */	bne lbl_80418030
/* 80417FA8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80417FAC  3C 00 43 30 */	lis r0, 0x4330
/* 80417FB0  38 C3 61 38 */	addi r6, r3, debug_mode@l /* 0x81166138@l */
/* 80417FB4  3C E0 80 64 */	lis r7, lit_757@ha /* 0x80643CDC@ha */
/* 80417FB8  80 86 00 00 */	lwz r4, 0(r6)
/* 80417FBC  3C 60 80 64 */	lis r3, lit_760@ha /* 0x80643CE4@ha */
/* 80417FC0  38 A3 3C E4 */	addi r5, r3, lit_760@l /* 0x80643CE4@l */
/* 80417FC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80417FC8  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 80417FCC  3C 60 80 64 */	lis r3, lit_758@ha /* 0x80643CE0@ha */
/* 80417FD0  C8 65 00 00 */	lfd f3, 0(r5)
/* 80417FD4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80417FD8  C0 87 3C DC */	lfs f4, lit_757@l(r7)  /* 0x80643CDC@l */
/* 80417FDC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80417FE0  C0 5D 03 74 */	lfs f2, 0x374(r29)
/* 80417FE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80417FE8  C0 23 3C E0 */	lfs f1, lit_758@l(r3)  /* 0x80643CE0@l */
/* 80417FEC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80417FF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80417FF4  EC 04 00 32 */	fmuls f0, f4, f0
/* 80417FF8  EC 02 00 2A */	fadds f0, f2, f0
/* 80417FFC  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 80418000  80 66 00 00 */	lwz r3, 0(r6)
/* 80418004  C0 5D 03 78 */	lfs f2, 0x378(r29)
/* 80418008  A8 03 1B 7A */	lha r0, 0x1b7a(r3)
/* 8041800C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80418010  90 01 00 24 */	stw r0, 0x24(r1)
/* 80418014  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80418018  EC 00 18 28 */	fsubs f0, f0, f3
/* 8041801C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80418020  EC 01 00 2A */	fadds f0, f1, f0
/* 80418024  EC 02 00 2A */	fadds f0, f2, f0
/* 80418028  D0 1D 03 78 */	stfs f0, 0x378(r29)
/* 8041802C  48 00 00 2C */	b lbl_80418058
lbl_80418030:
/* 80418030  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80418034  41 82 00 24 */	beq lbl_80418058
/* 80418038  3C 60 80 64 */	lis r3, lit_754@ha /* 0x80643CD0@ha */
/* 8041803C  C0 1D 03 74 */	lfs f0, 0x374(r29)
/* 80418040  C0 23 3C D0 */	lfs f1, lit_754@l(r3)  /* 0x80643CD0@l */
/* 80418044  EC 00 08 2A */	fadds f0, f0, f1
/* 80418048  D0 1D 03 74 */	stfs f0, 0x374(r29)
/* 8041804C  C0 1D 03 78 */	lfs f0, 0x378(r29)
/* 80418050  EC 00 08 2A */	fadds f0, f0, f1
/* 80418054  D0 1D 03 78 */	stfs f0, 0x378(r29)
lbl_80418058:
/* 80418058  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041805C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80418060  3C 63 00 02 */	addis r3, r3, 2
/* 80418064  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80418068  28 00 00 10 */	cmplwi r0, 0x10
/* 8041806C  41 82 00 0C */	beq lbl_80418078
/* 80418070  28 00 00 0F */	cmplwi r0, 0xf
/* 80418074  40 82 00 30 */	bne lbl_804180A4
lbl_80418078:
/* 80418078  80 DD 03 70 */	lwz r6, 0x370(r29)
/* 8041807C  38 7D 03 C8 */	addi r3, r29, 0x3c8
/* 80418080  80 1D 03 74 */	lwz r0, 0x374(r29)
/* 80418084  38 9D 03 CC */	addi r4, r29, 0x3cc
/* 80418088  38 A1 00 08 */	addi r5, r1, 8
/* 8041808C  90 C1 00 08 */	stw r6, 8(r1)
/* 80418090  90 01 00 0C */	stw r0, 0xc(r1)
/* 80418094  80 1D 03 78 */	lwz r0, 0x378(r29)
/* 80418098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041809C  4B F8 D5 71 */	bl mFI_Wpos2UtNum_inBlock
/* 804180A0  48 00 00 10 */	b lbl_804180B0
lbl_804180A4:
/* 804180A4  38 00 00 00 */	li r0, 0
/* 804180A8  90 1D 03 C8 */	stw r0, 0x3c8(r29)
/* 804180AC  90 1D 03 CC */	stw r0, 0x3cc(r29)
lbl_804180B0:
/* 804180B0  38 00 00 00 */	li r0, 0
/* 804180B4  39 61 00 40 */	addi r11, r1, 0x40
/* 804180B8  B0 1D 03 B8 */	sth r0, 0x3b8(r29)
/* 804180BC  4B C8 2E 61 */	bl func_8009AF1C
/* 804180C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804180C4  7C 08 03 A6 */	mtlr r0
/* 804180C8  38 21 00 40 */	addi r1, r1, 0x40
/* 804180CC  4E 80 00 20 */	blr 
