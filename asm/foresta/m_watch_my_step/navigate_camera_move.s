lbl_803F5840:
/* 803F5840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F5844  7C 08 02 A6 */	mflr r0
/* 803F5848  3C 80 81 17 */	lis r4, S_navigate@ha /* 0x81171588@ha */
/* 803F584C  38 A0 00 00 */	li r5, 0
/* 803F5850  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F5854  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F5858  3B E4 15 88 */	addi r31, r4, S_navigate@l /* 0x81171588@l */
/* 803F585C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F5860  7C 7E 1B 78 */	mr r30, r3
/* 803F5864  88 1F 00 06 */	lbz r0, 6(r31)
/* 803F5868  98 BF 00 07 */	stb r5, 7(r31)
/* 803F586C  2C 00 00 02 */	cmpwi r0, 2
/* 803F5870  41 82 01 54 */	beq lbl_803F59C4
/* 803F5874  40 80 02 44 */	bge lbl_803F5AB8
/* 803F5878  2C 00 00 00 */	cmpwi r0, 0
/* 803F587C  41 82 00 10 */	beq lbl_803F588C
/* 803F5880  40 80 00 44 */	bge lbl_803F58C4
/* 803F5884  48 00 02 34 */	b lbl_803F5AB8
/* 803F5888  48 00 02 30 */	b lbl_803F5AB8
lbl_803F588C:
/* 803F588C  4B FE 89 21 */	bl mPlib_check_able_change_camera_normal_index
/* 803F5890  2C 03 00 00 */	cmpwi r3, 0
/* 803F5894  41 82 02 24 */	beq lbl_803F5AB8
/* 803F5898  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 803F589C  28 00 00 00 */	cmplwi r0, 0
/* 803F58A0  40 82 02 18 */	bne lbl_803F5AB8
/* 803F58A4  88 7F 00 06 */	lbz r3, 6(r31)
/* 803F58A8  3C 80 81 17 */	lis r4, S_navigate@ha /* 0x81171588@ha */
/* 803F58AC  38 84 15 88 */	addi r4, r4, S_navigate@l /* 0x81171588@l */
/* 803F58B0  38 A0 00 96 */	li r5, 0x96
/* 803F58B4  38 03 00 01 */	addi r0, r3, 1
/* 803F58B8  B0 A4 00 04 */	sth r5, 4(r4)
/* 803F58BC  98 1F 00 06 */	stb r0, 6(r31)
/* 803F58C0  48 00 01 F8 */	b lbl_803F5AB8
lbl_803F58C4:
/* 803F58C4  3C 60 80 64 */	lis r3, lit_689@ha /* 0x806433C4@ha */
/* 803F58C8  3C 80 80 64 */	lis r4, lit_542@ha /* 0x80643324@ha */
/* 803F58CC  38 A3 33 C4 */	addi r5, r3, lit_689@l /* 0x806433C4@l */
/* 803F58D0  C8 C4 33 24 */	lfd f6, lit_542@l(r4)  /* 0x80643324@l */
/* 803F58D4  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803F58D8  3C 60 80 64 */	lis r3, lit_543@ha /* 0x8064332C@ha */
/* 803F58DC  38 C3 33 2C */	addi r6, r3, lit_543@l /* 0x8064332C@l */
/* 803F58E0  3C 80 80 64 */	lis r4, lit_690@ha /* 0x806433CC@ha */
/* 803F58E4  FC 40 38 34 */	frsqrte f2, f7
/* 803F58E8  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F58EC  38 A3 33 34 */	addi r5, r3, lit_544@l /* 0x80643334@l */
/* 803F58F0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 803F58F4  3C 60 80 64 */	lis r3, lit_549@ha /* 0x80643348@ha */
/* 803F58F8  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F58FC  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F5900  C0 83 33 48 */	lfs f4, lit_549@l(r3)  /* 0x80643348@l */
/* 803F5904  C0 64 33 CC */	lfs f3, lit_690@l(r4)  /* 0x806433CC@l */
/* 803F5908  7F E3 FB 78 */	mr r3, r31
/* 803F590C  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F5910  FC 07 00 32 */	fmul f0, f7, f0
/* 803F5914  FC 05 00 28 */	fsub f0, f5, f0
/* 803F5918  FC 42 00 32 */	fmul f2, f2, f0
/* 803F591C  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F5920  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F5924  FC 07 00 32 */	fmul f0, f7, f0
/* 803F5928  FC 05 00 28 */	fsub f0, f5, f0
/* 803F592C  FC 42 00 32 */	fmul f2, f2, f0
/* 803F5930  FC 02 00 B2 */	fmul f0, f2, f2
/* 803F5934  FC 46 00 B2 */	fmul f2, f6, f2
/* 803F5938  FC 07 00 32 */	fmul f0, f7, f0
/* 803F593C  FC 05 00 28 */	fsub f0, f5, f0
/* 803F5940  FC 02 00 32 */	fmul f0, f2, f0
/* 803F5944  FC 07 00 32 */	fmul f0, f7, f0
/* 803F5948  FC 00 00 18 */	frsp f0, f0
/* 803F594C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F5950  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F5954  EC 41 00 28 */	fsubs f2, f1, f0
/* 803F5958  4B FC 58 59 */	bl add_calc
/* 803F595C  3C 60 81 17 */	lis r3, S_navigate@ha /* 0x81171588@ha */
/* 803F5960  38 83 15 88 */	addi r4, r3, S_navigate@l /* 0x81171588@l */
/* 803F5964  A8 64 00 04 */	lha r3, 4(r4)
/* 803F5968  38 63 FF FF */	addi r3, r3, -1
/* 803F596C  7C 60 07 35 */	extsh. r0, r3
/* 803F5970  B0 64 00 04 */	sth r3, 4(r4)
/* 803F5974  41 82 00 20 */	beq lbl_803F5994
/* 803F5978  80 1E 1D F8 */	lwz r0, 0x1df8(r30)
/* 803F597C  2C 00 00 00 */	cmpwi r0, 0
/* 803F5980  40 82 00 14 */	bne lbl_803F5994
/* 803F5984  4B FC 9D 25 */	bl func_803BF6A8
/* 803F5988  4B FC B3 65 */	bl mMsg_Check_MainHide
/* 803F598C  2C 03 00 00 */	cmpwi r3, 0
/* 803F5990  40 82 00 10 */	bne lbl_803F59A0
lbl_803F5994:
/* 803F5994  88 7F 00 06 */	lbz r3, 6(r31)
/* 803F5998  38 03 00 01 */	addi r0, r3, 1
/* 803F599C  98 1F 00 06 */	stb r0, 6(r31)
lbl_803F59A0:
/* 803F59A0  4B FF 17 C1 */	bl mRmTp_PleaseDrawLightSwitch
/* 803F59A4  2C 03 00 00 */	cmpwi r3, 0
/* 803F59A8  41 82 00 10 */	beq lbl_803F59B8
/* 803F59AC  38 00 00 02 */	li r0, 2
/* 803F59B0  98 1F 00 07 */	stb r0, 7(r31)
/* 803F59B4  48 00 01 04 */	b lbl_803F5AB8
lbl_803F59B8:
/* 803F59B8  38 00 00 01 */	li r0, 1
/* 803F59BC  98 1F 00 07 */	stb r0, 7(r31)
/* 803F59C0  48 00 00 F8 */	b lbl_803F5AB8
lbl_803F59C4:
/* 803F59C4  3C 60 80 64 */	lis r3, lit_689@ha /* 0x806433C4@ha */
/* 803F59C8  3C 80 80 64 */	lis r4, lit_542@ha /* 0x80643324@ha */
/* 803F59CC  38 A3 33 C4 */	addi r5, r3, lit_689@l /* 0x806433C4@l */
/* 803F59D0  C8 E4 33 24 */	lfd f7, lit_542@l(r4)  /* 0x80643324@l */
/* 803F59D4  C9 05 00 00 */	lfd f8, 0(r5)
/* 803F59D8  3C 60 80 64 */	lis r3, lit_543@ha /* 0x8064332C@ha */
/* 803F59DC  39 03 33 2C */	addi r8, r3, lit_543@l /* 0x8064332C@l */
/* 803F59E0  3C A0 80 64 */	lis r5, data_8064331C@ha /* 0x8064331C@ha */
/* 803F59E4  FC 20 40 34 */	frsqrte f1, f8
/* 803F59E8  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F59EC  38 C3 33 34 */	addi r6, r3, lit_544@l /* 0x80643334@l */
/* 803F59F0  C8 C8 00 00 */	lfd f6, 0(r8)
/* 803F59F4  3C 80 80 64 */	lis r4, lit_548@ha /* 0x80643344@ha */
/* 803F59F8  38 E5 33 1C */	addi r7, r5, data_8064331C@l /* 0x8064331C@l */
/* 803F59FC  FC 01 00 72 */	fmul f0, f1, f1
/* 803F5A00  38 A4 33 44 */	addi r5, r4, lit_548@l /* 0x80643344@l */
/* 803F5A04  3C 60 80 64 */	lis r3, lit_549@ha /* 0x80643348@ha */
/* 803F5A08  C0 65 00 00 */	lfs f3, 0(r5)
/* 803F5A0C  38 83 33 48 */	addi r4, r3, lit_549@l /* 0x80643348@l */
/* 803F5A10  FC A7 00 72 */	fmul f5, f7, f1
/* 803F5A14  FC 48 00 32 */	fmul f2, f8, f0
/* 803F5A18  C0 06 00 00 */	lfs f0, 0(r6)
/* 803F5A1C  C0 27 00 00 */	lfs f1, 0(r7)
/* 803F5A20  7F E3 FB 78 */	mr r3, r31
/* 803F5A24  C0 84 00 00 */	lfs f4, 0(r4)
/* 803F5A28  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5A2C  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F5A30  FC 45 01 72 */	fmul f2, f5, f5
/* 803F5A34  FC A7 01 72 */	fmul f5, f7, f5
/* 803F5A38  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5A3C  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5A40  FC A5 00 B2 */	fmul f5, f5, f2
/* 803F5A44  FC 45 01 72 */	fmul f2, f5, f5
/* 803F5A48  FC A7 01 72 */	fmul f5, f7, f5
/* 803F5A4C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5A50  FC 46 10 28 */	fsub f2, f6, f2
/* 803F5A54  FC 45 00 B2 */	fmul f2, f5, f2
/* 803F5A58  FC 48 00 B2 */	fmul f2, f8, f2
/* 803F5A5C  FC 40 10 18 */	frsp f2, f2
/* 803F5A60  D0 41 00 08 */	stfs f2, 8(r1)
/* 803F5A64  C0 41 00 08 */	lfs f2, 8(r1)
/* 803F5A68  EC 40 10 28 */	fsubs f2, f0, f2
/* 803F5A6C  4B FC 57 45 */	bl add_calc
/* 803F5A70  3C 80 81 17 */	lis r4, S_navigate@ha /* 0x81171588@ha */
/* 803F5A74  3C 60 80 64 */	lis r3, lit_691@ha /* 0x806433D0@ha */
/* 803F5A78  C0 24 15 88 */	lfs f1, S_navigate@l(r4)  /* 0x81171588@l */
/* 803F5A7C  C0 03 33 D0 */	lfs f0, lit_691@l(r3)  /* 0x806433D0@l */
/* 803F5A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F5A84  40 80 00 14 */	bge lbl_803F5A98
/* 803F5A88  88 7F 00 06 */	lbz r3, 6(r31)
/* 803F5A8C  38 03 00 01 */	addi r0, r3, 1
/* 803F5A90  98 1F 00 06 */	stb r0, 6(r31)
/* 803F5A94  48 00 00 24 */	b lbl_803F5AB8
lbl_803F5A98:
/* 803F5A98  4B FF 16 C9 */	bl mRmTp_PleaseDrawLightSwitch
/* 803F5A9C  2C 03 00 00 */	cmpwi r3, 0
/* 803F5AA0  41 82 00 10 */	beq lbl_803F5AB0
/* 803F5AA4  38 00 00 02 */	li r0, 2
/* 803F5AA8  98 1F 00 07 */	stb r0, 7(r31)
/* 803F5AAC  48 00 00 0C */	b lbl_803F5AB8
lbl_803F5AB0:
/* 803F5AB0  38 00 00 01 */	li r0, 1
/* 803F5AB4  98 1F 00 07 */	stb r0, 7(r31)
lbl_803F5AB8:
/* 803F5AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F5ABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F5AC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F5AC4  7C 08 03 A6 */	mtlr r0
/* 803F5AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 803F5ACC  4E 80 00 20 */	blr 
