lbl_804D061C:
/* 804D061C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D0620  7C 08 02 A6 */	mflr r0
/* 804D0624  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D0628  38 00 00 00 */	li r0, 0
/* 804D062C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D0630  7C 7F 1B 78 */	mr r31, r3
/* 804D0634  98 03 01 74 */	stb r0, 0x174(r3)
/* 804D0638  A8 03 00 24 */	lha r0, 0x24(r3)
/* 804D063C  2C 00 00 00 */	cmpwi r0, 0
/* 804D0640  40 82 00 20 */	bne lbl_804D0660
/* 804D0644  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_MuseumL_actor_move@ha /* 0x804D0A0C@ha */
/* 804D0648  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_MuseumL_actor_draw@ha /* 0x804D0D04@ha */
/* 804D064C  38 04 0A 0C */	addi r0, r4, Ef_Room_Sunshine_MuseumL_actor_move@l /* 0x804D0A0C@l */
/* 804D0650  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804D0654  38 03 0D 04 */	addi r0, r3, Ef_Room_Sunshine_MuseumL_actor_draw@l /* 0x804D0D04@l */
/* 804D0658  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804D065C  48 00 00 18 */	b lbl_804D0674
lbl_804D0660:
/* 804D0660  3C 60 80 64 */	lis r3, data_806463CC@ha /* 0x806463CC@ha */
/* 804D0664  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0668  C0 03 63 CC */	lfs f0, data_806463CC@l(r3)  /* 0x806463CC@l */
/* 804D066C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D0670  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804D0674:
/* 804D0674  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804D0678  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D067C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804D0680  C0 23 63 D0 */	lfs f1, lit_391@l(r3)  /* 0x806463D0@l */
/* 804D0684  38 61 00 20 */	addi r3, r1, 0x20
/* 804D0688  90 81 00 20 */	stw r4, 0x20(r1)
/* 804D068C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0690  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804D0694  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D0698  4B EB F1 89 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804D069C  3C 60 80 64 */	lis r3, lit_392@ha /* 0x806463D4@ha */
/* 804D06A0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804D06A4  C0 03 63 D4 */	lfs f0, lit_392@l(r3)  /* 0x806463D4@l */
/* 804D06A8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D06AC  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804D06B0  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804D06B4  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 804D06B8  2C 00 00 03 */	cmpwi r0, 3
/* 804D06BC  41 82 00 A8 */	beq lbl_804D0764
/* 804D06C0  40 80 01 14 */	bge lbl_804D07D4
/* 804D06C4  2C 00 00 02 */	cmpwi r0, 2
/* 804D06C8  40 80 00 08 */	bge lbl_804D06D0
/* 804D06CC  48 00 01 08 */	b lbl_804D07D4
lbl_804D06D0:
/* 804D06D0  3C 60 80 4D */	lis r3, Ef_Room_Sunshine_MuseumL_actor_move@ha /* 0x804D0A0C@ha */
/* 804D06D4  3C 80 80 4D */	lis r4, Ef_Room_Sunshine_MuseumL_actor_draw@ha /* 0x804D0D04@ha */
/* 804D06D8  38 03 0A 0C */	addi r0, r3, Ef_Room_Sunshine_MuseumL_actor_move@l /* 0x804D0A0C@l */
/* 804D06DC  3C 60 80 64 */	lis r3, lit_393@ha /* 0x806463D8@ha */
/* 804D06E0  90 1F 01 64 */	stw r0, 0x164(r31)
/* 804D06E4  38 04 0D 04 */	addi r0, r4, Ef_Room_Sunshine_MuseumL_actor_draw@l /* 0x804D0D04@l */
/* 804D06E8  38 A3 63 D8 */	addi r5, r3, lit_393@l /* 0x806463D8@l */
/* 804D06EC  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D06F0  90 1F 01 68 */	stw r0, 0x168(r31)
/* 804D06F4  38 83 63 D0 */	addi r4, r3, lit_391@l /* 0x806463D0@l */
/* 804D06F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D06FC  38 61 00 14 */	addi r3, r1, 0x14
/* 804D0700  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804D0704  C0 24 00 00 */	lfs f1, 0(r4)
/* 804D0708  EC 02 00 2A */	fadds f0, f2, f0
/* 804D070C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804D0710  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804D0714  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804D0718  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D071C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804D0720  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804D0724  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D0728  4B EB F0 F9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804D072C  3C 60 80 64 */	lis r3, data_806463CC@ha /* 0x806463CC@ha */
/* 804D0730  3C 80 80 64 */	lis r4, lit_394@ha /* 0x806463DC@ha */
/* 804D0734  38 A3 63 CC */	addi r5, r3, data_806463CC@l /* 0x806463CC@l */
/* 804D0738  C0 44 63 DC */	lfs f2, lit_394@l(r4)  /* 0x806463DC@l */
/* 804D073C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D0740  3C 60 80 64 */	lis r3, lit_395@ha /* 0x806463E0@ha */
/* 804D0744  EC 20 08 2A */	fadds f1, f0, f1
/* 804D0748  C0 03 63 E0 */	lfs f0, lit_395@l(r3)  /* 0x806463E0@l */
/* 804D074C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D0750  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804D0754  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D0758  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D075C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804D0760  48 00 00 74 */	b lbl_804D07D4
lbl_804D0764:
/* 804D0764  3C 80 80 64 */	lis r4, lit_393@ha /* 0x806463D8@ha */
/* 804D0768  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D076C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804D0770  C0 04 63 D8 */	lfs f0, lit_393@l(r4)  /* 0x806463D8@l */
/* 804D0774  C0 23 63 D0 */	lfs f1, lit_391@l(r3)  /* 0x806463D0@l */
/* 804D0778  38 61 00 08 */	addi r3, r1, 8
/* 804D077C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804D0780  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804D0784  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804D0788  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804D078C  90 81 00 08 */	stw r4, 8(r1)
/* 804D0790  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D0794  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804D0798  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D079C  4B EB F0 85 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804D07A0  3C 60 80 64 */	lis r3, data_806463CC@ha /* 0x806463CC@ha */
/* 804D07A4  3C 80 80 64 */	lis r4, lit_394@ha /* 0x806463DC@ha */
/* 804D07A8  38 A3 63 CC */	addi r5, r3, data_806463CC@l /* 0x806463CC@l */
/* 804D07AC  C0 44 63 DC */	lfs f2, lit_394@l(r4)  /* 0x806463DC@l */
/* 804D07B0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D07B4  3C 60 80 64 */	lis r3, lit_395@ha /* 0x806463E0@ha */
/* 804D07B8  EC 20 08 2A */	fadds f1, f0, f1
/* 804D07BC  C0 03 63 E0 */	lfs f0, lit_395@l(r3)  /* 0x806463E0@l */
/* 804D07C0  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D07C4  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 804D07C8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D07CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804D07D0  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_804D07D4:
/* 804D07D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D07D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D07DC  7C 08 03 A6 */	mtlr r0
/* 804D07E0  38 21 00 40 */	addi r1, r1, 0x40
/* 804D07E4  4E 80 00 20 */	blr 
