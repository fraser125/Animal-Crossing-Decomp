lbl_805A316C:
/* 805A316C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A3170  7C 08 02 A6 */	mflr r0
/* 805A3174  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A3178  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805A317C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805A3180  7C 9F 23 78 */	mr r31, r4
/* 805A3184  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805A3188  7C 7E 1B 78 */	mr r30, r3
/* 805A318C  40 82 00 10 */	bne lbl_805A319C
/* 805A3190  A0 1E 02 40 */	lhz r0, 0x240(r30)
/* 805A3194  60 00 00 20 */	ori r0, r0, 0x20
/* 805A3198  B0 1E 02 40 */	sth r0, 0x240(r30)
lbl_805A319C:
/* 805A319C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805A31A0  38 61 00 20 */	addi r3, r1, 0x20
/* 805A31A4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A31A8  90 81 00 20 */	stw r4, 0x20(r1)
/* 805A31AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A31B0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A31B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A31B8  48 00 06 71 */	bl aGTT_Get_water_surface_position_y
/* 805A31BC  39 20 FF FF */	li r9, -1
/* 805A31C0  38 60 00 00 */	li r3, 0
/* 805A31C4  91 21 00 08 */	stw r9, 8(r1)
/* 805A31C8  38 00 00 03 */	li r0, 3
/* 805A31CC  FC 40 08 90 */	fmr f2, f1
/* 805A31D0  7F E4 FB 78 */	mr r4, r31
/* 805A31D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 805A31D8  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 805A31DC  38 A0 00 85 */	li r5, 0x85
/* 805A31E0  38 C0 00 00 */	li r6, 0
/* 805A31E4  A9 1E 01 DC */	lha r8, 0x1dc(r30)
/* 805A31E8  38 E0 00 00 */	li r7, 0
/* 805A31EC  91 01 00 10 */	stw r8, 0x10(r1)
/* 805A31F0  39 00 00 00 */	li r8, 0
/* 805A31F4  91 21 00 14 */	stw r9, 0x14(r1)
/* 805A31F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A31FC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805A3200  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 805A3204  89 3F 00 E4 */	lbz r9, 0xe4(r31)
/* 805A3208  89 5F 00 E5 */	lbz r10, 0xe5(r31)
/* 805A320C  4B DD 25 3D */	bl Actor_info_make_actor
/* 805A3210  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A3214  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805A3218  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805A321C  7C 08 03 A6 */	mtlr r0
/* 805A3220  38 21 00 40 */	addi r1, r1, 0x40
/* 805A3224  4E 80 00 20 */	blr 
