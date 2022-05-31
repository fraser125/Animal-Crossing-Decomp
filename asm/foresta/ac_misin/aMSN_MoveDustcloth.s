lbl_8042E5D0:
/* 8042E5D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042E5D4  7C 08 02 A6 */	mflr r0
/* 8042E5D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042E5DC  38 00 00 00 */	li r0, 0
/* 8042E5E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8042E5E4  7C 7F 1B 78 */	mr r31, r3
/* 8042E5E8  90 03 00 24 */	stw r0, 0x24(r3)
/* 8042E5EC  A8 03 00 00 */	lha r0, 0(r3)
/* 8042E5F0  2C 00 00 00 */	cmpwi r0, 0
/* 8042E5F4  41 82 01 BC */	beq lbl_8042E7B0
/* 8042E5F8  A8 1F 00 02 */	lha r0, 2(r31)
/* 8042E5FC  2C 00 00 89 */	cmpwi r0, 0x89
/* 8042E600  40 82 00 58 */	bne lbl_8042E658
/* 8042E604  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8042E608  3C 80 80 68 */	lis r4, aMSN_dustcloth_target_table@ha /* 0x80684BDC@ha */
/* 8042E60C  3C 60 80 68 */	lis r3, target_angle_table@ha /* 0x80684C0C@ha */
/* 8042E610  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8042E614  38 84 4B DC */	addi r4, r4, aMSN_dustcloth_target_table@l /* 0x80684BDC@l */
/* 8042E618  54 00 08 3C */	slwi r0, r0, 1
/* 8042E61C  38 63 4C 0C */	addi r3, r3, target_angle_table@l /* 0x80684C0C@l */
/* 8042E620  7C C4 2A 14 */	add r6, r4, r5
/* 8042E624  80 A6 00 00 */	lwz r5, 0(r6)
/* 8042E628  80 86 00 04 */	lwz r4, 4(r6)
/* 8042E62C  90 BF 00 10 */	stw r5, 0x10(r31)
/* 8042E630  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8042E634  80 86 00 08 */	lwz r4, 8(r6)
/* 8042E638  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8042E63C  7C 03 02 AE */	lhax r0, r3, r0
/* 8042E640  B0 1F 00 20 */	sth r0, 0x20(r31)
/* 8042E644  A8 1F 00 20 */	lha r0, 0x20(r31)
/* 8042E648  2C 00 00 00 */	cmpwi r0, 0
/* 8042E64C  40 82 00 0C */	bne lbl_8042E658
/* 8042E650  38 00 FF FF */	li r0, -1
/* 8042E654  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_8042E658:
/* 8042E658  A8 BF 00 02 */	lha r5, 2(r31)
/* 8042E65C  2C 05 00 62 */	cmpwi r5, 0x62
/* 8042E660  40 80 00 B4 */	bge lbl_8042E714
/* 8042E664  38 60 00 61 */	li r3, 0x61
/* 8042E668  38 80 00 00 */	li r4, 0
/* 8042E66C  4B F8 D1 79 */	bl get_percent
/* 8042E670  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8042E674  3C 60 80 68 */	lis r3, aMSN_dustcloth_target_table@ha /* 0x80684BDC@ha */
/* 8042E678  38 83 4B DC */	addi r4, r3, aMSN_dustcloth_target_table@l /* 0x80684BDC@l */
/* 8042E67C  3C 60 80 68 */	lis r3, target_angle_table@ha /* 0x80684C0C@ha */
/* 8042E680  38 05 FF FF */	addi r0, r5, -1
/* 8042E684  54 06 07 BE */	clrlwi r6, r0, 0x1e
/* 8042E688  38 E4 00 08 */	addi r7, r4, 8
/* 8042E68C  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8042E690  54 00 0F 7C */	rlwinm r0, r0, 1, 0x1d, 0x1e
/* 8042E694  38 63 4C 0C */	addi r3, r3, target_angle_table@l /* 0x80684C0C@l */
/* 8042E698  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8042E69C  7C 44 34 2E */	lfsx f2, r4, r6
/* 8042E6A0  7C 04 2C 2E */	lfsx f0, r4, r5
/* 8042E6A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042E6A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042E6AC  EC 02 00 2A */	fadds f0, f2, f0
/* 8042E6B0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8042E6B4  7C 47 34 2E */	lfsx f2, r7, r6
/* 8042E6B8  7C 07 2C 2E */	lfsx f0, r7, r5
/* 8042E6BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042E6C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042E6C4  EC 02 00 2A */	fadds f0, f2, f0
/* 8042E6C8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8042E6CC  7C 03 02 AE */	lhax r0, r3, r0
/* 8042E6D0  B0 1F 00 20 */	sth r0, 0x20(r31)
/* 8042E6D4  A8 1F 00 02 */	lha r0, 2(r31)
/* 8042E6D8  2C 00 00 15 */	cmpwi r0, 0x15
/* 8042E6DC  40 81 00 88 */	ble lbl_8042E764
/* 8042E6E0  3C 80 80 64 */	lis r4, lit_599@ha /* 0x80644174@ha */
/* 8042E6E4  84 E4 41 74 */	lwzu r7, lit_599@l(r4)  /* 0x80644174@l */
/* 8042E6E8  3C 60 80 43 */	lis r3, aMSN_MoveDustcloth@ha /* 0x8042E5D0@ha */
/* 8042E6EC  38 A1 00 08 */	addi r5, r1, 8
/* 8042E6F0  80 C4 00 04 */	lwz r6, 4(r4)
/* 8042E6F4  38 63 E5 D0 */	addi r3, r3, aMSN_MoveDustcloth@l /* 0x8042E5D0@l */
/* 8042E6F8  80 04 00 08 */	lwz r0, 8(r4)
/* 8042E6FC  38 80 00 48 */	li r4, 0x48
/* 8042E700  90 E1 00 08 */	stw r7, 8(r1)
/* 8042E704  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8042E708  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042E70C  48 1F F8 39 */	bl sAdo_OngenPos
/* 8042E710  48 00 00 54 */	b lbl_8042E764
lbl_8042E714:
/* 8042E714  2C 05 00 78 */	cmpwi r5, 0x78
/* 8042E718  41 80 00 4C */	blt lbl_8042E764
/* 8042E71C  38 60 00 8A */	li r3, 0x8a
/* 8042E720  38 80 00 78 */	li r4, 0x78
/* 8042E724  4B F8 D0 C1 */	bl get_percent
/* 8042E728  3C 60 80 64 */	lis r3, lit_618@ha /* 0x80644180@ha */
/* 8042E72C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8042E730  38 A3 41 80 */	addi r5, r3, lit_618@l /* 0x80644180@l */
/* 8042E734  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042E738  3C 60 80 68 */	lis r3, target_angle_table@ha /* 0x80684C0C@ha */
/* 8042E73C  38 04 FF FF */	addi r0, r4, -1
/* 8042E740  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042E744  54 00 0F 7C */	rlwinm r0, r0, 1, 0x1d, 0x1e
/* 8042E748  38 63 4C 0C */	addi r3, r3, target_angle_table@l /* 0x80684C0C@l */
/* 8042E74C  7C 03 02 AE */	lhax r0, r3, r0
/* 8042E750  FC 00 00 1E */	fctiwz f0, f0
/* 8042E754  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8042E758  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8042E75C  7C 03 02 14 */	add r0, r3, r0
/* 8042E760  B0 1F 00 20 */	sth r0, 0x20(r31)
lbl_8042E764:
/* 8042E764  A8 1F 00 02 */	lha r0, 2(r31)
/* 8042E768  2C 00 00 04 */	cmpwi r0, 4
/* 8042E76C  40 81 00 0C */	ble lbl_8042E778
/* 8042E770  2C 00 00 76 */	cmpwi r0, 0x76
/* 8042E774  41 80 00 0C */	blt lbl_8042E780
lbl_8042E778:
/* 8042E778  38 00 00 01 */	li r0, 1
/* 8042E77C  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8042E780:
/* 8042E780  A8 7F 00 02 */	lha r3, 2(r31)
/* 8042E784  38 03 00 01 */	addi r0, r3, 1
/* 8042E788  B0 1F 00 02 */	sth r0, 2(r31)
/* 8042E78C  A8 1F 00 02 */	lha r0, 2(r31)
/* 8042E790  2C 00 00 8A */	cmpwi r0, 0x8a
/* 8042E794  41 80 00 1C */	blt lbl_8042E7B0
/* 8042E798  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8042E79C  38 00 00 00 */	li r0, 0
/* 8042E7A0  38 63 00 01 */	addi r3, r3, 1
/* 8042E7A4  54 63 07 BE */	clrlwi r3, r3, 0x1e
/* 8042E7A8  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8042E7AC  B0 1F 00 02 */	sth r0, 2(r31)
lbl_8042E7B0:
/* 8042E7B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042E7B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8042E7B8  7C 08 03 A6 */	mtlr r0
/* 8042E7BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8042E7C0  4E 80 00 20 */	blr 
