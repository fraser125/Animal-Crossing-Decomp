lbl_80412EB8:
/* 80412EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80412EBC  7C 08 02 A6 */	mflr r0
/* 80412EC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80412EC4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80412EC8  7C 9F 23 78 */	mr r31, r4
/* 80412ECC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80412ED0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80412ED4  7C 7E 1B 78 */	mr r30, r3
/* 80412ED8  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80412EDC  38 61 00 28 */	addi r3, r1, 0x28
/* 80412EE0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80412EE4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80412EE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80412EEC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80412EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80412EF4  4B F7 CB 61 */	bl mCoBG_GetBgNorm_FromWpos
/* 80412EF8  3C 80 80 64 */	lis r4, lit_549@ha /* 0x806439EC@ha */
/* 80412EFC  7F C3 F3 78 */	mr r3, r30
/* 80412F00  38 A4 39 EC */	addi r5, r4, lit_549@l /* 0x806439EC@l */
/* 80412F04  38 81 00 28 */	addi r4, r1, 0x28
/* 80412F08  C0 25 00 00 */	lfs f1, 0(r5)
/* 80412F0C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80412F10  38 C1 00 08 */	addi r6, r1, 8
/* 80412F14  38 E1 00 0A */	addi r7, r1, 0xa
/* 80412F18  4B FE 3D ED */	bl mRlib_Get_ground_norm_inHole
/* 80412F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80412F20  41 82 01 38 */	beq lbl_80413058
/* 80412F24  3C 60 80 64 */	lis r3, lit_743@ha /* 0x80643A2C@ha */
/* 80412F28  3C 80 80 64 */	lis r4, lit_744@ha /* 0x80643A30@ha */
/* 80412F2C  38 A3 3A 2C */	addi r5, r3, lit_743@l /* 0x80643A2C@l */
/* 80412F30  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80412F34  C0 25 00 00 */	lfs f1, 0(r5)
/* 80412F38  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412F3C  C0 04 3A 30 */	lfs f0, lit_744@l(r4)  /* 0x80643A30@l */
/* 80412F40  EC 42 08 28 */	fsubs f2, f2, f1
/* 80412F44  C0 23 39 AC */	lfs f1, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412F48  EC 02 00 28 */	fsubs f0, f2, f0
/* 80412F4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80412F50  40 80 00 08 */	bge lbl_80412F58
/* 80412F54  FC 20 00 90 */	fmr f1, f0
lbl_80412F58:
/* 80412F58  3C 60 80 64 */	lis r3, lit_745@ha /* 0x80643A34@ha */
/* 80412F5C  3C A0 80 64 */	lis r5, lit_671@ha /* 0x80643A24@ha */
/* 80412F60  C0 03 3A 34 */	lfs f0, lit_745@l(r3)  /* 0x80643A34@l */
/* 80412F64  38 C5 3A 24 */	addi r6, r5, lit_671@l /* 0x80643A24@l */
/* 80412F68  3C 80 80 64 */	lis r4, lit_746@ha /* 0x80643A38@ha */
/* 80412F6C  3C 60 80 64 */	lis r3, lit_744@ha /* 0x80643A30@ha */
/* 80412F70  38 A4 3A 38 */	addi r5, r4, lit_746@l /* 0x80643A38@l */
/* 80412F74  EC 21 00 32 */	fmuls f1, f1, f0
/* 80412F78  38 83 3A 30 */	addi r4, r3, lit_744@l /* 0x80643A30@l */
/* 80412F7C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80412F80  C0 65 00 00 */	lfs f3, 0(r5)
/* 80412F84  38 7E 01 E8 */	addi r3, r30, 0x1e8
/* 80412F88  C0 84 00 00 */	lfs f4, 0(r4)
/* 80412F8C  4B FA 82 25 */	bl add_calc
/* 80412F90  3C 80 80 64 */	lis r4, lit_747@ha /* 0x80643A3C@ha */
/* 80412F94  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80412F98  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80412F9C  C0 44 3A 3C */	lfs f2, lit_747@l(r4)  /* 0x80643A3C@l */
/* 80412FA0  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 80412FA4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80412FA8  D0 3E 00 68 */	stfs f1, 0x68(r30)
/* 80412FAC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80412FB0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80412FB4  D0 3E 00 70 */	stfs f1, 0x70(r30)
/* 80412FB8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80412FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80412FC0  40 80 00 C0 */	bge lbl_80413080
/* 80412FC4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412FC8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80412FCC  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80412FD4  4C 41 13 82 */	cror 2, 1, 2
/* 80412FD8  40 82 00 08 */	bne lbl_80412FE0
/* 80412FDC  48 00 00 08 */	b lbl_80412FE4
lbl_80412FE0:
/* 80412FE0  FC 20 08 50 */	fneg f1, f1
lbl_80412FE4:
/* 80412FE4  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80412FE8  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 80412FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80412FF0  40 80 00 90 */	bge lbl_80413080
/* 80412FF4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412FF8  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80412FFC  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 80413000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80413004  4C 41 13 82 */	cror 2, 1, 2
/* 80413008  40 82 00 08 */	bne lbl_80413010
/* 8041300C  48 00 00 08 */	b lbl_80413014
lbl_80413010:
/* 80413010  FC 20 08 50 */	fneg f1, f1
lbl_80413014:
/* 80413014  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80413018  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 8041301C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80413020  40 80 00 60 */	bge lbl_80413080
/* 80413024  A8 1E 02 08 */	lha r0, 0x208(r30)
/* 80413028  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 8041302C  38 A0 00 14 */	li r5, 0x14
/* 80413030  38 80 00 12 */	li r4, 0x12
/* 80413034  60 00 00 02 */	ori r0, r0, 2
/* 80413038  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 8041303C  B0 1E 02 08 */	sth r0, 0x208(r30)
/* 80413040  38 00 00 FE */	li r0, 0xfe
/* 80413044  B0 BE 01 84 */	sth r5, 0x184(r30)
/* 80413048  B0 9E 01 82 */	sth r4, 0x182(r30)
/* 8041304C  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80413050  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80413054  48 00 02 2C */	b lbl_80413280
lbl_80413058:
/* 80413058  7F C3 F3 78 */	mr r3, r30
/* 8041305C  38 81 00 28 */	addi r4, r1, 0x28
/* 80413060  4B FE 36 9D */	bl mRlib_Get_norm_Clif
/* 80413064  3C 60 80 64 */	lis r3, lit_671@ha /* 0x80643A24@ha */
/* 80413068  3C 80 80 64 */	lis r4, lit_672@ha /* 0x80643A28@ha */
/* 8041306C  38 A3 3A 24 */	addi r5, r3, lit_671@l /* 0x80643A24@l */
/* 80413070  C0 44 3A 28 */	lfs f2, lit_672@l(r4)  /* 0x80643A28@l */
/* 80413074  C0 25 00 00 */	lfs f1, 0(r5)
/* 80413078  38 7E 01 E8 */	addi r3, r30, 0x1e8
/* 8041307C  4B FA 82 5D */	bl add_calc0
lbl_80413080:
/* 80413080  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80413084  3C 60 80 64 */	lis r3, lit_748@ha /* 0x80643A40@ha */
/* 80413088  C0 23 3A 40 */	lfs f1, lit_748@l(r3)  /* 0x80643A40@l */
/* 8041308C  FC 00 02 10 */	fabs f0, f0
/* 80413090  FC 00 00 18 */	frsp f0, f0
/* 80413094  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80413098  40 80 00 18 */	bge lbl_804130B0
/* 8041309C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804130A0  FC 00 02 10 */	fabs f0, f0
/* 804130A4  FC 00 00 18 */	frsp f0, f0
/* 804130A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804130AC  41 80 00 8C */	blt lbl_80413138
lbl_804130B0:
/* 804130B0  38 61 00 28 */	addi r3, r1, 0x28
/* 804130B4  4B FF 58 A9 */	bl func_8040895C
/* 804130B8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 804130BC  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 804130C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804130C4  41 82 00 8C */	beq lbl_80413150
/* 804130C8  3C 60 80 64 */	lis r3, lit_749@ha /* 0x80643A44@ha */
/* 804130CC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804130D0  C0 43 3A 44 */	lfs f2, lit_749@l(r3)  /* 0x80643A44@l */
/* 804130D4  38 7E 00 68 */	addi r3, r30, 0x68
/* 804130D8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 804130DC  38 9E 01 EC */	addi r4, r30, 0x1ec
/* 804130E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804130E4  38 BE 00 36 */	addi r5, r30, 0x36
/* 804130E8  EC 01 00 2A */	fadds f0, f1, f0
/* 804130EC  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804130F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804130F4  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804130F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804130FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80413100  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80413104  4B FE 33 85 */	bl func_803F6488
/* 80413108  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80643A48@ha */
/* 8041310C  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 80413110  C0 03 3A 48 */	lfs f0, lit_750@l(r3)  /* 0x80643A48@l */
/* 80413114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80413118  40 80 00 08 */	bge lbl_80413120
/* 8041311C  48 00 00 08 */	b lbl_80413124
lbl_80413120:
/* 80413120  FC 20 00 90 */	fmr f1, f0
lbl_80413124:
/* 80413124  3C 60 80 64 */	lis r3, lit_751@ha /* 0x80643A4C@ha */
/* 80413128  D0 3E 01 EC */	stfs f1, 0x1ec(r30)
/* 8041312C  C0 03 3A 4C */	lfs f0, lit_751@l(r3)  /* 0x80643A4C@l */
/* 80413130  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 80413134  48 00 00 1C */	b lbl_80413150
lbl_80413138:
/* 80413138  3C 80 80 64 */	lis r4, lit_472@ha /* 0x806439AC@ha */
/* 8041313C  3C 60 80 64 */	lis r3, lit_478@ha /* 0x806439C4@ha */
/* 80413140  C0 24 39 AC */	lfs f1, lit_472@l(r4)  /* 0x806439AC@l */
/* 80413144  C0 03 39 C4 */	lfs f0, lit_478@l(r3)  /* 0x806439C4@l */
/* 80413148  D0 3E 01 EC */	stfs f1, 0x1ec(r30)
/* 8041314C  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
lbl_80413150:
/* 80413150  3C 80 80 64 */	lis r4, lit_476@ha /* 0x806439BC@ha */
/* 80413154  3C 60 80 64 */	lis r3, lit_477@ha /* 0x806439C0@ha */
/* 80413158  C0 24 39 BC */	lfs f1, lit_476@l(r4)  /* 0x806439BC@l */
/* 8041315C  C0 03 39 C0 */	lfs f0, lit_477@l(r3)  /* 0x806439C0@l */
/* 80413160  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 80413164  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80413168  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8041316C  D0 1E 01 F4 */	stfs f0, 0x1f4(r30)
/* 80413170  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 80413174  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80413178  40 82 00 14 */	bne lbl_8041318C
/* 8041317C  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 80413180  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 80413184  28 00 00 0B */	cmplwi r0, 0xb
/* 80413188  40 82 00 38 */	bne lbl_804131C0
lbl_8041318C:
/* 8041318C  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 80413190  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80413194  41 82 00 14 */	beq lbl_804131A8
/* 80413198  7F C3 F3 78 */	mr r3, r30
/* 8041319C  7F E4 FB 78 */	mr r4, r31
/* 804131A0  48 00 03 F1 */	bl aBALL_process_ground_water_init
/* 804131A4  48 00 00 40 */	b lbl_804131E4
lbl_804131A8:
/* 804131A8  38 00 00 00 */	li r0, 0
/* 804131AC  7F C3 F3 78 */	mr r3, r30
/* 804131B0  B0 1E 02 06 */	sth r0, 0x206(r30)
/* 804131B4  7F E4 FB 78 */	mr r4, r31
/* 804131B8  48 00 02 AD */	bl aBALL_process_air_water_init
/* 804131BC  48 00 00 28 */	b lbl_804131E4
lbl_804131C0:
/* 804131C0  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 804131C4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804131C8  40 82 00 1C */	bne lbl_804131E4
/* 804131CC  38 00 00 00 */	li r0, 0
/* 804131D0  7F C3 F3 78 */	mr r3, r30
/* 804131D4  B0 1E 02 06 */	sth r0, 0x206(r30)
/* 804131D8  7F E4 FB 78 */	mr r4, r31
/* 804131DC  4B FF FB 35 */	bl aBALL_process_air_init
/* 804131E0  48 00 00 A0 */	b lbl_80413280
lbl_804131E4:
/* 804131E4  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 804131E8  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 804131EC  40 82 00 94 */	bne lbl_80413280
/* 804131F0  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804131F4  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804131F8  28 00 00 09 */	cmplwi r0, 9
/* 804131FC  40 82 00 84 */	bne lbl_80413280
/* 80413200  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80413204  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80413208  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 8041320C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80413210  40 81 00 70 */	ble lbl_80413280
/* 80413214  3C 60 80 64 */	lis r3, lit_752@ha /* 0x80643A50@ha */
/* 80413218  C0 03 3A 50 */	lfs f0, lit_752@l(r3)  /* 0x80643A50@l */
/* 8041321C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80413220  40 81 00 0C */	ble lbl_8041322C
/* 80413224  39 40 00 01 */	li r10, 1
/* 80413228  48 00 00 08 */	b lbl_80413230
lbl_8041322C:
/* 8041322C  39 40 00 00 */	li r10, 0
lbl_80413230:
/* 80413230  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80413234  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80413238  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8041323C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80413240  3C 63 00 02 */	addis r3, r3, 2
/* 80413244  7F E7 FB 78 */	mr r7, r31
/* 80413248  90 81 00 10 */	stw r4, 0x10(r1)
/* 8041324C  38 81 00 10 */	addi r4, r1, 0x10
/* 80413250  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 80413254  38 60 00 33 */	li r3, 0x33
/* 80413258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041325C  38 A0 00 01 */	li r5, 1
/* 80413260  39 20 00 00 */	li r9, 0
/* 80413264  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80413268  90 01 00 18 */	stw r0, 0x18(r1)
/* 8041326C  81 86 00 00 */	lwz r12, 0(r6)
/* 80413270  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 80413274  A1 1E 00 06 */	lhz r8, 6(r30)
/* 80413278  7D 89 03 A6 */	mtctr r12
/* 8041327C  4E 80 04 21 */	bctrl 
lbl_80413280:
/* 80413280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80413284  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80413288  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8041328C  7C 08 03 A6 */	mtlr r0
/* 80413290  38 21 00 40 */	addi r1, r1, 0x40
/* 80413294  4E 80 00 20 */	blr 