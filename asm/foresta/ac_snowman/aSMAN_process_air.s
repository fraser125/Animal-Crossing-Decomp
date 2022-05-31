lbl_804A649C:
/* 804A649C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A64A0  7C 08 02 A6 */	mflr r0
/* 804A64A4  3C A0 80 64 */	lis r5, lit_681@ha /* 0x80645CDC@ha */
/* 804A64A8  3C C0 80 64 */	lis r6, lit_682@ha /* 0x80645CE4@ha */
/* 804A64AC  39 05 5C DC */	addi r8, r5, lit_681@l /* 0x80645CDC@l */
/* 804A64B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A64B4  C8 C8 00 00 */	lfd f6, 0(r8)
/* 804A64B8  38 E6 5C E4 */	addi r7, r6, lit_682@l /* 0x80645CE4@l */
/* 804A64BC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 804A64C0  3C A0 80 64 */	lis r5, lit_640@ha /* 0x80645CB4@ha */
/* 804A64C4  FC 60 30 34 */	frsqrte f3, f6
/* 804A64C8  38 C5 5C B4 */	addi r6, r5, lit_640@l /* 0x80645CB4@l */
/* 804A64CC  3C A0 80 64 */	lis r5, lit_737@ha /* 0x80645CFC@ha */
/* 804A64D0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 804A64D4  7C 7E 1B 78 */	mr r30, r3
/* 804A64D8  C8 A8 00 00 */	lfd f5, 0(r8)
/* 804A64DC  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A64E0  C8 87 00 00 */	lfd f4, 0(r7)
/* 804A64E4  C0 06 00 00 */	lfs f0, 0(r6)
/* 804A64E8  7C 9F 23 78 */	mr r31, r4
/* 804A64EC  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A64F0  C0 45 5C FC */	lfs f2, lit_737@l(r5)  /* 0x80645CFC@l */
/* 804A64F4  FC 26 00 72 */	fmul f1, f6, f1
/* 804A64F8  38 7E 01 BC */	addi r3, r30, 0x1bc
/* 804A64FC  FC 24 08 28 */	fsub f1, f4, f1
/* 804A6500  FC 63 00 72 */	fmul f3, f3, f1
/* 804A6504  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A6508  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A650C  FC 26 00 72 */	fmul f1, f6, f1
/* 804A6510  FC 24 08 28 */	fsub f1, f4, f1
/* 804A6514  FC 63 00 72 */	fmul f3, f3, f1
/* 804A6518  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A651C  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A6520  FC 26 00 72 */	fmul f1, f6, f1
/* 804A6524  FC 24 08 28 */	fsub f1, f4, f1
/* 804A6528  FC 23 00 72 */	fmul f1, f3, f1
/* 804A652C  FC 26 00 72 */	fmul f1, f6, f1
/* 804A6530  FC 20 08 18 */	frsp f1, f1
/* 804A6534  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804A6538  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A653C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A6540  4B F1 4D 99 */	bl add_calc0
/* 804A6544  A0 1E 00 98 */	lhz r0, 0x98(r30)
/* 804A6548  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 804A654C  41 82 01 AC */	beq lbl_804A66F8
/* 804A6550  7F C3 F3 78 */	mr r3, r30
/* 804A6554  4B F5 03 B1 */	bl mRlib_Get_HitWallAngleY
/* 804A6558  3C 80 80 64 */	lis r4, lit_1244@ha /* 0x80645D7C@ha */
/* 804A655C  3C A0 80 64 */	lis r5, lit_681@ha /* 0x80645CDC@ha */
/* 804A6560  38 C4 5D 7C */	addi r6, r4, lit_1244@l /* 0x80645D7C@l */
/* 804A6564  C8 A5 5C DC */	lfd f5, lit_681@l(r5)  /* 0x80645CDC@l */
/* 804A6568  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804A656C  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A6570  38 C4 5C E4 */	addi r6, r4, lit_682@l /* 0x80645CE4@l */
/* 804A6574  FC 00 30 34 */	frsqrte f0, f6
/* 804A6578  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80645CB4@ha */
/* 804A657C  38 A4 5C B4 */	addi r5, r4, lit_640@l /* 0x80645CB4@l */
/* 804A6580  C8 86 00 00 */	lfd f4, 0(r6)
/* 804A6584  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A6588  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A658C  FC 20 00 32 */	fmul f1, f0, f0
/* 804A6590  FC 65 00 32 */	fmul f3, f5, f0
/* 804A6594  C0 04 5C 8C */	lfs f0, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A6598  FC 26 00 72 */	fmul f1, f6, f1
/* 804A659C  FC 24 08 28 */	fsub f1, f4, f1
/* 804A65A0  FC 63 00 72 */	fmul f3, f3, f1
/* 804A65A4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A65A8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A65AC  FC 26 00 72 */	fmul f1, f6, f1
/* 804A65B0  FC 24 08 28 */	fsub f1, f4, f1
/* 804A65B4  FC 63 00 72 */	fmul f3, f3, f1
/* 804A65B8  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A65BC  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A65C0  FC 26 00 72 */	fmul f1, f6, f1
/* 804A65C4  FC 24 08 28 */	fsub f1, f4, f1
/* 804A65C8  FC 23 00 72 */	fmul f1, f3, f1
/* 804A65CC  FC 26 00 72 */	fmul f1, f6, f1
/* 804A65D0  FC 20 08 18 */	frsp f1, f1
/* 804A65D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804A65D8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804A65DC  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A65E0  EC 42 08 28 */	fsubs f2, f2, f1
/* 804A65E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804A65E8  40 81 00 54 */	ble lbl_804A663C
/* 804A65EC  FC 20 10 34 */	frsqrte f1, f2
/* 804A65F0  FC 01 00 72 */	fmul f0, f1, f1
/* 804A65F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804A65F8  FC 02 00 32 */	fmul f0, f2, f0
/* 804A65FC  FC 04 00 28 */	fsub f0, f4, f0
/* 804A6600  FC 21 00 32 */	fmul f1, f1, f0
/* 804A6604  FC 01 00 72 */	fmul f0, f1, f1
/* 804A6608  FC 25 00 72 */	fmul f1, f5, f1
/* 804A660C  FC 02 00 32 */	fmul f0, f2, f0
/* 804A6610  FC 04 00 28 */	fsub f0, f4, f0
/* 804A6614  FC 21 00 32 */	fmul f1, f1, f0
/* 804A6618  FC 01 00 72 */	fmul f0, f1, f1
/* 804A661C  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6620  FC 02 00 32 */	fmul f0, f2, f0
/* 804A6624  FC 04 00 28 */	fsub f0, f4, f0
/* 804A6628  FC 01 00 32 */	fmul f0, f1, f0
/* 804A662C  FC 02 00 32 */	fmul f0, f2, f0
/* 804A6630  FC 00 00 18 */	frsp f0, f0
/* 804A6634  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A6638  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_804A663C:
/* 804A663C  3C A0 80 64 */	lis r5, lit_640@ha /* 0x80645CB4@ha */
/* 804A6640  7C 64 1B 78 */	mr r4, r3
/* 804A6644  C0 05 5C B4 */	lfs f0, lit_640@l(r5)  /* 0x80645CB4@l */
/* 804A6648  38 7E 00 36 */	addi r3, r30, 0x36
/* 804A664C  38 A0 10 00 */	li r5, 0x1000
/* 804A6650  38 C0 00 2D */	li r6, 0x2d
/* 804A6654  EC 20 10 28 */	fsubs f1, f0, f2
/* 804A6658  4B F1 4C B9 */	bl add_calc_short_angle2
/* 804A665C  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A6660  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A6664  39 03 5C DC */	addi r8, r3, lit_681@l /* 0x80645CDC@l */
/* 804A6668  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80645CD0@ha */
/* 804A666C  C9 08 00 00 */	lfd f8, 0(r8)
/* 804A6670  38 E4 5C E4 */	addi r7, r4, lit_682@l /* 0x80645CE4@l */
/* 804A6674  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A6678  3C 80 80 64 */	lis r4, lit_1040@ha /* 0x80645D40@ha */
/* 804A667C  FC 20 40 34 */	frsqrte f1, f8
/* 804A6680  38 A3 5C B4 */	addi r5, r3, lit_640@l /* 0x80645CB4@l */
/* 804A6684  C8 E8 00 00 */	lfd f7, 0(r8)
/* 804A6688  3C 60 80 64 */	lis r3, lit_1014@ha /* 0x80645D38@ha */
/* 804A668C  C0 83 5D 38 */	lfs f4, lit_1014@l(r3)  /* 0x80645D38@l */
/* 804A6690  38 7E 00 74 */	addi r3, r30, 0x74
/* 804A6694  FC 41 00 72 */	fmul f2, f1, f1
/* 804A6698  C8 C7 00 00 */	lfd f6, 0(r7)
/* 804A669C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A66A0  FC A7 00 72 */	fmul f5, f7, f1
/* 804A66A4  C0 26 5C D0 */	lfs f1, lit_678@l(r6)  /* 0x80645CD0@l */
/* 804A66A8  C0 64 5D 40 */	lfs f3, lit_1040@l(r4)  /* 0x80645D40@l */
/* 804A66AC  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A66B0  FC 46 10 28 */	fsub f2, f6, f2
/* 804A66B4  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A66B8  FC 45 01 72 */	fmul f2, f5, f5
/* 804A66BC  FC A7 01 72 */	fmul f5, f7, f5
/* 804A66C0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A66C4  FC 46 10 28 */	fsub f2, f6, f2
/* 804A66C8  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A66CC  FC 45 01 72 */	fmul f2, f5, f5
/* 804A66D0  FC A7 01 72 */	fmul f5, f7, f5
/* 804A66D4  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A66D8  FC 46 10 28 */	fsub f2, f6, f2
/* 804A66DC  FC 45 00 B2 */	fmul f2, f5, f2
/* 804A66E0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A66E4  FC 40 10 18 */	frsp f2, f2
/* 804A66E8  D0 41 00 08 */	stfs f2, 8(r1)
/* 804A66EC  C0 41 00 08 */	lfs f2, 8(r1)
/* 804A66F0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804A66F4  4B F1 4A BD */	bl add_calc
lbl_804A66F8:
/* 804A66F8  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 804A66FC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 804A6700  41 82 01 10 */	beq lbl_804A6810
/* 804A6704  80 FE 00 28 */	lwz r7, 0x28(r30)
/* 804A6708  3C 60 80 69 */	lis r3, lit_1038@ha /* 0x8068E8A0@ha */
/* 804A670C  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 804A6710  38 83 E8 A0 */	addi r4, r3, lit_1038@l /* 0x8068E8A0@l */
/* 804A6714  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A6718  38 61 00 30 */	addi r3, r1, 0x30
/* 804A671C  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 804A6720  38 A0 07 8E */	li r5, 0x78e
/* 804A6724  90 C1 00 40 */	stw r6, 0x40(r1)
/* 804A6728  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A672C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 804A6730  90 C1 00 34 */	stw r6, 0x34(r1)
/* 804A6734  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A6738  4B EE D8 81 */	bl mCoBG_GetWaterHeight_File
/* 804A673C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804A6740  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80645CEC@ha */
/* 804A6744  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 804A6748  38 83 5C EC */	addi r4, r3, lit_683@l /* 0x80645CEC@l */
/* 804A674C  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 804A6750  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A6754  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A6758  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A675C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804A6760  3C 63 00 02 */	addis r3, r3, 2
/* 804A6764  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A6768  7F E7 FB 78 */	mr r7, r31
/* 804A676C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804A6770  38 81 00 24 */	addi r4, r1, 0x24
/* 804A6774  81 03 60 9C */	lwz r8, 0x609c(r3)
/* 804A6778  38 60 00 3A */	li r3, 0x3a
/* 804A677C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A6780  38 A0 00 01 */	li r5, 1
/* 804A6784  38 C0 00 00 */	li r6, 0
/* 804A6788  39 20 00 02 */	li r9, 2
/* 804A678C  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A6790  81 88 00 00 */	lwz r12, 0(r8)
/* 804A6794  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6798  A1 1E 00 06 */	lhz r8, 6(r30)
/* 804A679C  FC 00 00 1E */	fctiwz f0, f0
/* 804A67A0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804A67A4  81 41 00 4C */	lwz r10, 0x4c(r1)
/* 804A67A8  7D 89 03 A6 */	mtctr r12
/* 804A67AC  4E 80 04 21 */	bctrl 
/* 804A67B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A67B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A67B8  3C 63 00 02 */	addis r3, r3, 2
/* 804A67BC  80 A3 60 B8 */	lwz r5, 0x60b8(r3)
/* 804A67C0  28 05 00 00 */	cmplwi r5, 0
/* 804A67C4  41 82 00 34 */	beq lbl_804A67F8
/* 804A67C8  3C 80 80 64 */	lis r4, lit_1306@ha /* 0x80645D94@ha */
/* 804A67CC  3C 60 80 64 */	lis r3, lit_1081@ha /* 0x80645D58@ha */
/* 804A67D0  C0 44 5D 94 */	lfs f2, lit_1306@l(r4)  /* 0x80645D94@l */
/* 804A67D4  38 80 00 00 */	li r4, 0
/* 804A67D8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804A67DC  C0 03 5D 58 */	lfs f0, lit_1081@l(r3)  /* 0x80645D58@l */
/* 804A67E0  38 7E 00 28 */	addi r3, r30, 0x28
/* 804A67E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A67E8  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804A67EC  EC 21 00 24 */	fdivs f1, f1, f0
/* 804A67F0  7D 89 03 A6 */	mtctr r12
/* 804A67F4  4E 80 04 21 */	bctrl 
lbl_804A67F8:
/* 804A67F8  38 9E 00 28 */	addi r4, r30, 0x28
/* 804A67FC  38 60 00 27 */	li r3, 0x27
/* 804A6800  48 18 77 A9 */	bl sAdo_OngenTrgStart
/* 804A6804  7F C3 F3 78 */	mr r3, r30
/* 804A6808  4B FF F9 8D */	bl aSMAN_process_swim_init
/* 804A680C  48 00 00 7C */	b lbl_804A6888
lbl_804A6810:
/* 804A6810  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 804A6814  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804A6818  41 82 00 70 */	beq lbl_804A6888
/* 804A681C  C0 5E 01 C0 */	lfs f2, 0x1c0(r30)
/* 804A6820  3C 60 80 64 */	lis r3, lit_1380@ha /* 0x80645D9C@ha */
/* 804A6824  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 804A6828  C0 03 5D 9C */	lfs f0, lit_1380@l(r3)  /* 0x80645D9C@l */
/* 804A682C  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A6830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A6834  4C 41 13 82 */	cror 2, 1, 2
/* 804A6838  41 82 00 2C */	beq lbl_804A6864
/* 804A683C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804A6840  38 61 00 18 */	addi r3, r1, 0x18
/* 804A6844  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804A6848  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A684C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A6850  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A6854  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A6858  4B EE AB 75 */	bl mCoBG_ExistHeightGap_KeepAndNow_Detail
/* 804A685C  2C 03 00 00 */	cmpwi r3, 0
/* 804A6860  41 82 00 20 */	beq lbl_804A6880
lbl_804A6864:
/* 804A6864  A8 1E 01 F8 */	lha r0, 0x1f8(r30)
/* 804A6868  60 00 00 04 */	ori r0, r0, 4
/* 804A686C  B0 1E 01 F8 */	sth r0, 0x1f8(r30)
/* 804A6870  A8 1E 01 F8 */	lha r0, 0x1f8(r30)
/* 804A6874  60 00 00 02 */	ori r0, r0, 2
/* 804A6878  B0 1E 01 F8 */	sth r0, 0x1f8(r30)
/* 804A687C  48 00 00 0C */	b lbl_804A6888
lbl_804A6880:
/* 804A6880  7F C3 F3 78 */	mr r3, r30
/* 804A6884  4B FF EF B1 */	bl aSMAN_process_normal_init
lbl_804A6888:
/* 804A6888  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A688C  38 60 00 01 */	li r3, 1
/* 804A6890  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 804A6894  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 804A6898  7C 08 03 A6 */	mtlr r0
/* 804A689C  38 21 00 60 */	addi r1, r1, 0x60
/* 804A68A0  4E 80 00 20 */	blr 
