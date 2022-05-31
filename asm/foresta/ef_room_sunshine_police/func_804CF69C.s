lbl_804CF69C:
/* 804CF69C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CF6A0  7C 08 02 A6 */	mflr r0
/* 804CF6A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CF6A8  38 00 00 00 */	li r0, 0
/* 804CF6AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804CF6B0  7C 7F 1B 78 */	mr r31, r3
/* 804CF6B4  98 03 01 74 */	stb r0, 0x174(r3)
/* 804CF6B8  A8 03 00 24 */	lha r0, 0x24(r3)
/* 804CF6BC  2C 00 00 00 */	cmpwi r0, 0
/* 804CF6C0  40 82 00 20 */	bne lbl_804CF6E0
/* 804CF6C4  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_PoliceL_actor_move@ha /* 0x804CFA8C@ha */
/* 804CF6C8  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_PoliceL_actor_draw@ha /* 0x804CFD54@ha */
/* 804CF6CC  38 04 FA 8C */	addi r0, r4, Ef_Room_Sunshine_PoliceL_actor_move@l /* 0x804CFA8C@l */
/* 804CF6D0  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CF6D4  38 03 FD 54 */	addi r0, r3, Ef_Room_Sunshine_PoliceL_actor_draw@l /* 0x804CFD54@l */
/* 804CF6D8  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CF6DC  48 00 00 18 */	b lbl_804CF6F4
lbl_804CF6E0:
/* 804CF6E0  3C 60 80 64 */	lis r3, data_80646334@ha /* 0x80646334@ha */
/* 804CF6E4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CF6E8  C0 03 63 34 */	lfs f0, data_80646334@l(r3)  /* 0x80646334@l */
/* 804CF6EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CF6F0  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804CF6F4:
/* 804CF6F4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CF6F8  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CF6FC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CF700  C0 23 63 38 */	lfs f1, lit_391@l(r3)  /* 0x80646338@l */
/* 804CF704  38 61 00 20 */	addi r3, r1, 0x20
/* 804CF708  90 81 00 20 */	stw r4, 0x20(r1)
/* 804CF70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CF710  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CF714  90 01 00 28 */	stw r0, 0x28(r1)
/* 804CF718  4B EC 01 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CF71C  3C 60 80 64 */	lis r3, lit_392@ha /* 0x8064633C@ha */
/* 804CF720  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CF724  C0 03 63 3C */	lfs f0, lit_392@l(r3)  /* 0x8064633C@l */
/* 804CF728  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804CF72C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804CF730  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804CF734  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804CF738  2C 00 00 03 */	cmpwi r0, 3
/* 804CF73C  41 82 00 A8 */	beq lbl_804CF7E4
/* 804CF740  40 80 01 14 */	bge lbl_804CF854
/* 804CF744  2C 00 00 02 */	cmpwi r0, 2
/* 804CF748  40 80 00 08 */	bge lbl_804CF750
/* 804CF74C  48 00 01 08 */	b lbl_804CF854
lbl_804CF750:
/* 804CF750  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_PoliceL_actor_move@ha /* 0x804CFA8C@ha */
/* 804CF754  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_PoliceL_actor_draw@ha /* 0x804CFD54@ha */
/* 804CF758  38 03 FA 8C */	addi r0, r3, Ef_Room_Sunshine_PoliceL_actor_move@l /* 0x804CFA8C@l */
/* 804CF75C  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646340@ha */
/* 804CF760  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804CF764  38 04 FD 54 */	addi r0, r4, Ef_Room_Sunshine_PoliceL_actor_draw@l /* 0x804CFD54@l */
/* 804CF768  38 A3 63 40 */	addi r5, r3, lit_393@l /* 0x80646340@l */
/* 804CF76C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CF770  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804CF774  38 83 63 38 */	addi r4, r3, lit_391@l /* 0x80646338@l */
/* 804CF778  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CF77C  38 61 00 14 */	addi r3, r1, 0x14
/* 804CF780  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CF784  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CF788  EC 02 00 2A */	fadds f0, f2, f0
/* 804CF78C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CF790  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CF794  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CF798  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CF79C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CF7A0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CF7A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CF7A8  4B EC 00 79 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CF7AC  3C 60 80 64 */	lis r3, data_80646334@ha /* 0x80646334@ha */
/* 804CF7B0  3C 80 80 64 */	lis r4, lit_394@ha /* 0x80646344@ha */
/* 804CF7B4  38 A3 63 34 */	addi r5, r3, data_80646334@l /* 0x80646334@l */
/* 804CF7B8  C0 44 63 44 */	lfs f2, lit_394@l(r4)  /* 0x80646344@l */
/* 804CF7BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CF7C0  3C 60 80 64 */	lis r3, lit_395@ha /* 0x80646348@ha */
/* 804CF7C4  EC 20 08 2A */	fadds f1, f0, f1
/* 804CF7C8  C0 03 63 48 */	lfs f0, lit_395@l(r3)  /* 0x80646348@l */
/* 804CF7CC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF7D0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CF7D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CF7D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CF7DC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CF7E0  48 00 00 74 */	b lbl_804CF854
lbl_804CF7E4:
/* 804CF7E4  3C 80 80 64 */	lis r4, lit_393@ha /* 0x80646340@ha */
/* 804CF7E8  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CF7EC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804CF7F0  C0 04 63 40 */	lfs f0, lit_393@l(r4)  /* 0x80646340@l */
/* 804CF7F4  C0 23 63 38 */	lfs f1, lit_391@l(r3)  /* 0x80646338@l */
/* 804CF7F8  38 61 00 08 */	addi r3, r1, 8
/* 804CF7FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 804CF800  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804CF804  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804CF808  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804CF80C  90 81 00 08 */	stw r4, 8(r1)
/* 804CF810  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CF814  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804CF818  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CF81C  4B EC 00 05 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CF820  3C 60 80 64 */	lis r3, data_80646334@ha /* 0x80646334@ha */
/* 804CF824  3C 80 80 64 */	lis r4, lit_394@ha /* 0x80646344@ha */
/* 804CF828  38 A3 63 34 */	addi r5, r3, data_80646334@l /* 0x80646334@l */
/* 804CF82C  C0 44 63 44 */	lfs f2, lit_394@l(r4)  /* 0x80646344@l */
/* 804CF830  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CF834  3C 60 80 64 */	lis r3, lit_395@ha /* 0x80646348@ha */
/* 804CF838  EC 20 08 2A */	fadds f1, f0, f1
/* 804CF83C  C0 03 63 48 */	lfs f0, lit_395@l(r3)  /* 0x80646348@l */
/* 804CF840  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF844  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804CF848  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804CF84C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CF850  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804CF854:
/* 804CF854  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CF858  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804CF85C  7C 08 03 A6 */	mtlr r0
/* 804CF860  38 21 00 40 */	addi r1, r1, 0x40
/* 804CF864  4E 80 00 20 */	blr 
