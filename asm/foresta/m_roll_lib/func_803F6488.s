lbl_803F6488:
/* 803F6488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F648C  7C 08 02 A6 */	mflr r0
/* 803F6490  3C C0 80 64 */	lis r6, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6494  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F6498  C0 06 33 EC */	lfs f0, data_806433EC@l(r6)  /* 0x806433EC@l */
/* 803F649C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F64A0  7C BF 2B 78 */	mr r31, r5
/* 803F64A4  C0 43 00 00 */	lfs f2, 0(r3)
/* 803F64A8  C0 23 00 08 */	lfs f1, 8(r3)
/* 803F64AC  EC 82 00 B2 */	fmuls f4, f2, f2
/* 803F64B0  EC 61 00 72 */	fmuls f3, f1, f1
/* 803F64B4  EC C4 18 2A */	fadds f6, f4, f3
/* 803F64B8  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 803F64BC  40 81 00 68 */	ble lbl_803F6524
/* 803F64C0  FC 60 30 34 */	frsqrte f3, f6
/* 803F64C4  3C 60 80 64 */	lis r3, lit_384@ha /* 0x806433F4@ha */
/* 803F64C8  38 A3 33 F4 */	addi r5, r3, lit_384@l /* 0x806433F4@l */
/* 803F64CC  3C 60 80 64 */	lis r3, lit_385@ha /* 0x806433FC@ha */
/* 803F64D0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 803F64D4  FC 03 00 F2 */	fmul f0, f3, f3
/* 803F64D8  C8 83 33 FC */	lfd f4, lit_385@l(r3)  /* 0x806433FC@l */
/* 803F64DC  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F64E0  FC 06 00 32 */	fmul f0, f6, f0
/* 803F64E4  FC 04 00 28 */	fsub f0, f4, f0
/* 803F64E8  FC 63 00 32 */	fmul f3, f3, f0
/* 803F64EC  FC 03 00 F2 */	fmul f0, f3, f3
/* 803F64F0  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F64F4  FC 06 00 32 */	fmul f0, f6, f0
/* 803F64F8  FC 04 00 28 */	fsub f0, f4, f0
/* 803F64FC  FC 63 00 32 */	fmul f3, f3, f0
/* 803F6500  FC 03 00 F2 */	fmul f0, f3, f3
/* 803F6504  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F6508  FC 06 00 32 */	fmul f0, f6, f0
/* 803F650C  FC 04 00 28 */	fsub f0, f4, f0
/* 803F6510  FC 03 00 32 */	fmul f0, f3, f0
/* 803F6514  FC 06 00 32 */	fmul f0, f6, f0
/* 803F6518  FC 00 00 18 */	frsp f0, f0
/* 803F651C  D0 01 00 08 */	stfs f0, 8(r1)
/* 803F6520  C0 C1 00 08 */	lfs f6, 8(r1)
lbl_803F6524:
/* 803F6524  D0 C4 00 00 */	stfs f6, 0(r4)
/* 803F6528  48 01 5A D9 */	bl atans_table
/* 803F652C  B0 7F 00 00 */	sth r3, 0(r31)
/* 803F6530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F6534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F6538  7C 08 03 A6 */	mtlr r0
/* 803F653C  38 21 00 20 */	addi r1, r1, 0x20
/* 803F6540  4E 80 00 20 */	blr 
