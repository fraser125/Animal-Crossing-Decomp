lbl_8058E288:
/* 8058E288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058E28C  7C 08 02 A6 */	mflr r0
/* 8058E290  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058E294  39 61 00 20 */	addi r11, r1, 0x20
/* 8058E298  4B B0 CC 3D */	bl func_8009AED4
/* 8058E29C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058E2A0  7C 7D 1B 78 */	mr r29, r3
/* 8058E2A4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058E2A8  7C 9E 23 78 */	mr r30, r4
/* 8058E2AC  3F E5 00 02 */	addis r31, r5, 2
/* 8058E2B0  38 A0 FF FF */	li r5, -1
/* 8058E2B4  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058E2B8  38 C0 00 01 */	li r6, 1
/* 8058E2BC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058E2C0  7D 89 03 A6 */	mtctr r12
/* 8058E2C4  4E 80 04 21 */	bctrl 
/* 8058E2C8  2C 03 00 00 */	cmpwi r3, 0
/* 8058E2CC  40 82 00 24 */	bne lbl_8058E2F0
/* 8058E2D0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058E2D4  7F A3 EB 78 */	mr r3, r29
/* 8058E2D8  7F C4 F3 78 */	mr r4, r30
/* 8058E2DC  38 A0 FF FF */	li r5, -1
/* 8058E2E0  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058E2E4  38 C0 00 02 */	li r6, 2
/* 8058E2E8  7D 89 03 A6 */	mtctr r12
/* 8058E2EC  4E 80 04 21 */	bctrl 
lbl_8058E2F0:
/* 8058E2F0  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 8058E2F4  2C 00 00 04 */	cmpwi r0, 4
/* 8058E2F8  41 82 00 7C */	beq lbl_8058E374
/* 8058E2FC  88 1D 07 F5 */	lbz r0, 0x7f5(r29)
/* 8058E300  28 00 00 16 */	cmplwi r0, 0x16
/* 8058E304  40 82 00 70 */	bne lbl_8058E374
/* 8058E308  AB FD 00 DE */	lha r31, 0xde(r29)
/* 8058E30C  7F E3 FB 78 */	mr r3, r31
/* 8058E310  4B E2 C7 E1 */	bl sin_s
/* 8058E314  3C 80 80 65 */	lis r4, data_80649BD4@ha /* 0x80649BD4@ha */
/* 8058E318  3C 60 80 65 */	lis r3, lit_544@ha /* 0x80649BD8@ha */
/* 8058E31C  C0 64 9B D4 */	lfs f3, data_80649BD4@l(r4)  /* 0x80649BD4@l */
/* 8058E320  C0 43 9B D8 */	lfs f2, lit_544@l(r3)  /* 0x80649BD8@l */
/* 8058E324  7F E3 FB 78 */	mr r3, r31
/* 8058E328  EC 23 00 72 */	fmuls f1, f3, f1
/* 8058E32C  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8058E330  EC 00 08 2A */	fadds f0, f0, f1
/* 8058E334  D0 1D 08 20 */	stfs f0, 0x820(r29)
/* 8058E338  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 8058E33C  EC 02 00 2A */	fadds f0, f2, f0
/* 8058E340  D0 1D 08 24 */	stfs f0, 0x824(r29)
/* 8058E344  4B E2 C7 59 */	bl cos_s
/* 8058E348  3C 60 80 65 */	lis r3, data_80649BD4@ha /* 0x80649BD4@ha */
/* 8058E34C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8058E350  38 83 9B D4 */	addi r4, r3, data_80649BD4@l /* 0x80649BD4@l */
/* 8058E354  38 60 00 03 */	li r3, 3
/* 8058E358  C0 44 00 00 */	lfs f2, 0(r4)
/* 8058E35C  38 00 00 02 */	li r0, 2
/* 8058E360  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058E364  EC 00 08 2A */	fadds f0, f0, f1
/* 8058E368  D0 1D 08 28 */	stfs f0, 0x828(r29)
/* 8058E36C  98 7D 08 1A */	stb r3, 0x81a(r29)
/* 8058E370  98 1D 08 1B */	stb r0, 0x81b(r29)
lbl_8058E374:
/* 8058E374  39 61 00 20 */	addi r11, r1, 0x20
/* 8058E378  4B B0 CB A9 */	bl func_8009AF20
/* 8058E37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058E380  7C 08 03 A6 */	mtlr r0
/* 8058E384  38 21 00 20 */	addi r1, r1, 0x20
/* 8058E388  4E 80 00 20 */	blr 
