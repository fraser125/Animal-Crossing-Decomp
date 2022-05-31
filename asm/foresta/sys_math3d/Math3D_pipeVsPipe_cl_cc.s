lbl_8040BB54:
/* 8040BB54  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8040BB58  7C 08 02 A6 */	mflr r0
/* 8040BB5C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8040BB60  39 61 00 60 */	addi r11, r1, 0x60
/* 8040BB64  4B C8 F3 61 */	bl func_8009AEC4
/* 8040BB68  3C E0 81 1C */	lis r7, pipe1f@ha /* 0x811C776C@ha */
/* 8040BB6C  7C 79 1B 78 */	mr r25, r3
/* 8040BB70  38 67 77 6C */	addi r3, r7, pipe1f@l /* 0x811C776C@l */
/* 8040BB74  7C 9A 23 78 */	mr r26, r4
/* 8040BB78  3B A3 00 0C */	addi r29, r3, 0xc
/* 8040BB7C  7C BB 2B 78 */	mr r27, r5
/* 8040BB80  7C DC 33 78 */	mr r28, r6
/* 8040BB84  38 99 00 06 */	addi r4, r25, 6
/* 8040BB88  7F A3 EB 78 */	mr r3, r29
/* 8040BB8C  4B FA F3 4D */	bl xyz_t_move_s_xyz
/* 8040BB90  A8 79 00 00 */	lha r3, 0(r25)
/* 8040BB94  3C 00 43 30 */	lis r0, 0x4330
/* 8040BB98  3C C0 80 64 */	lis r6, lit_573@ha /* 0x8064370C@ha */
/* 8040BB9C  3C 80 81 1C */	lis r4, pipe1f@ha /* 0x811C776C@ha */
/* 8040BBA0  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8040BBA4  3C 60 81 1C */	lis r3, pipe2f@ha /* 0x811C7784@ha */
/* 8040BBA8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8040BBAC  3B E4 77 6C */	addi r31, r4, pipe1f@l /* 0x811C776C@l */
/* 8040BBB0  38 63 77 84 */	addi r3, r3, pipe2f@l /* 0x811C7784@l */
/* 8040BBB4  C8 26 37 0C */	lfd f1, lit_573@l(r6)  /* 0x8064370C@l */
/* 8040BBB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040BBBC  3B C3 00 0C */	addi r30, r3, 0xc
/* 8040BBC0  38 9A 00 06 */	addi r4, r26, 6
/* 8040BBC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8040BBC8  7F C3 F3 78 */	mr r3, r30
/* 8040BBCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8040BBD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040BBD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8040BBD8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8040BBDC  A8 19 00 04 */	lha r0, 4(r25)
/* 8040BBE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BBE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8040BBE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040BBEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040BBF0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8040BBF4  A8 19 00 02 */	lha r0, 2(r25)
/* 8040BBF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BBFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040BC00  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8040BC04  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040BC08  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8040BC0C  4B FA F2 CD */	bl xyz_t_move_s_xyz
/* 8040BC10  A8 1A 00 00 */	lha r0, 0(r26)
/* 8040BC14  3C C0 43 30 */	lis r6, 0x4330
/* 8040BC18  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040BC1C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8040BC20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BC24  3C 80 81 1C */	lis r4, pipe2f@ha /* 0x811C7784@ha */
/* 8040BC28  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8040BC2C  38 E5 37 0C */	addi r7, r5, lit_573@l /* 0x8064370C@l */
/* 8040BC30  C8 87 00 00 */	lfd f4, 0(r7)
/* 8040BC34  38 A4 77 84 */	addi r5, r4, pipe2f@l /* 0x811C7784@l */
/* 8040BC38  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8040BC3C  3C 60 81 1C */	lis r3, pipe1f@ha /* 0x811C776C@ha */
/* 8040BC40  38 83 77 6C */	addi r4, r3, pipe1f@l /* 0x811C776C@l */
/* 8040BC44  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8040BC48  EC 60 20 28 */	fsubs f3, f0, f4
/* 8040BC4C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8040BC50  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8040BC54  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040BC58  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8040BC5C  D0 65 00 00 */	stfs f3, 0(r5)
/* 8040BC60  EC 42 00 28 */	fsubs f2, f2, f0
/* 8040BC64  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 8040BC68  A8 1A 00 04 */	lha r0, 4(r26)
/* 8040BC6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040BC70  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8040BC74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BC78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040BC7C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8040BC80  EC 20 00 32 */	fmuls f1, f0, f0
/* 8040BC84  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 8040BC88  C0 03 36 E8 */	lfs f0, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040BC8C  EC 63 20 28 */	fsubs f3, f3, f4
/* 8040BC90  EC A2 08 2A */	fadds f5, f2, f1
/* 8040BC94  D0 65 00 08 */	stfs f3, 8(r5)
/* 8040BC98  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8040BC9C  A8 1A 00 02 */	lha r0, 2(r26)
/* 8040BCA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BCA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8040BCA8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8040BCAC  EC 00 20 28 */	fsubs f0, f0, f4
/* 8040BCB0  D0 05 00 04 */	stfs f0, 4(r5)
/* 8040BCB4  40 81 00 68 */	ble lbl_8040BD1C
/* 8040BCB8  FC 20 28 34 */	frsqrte f1, f5
/* 8040BCBC  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 8040BCC0  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 8040BCC4  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 8040BCC8  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040BCCC  FC 01 00 72 */	fmul f0, f1, f1
/* 8040BCD0  C8 43 36 FC */	lfd f2, lit_517@l(r3)  /* 0x806436FC@l */
/* 8040BCD4  FC 23 00 72 */	fmul f1, f3, f1
/* 8040BCD8  FC 05 00 32 */	fmul f0, f5, f0
/* 8040BCDC  FC 02 00 28 */	fsub f0, f2, f0
/* 8040BCE0  FC 21 00 32 */	fmul f1, f1, f0
/* 8040BCE4  FC 01 00 72 */	fmul f0, f1, f1
/* 8040BCE8  FC 23 00 72 */	fmul f1, f3, f1
/* 8040BCEC  FC 05 00 32 */	fmul f0, f5, f0
/* 8040BCF0  FC 02 00 28 */	fsub f0, f2, f0
/* 8040BCF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8040BCF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8040BCFC  FC 23 00 72 */	fmul f1, f3, f1
/* 8040BD00  FC 05 00 32 */	fmul f0, f5, f0
/* 8040BD04  FC 02 00 28 */	fsub f0, f2, f0
/* 8040BD08  FC 01 00 32 */	fmul f0, f1, f0
/* 8040BD0C  FC 05 00 32 */	fmul f0, f5, f0
/* 8040BD10  FC 00 00 18 */	frsp f0, f0
/* 8040BD14  D0 01 00 08 */	stfs f0, 8(r1)
/* 8040BD18  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_8040BD1C:
/* 8040BD1C  D0 BC 00 00 */	stfs f5, 0(r28)
/* 8040BD20  3C 80 81 1C */	lis r4, pipe1f@ha /* 0x811C776C@ha */
/* 8040BD24  3C 60 81 1C */	lis r3, pipe2f@ha /* 0x811C7784@ha */
/* 8040BD28  C4 24 77 6C */	lfsu f1, pipe1f@l(r4)  /* 0x811C776C@l */
/* 8040BD2C  C4 03 77 84 */	lfsu f0, pipe2f@l(r3)  /* 0x811C7784@l */
/* 8040BD30  C0 BC 00 00 */	lfs f5, 0(r28)
/* 8040BD34  EC 81 00 2A */	fadds f4, f1, f0
/* 8040BD38  FC 05 20 40 */	fcmpo cr0, f5, f4
/* 8040BD3C  40 81 00 0C */	ble lbl_8040BD48
/* 8040BD40  38 60 00 00 */	li r3, 0
/* 8040BD44  48 00 00 50 */	b lbl_8040BD94
lbl_8040BD48:
/* 8040BD48  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8040BD4C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8040BD50  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8040BD54  EC 61 00 2A */	fadds f3, f1, f0
/* 8040BD58  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8040BD5C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8040BD60  EC 42 18 2A */	fadds f2, f2, f3
/* 8040BD64  EC 21 00 2A */	fadds f1, f1, f0
/* 8040BD68  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040BD6C  41 80 00 14 */	blt lbl_8040BD80
/* 8040BD70  C0 05 00 04 */	lfs f0, 4(r5)
/* 8040BD74  EC 00 08 2A */	fadds f0, f0, f1
/* 8040BD78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8040BD7C  40 81 00 0C */	ble lbl_8040BD88
lbl_8040BD80:
/* 8040BD80  38 60 00 00 */	li r3, 0
/* 8040BD84  48 00 00 10 */	b lbl_8040BD94
lbl_8040BD88:
/* 8040BD88  EC 04 28 28 */	fsubs f0, f4, f5
/* 8040BD8C  38 60 00 01 */	li r3, 1
/* 8040BD90  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_8040BD94:
/* 8040BD94  39 61 00 60 */	addi r11, r1, 0x60
/* 8040BD98  4B C8 F1 79 */	bl func_8009AF10
/* 8040BD9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8040BDA0  7C 08 03 A6 */	mtlr r0
/* 8040BDA4  38 21 00 60 */	addi r1, r1, 0x60
/* 8040BDA8  4E 80 00 20 */	blr 
