lbl_805DA530:
/* 805DA530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DA534  7C 08 02 A6 */	mflr r0
/* 805DA538  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DA53C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DA540  7C 9F 23 78 */	mr r31, r4
/* 805DA544  93 C1 00 08 */	stw r30, 8(r1)
/* 805DA548  7C 7E 1B 78 */	mr r30, r3
/* 805DA54C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805DA550  2C 00 00 05 */	cmpwi r0, 5
/* 805DA554  41 82 01 50 */	beq lbl_805DA6A4
/* 805DA558  40 80 00 14 */	bge lbl_805DA56C
/* 805DA55C  2C 00 00 03 */	cmpwi r0, 3
/* 805DA560  41 82 00 6C */	beq lbl_805DA5CC
/* 805DA564  40 80 00 14 */	bge lbl_805DA578
/* 805DA568  48 00 01 3C */	b lbl_805DA6A4
lbl_805DA56C:
/* 805DA56C  2C 00 00 07 */	cmpwi r0, 7
/* 805DA570  40 80 01 34 */	bge lbl_805DA6A4
/* 805DA574  48 00 00 58 */	b lbl_805DA5CC
lbl_805DA578:
/* 805DA578  80 1F 00 00 */	lwz r0, 0(r31)
/* 805DA57C  2C 00 00 00 */	cmpwi r0, 0
/* 805DA580  40 82 00 40 */	bne lbl_805DA5C0
/* 805DA584  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 805DA588  38 A0 00 20 */	li r5, 0x20
/* 805DA58C  A8 9E 00 18 */	lha r4, 0x18(r30)
/* 805DA590  4B DE 20 95 */	bl func_803BC624
/* 805DA594  B0 7E 00 1E */	sth r3, 0x1e(r30)
/* 805DA598  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805DA59C  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 805DA5A0  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805DA5A4  98 1F 00 04 */	stb r0, 4(r31)
/* 805DA5A8  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805DA5AC  2C 00 00 00 */	cmpwi r0, 0
/* 805DA5B0  40 82 00 10 */	bne lbl_805DA5C0
/* 805DA5B4  38 60 10 03 */	li r3, 0x1003
/* 805DA5B8  48 05 37 4D */	bl sAdo_SysTrgStart
/* 805DA5BC  48 00 00 E8 */	b lbl_805DA6A4
lbl_805DA5C0:
/* 805DA5C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 805DA5C4  38 A3 00 01 */	addi r5, r3, 1
/* 805DA5C8  48 00 00 14 */	b lbl_805DA5DC
lbl_805DA5CC:
/* 805DA5CC  80 7F 00 00 */	lwz r3, 0(r31)
/* 805DA5D0  38 A3 FF FF */	addi r5, r3, -1
/* 805DA5D4  48 00 00 08 */	b lbl_805DA5DC
/* 805DA5D8  48 00 00 CC */	b lbl_805DA6A4
lbl_805DA5DC:
/* 805DA5DC  2C 05 00 00 */	cmpwi r5, 0
/* 805DA5E0  41 80 00 C4 */	blt lbl_805DA6A4
/* 805DA5E4  2C 05 00 02 */	cmpwi r5, 2
/* 805DA5E8  41 80 00 08 */	blt lbl_805DA5F0
/* 805DA5EC  48 00 00 B8 */	b lbl_805DA6A4
lbl_805DA5F0:
/* 805DA5F0  38 00 00 01 */	li r0, 1
/* 805DA5F4  3C 60 80 6D */	lis r3, pm_make_table_col@ha /* 0x806CCDA4@ha */
/* 805DA5F8  98 1E 00 15 */	stb r0, 0x15(r30)
/* 805DA5FC  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 805DA600  54 A0 08 3C */	slwi r0, r5, 1
/* 805DA604  38 63 CD A4 */	addi r3, r3, pm_make_table_col@l /* 0x806CCDA4@l */
/* 805DA608  90 9F 00 00 */	stw r4, 0(r31)
/* 805DA60C  2C 05 00 01 */	cmpwi r5, 1
/* 805DA610  7C 03 02 AE */	lhax r0, r3, r0
/* 805DA614  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 805DA618  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 805DA61C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 805DA620  B0 1E 00 1C */	sth r0, 0x1c(r30)
/* 805DA624  41 82 00 20 */	beq lbl_805DA644
/* 805DA628  40 80 00 24 */	bge lbl_805DA64C
/* 805DA62C  2C 05 00 00 */	cmpwi r5, 0
/* 805DA630  40 80 00 08 */	bge lbl_805DA638
/* 805DA634  48 00 00 18 */	b lbl_805DA64C
lbl_805DA638:
/* 805DA638  38 1F 00 06 */	addi r0, r31, 6
/* 805DA63C  90 1E 00 28 */	stw r0, 0x28(r30)
/* 805DA640  48 00 00 0C */	b lbl_805DA64C
lbl_805DA644:
/* 805DA644  38 1F 00 0E */	addi r0, r31, 0xe
/* 805DA648  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_805DA64C:
/* 805DA64C  38 00 00 01 */	li r0, 1
/* 805DA650  7C 7F 2A 14 */	add r3, r31, r5
/* 805DA654  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 805DA658  88 03 00 04 */	lbz r0, 4(r3)
/* 805DA65C  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 805DA660  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 805DA664  2C 00 00 02 */	cmpwi r0, 2
/* 805DA668  41 82 00 34 */	beq lbl_805DA69C
/* 805DA66C  40 80 00 10 */	bge lbl_805DA67C
/* 805DA670  2C 00 00 01 */	cmpwi r0, 1
/* 805DA674  40 80 00 1C */	bge lbl_805DA690
/* 805DA678  48 00 00 24 */	b lbl_805DA69C
lbl_805DA67C:
/* 805DA67C  2C 00 00 05 */	cmpwi r0, 5
/* 805DA680  40 80 00 1C */	bge lbl_805DA69C
/* 805DA684  7F C3 F3 78 */	mr r3, r30
/* 805DA688  4B FF E6 F1 */	bl mED_set_idxcol_inLineWidth
/* 805DA68C  48 00 00 18 */	b lbl_805DA6A4
lbl_805DA690:
/* 805DA690  38 00 00 00 */	li r0, 0
/* 805DA694  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 805DA698  48 00 00 0C */	b lbl_805DA6A4
lbl_805DA69C:
/* 805DA69C  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805DA6A0  B0 1E 00 16 */	sth r0, 0x16(r30)
lbl_805DA6A4:
/* 805DA6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DA6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DA6AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DA6B0  7C 08 03 A6 */	mtlr r0
/* 805DA6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DA6B8  4E 80 00 20 */	blr 
