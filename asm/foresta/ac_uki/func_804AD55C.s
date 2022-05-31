lbl_804AD55C:
/* 804AD55C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD560  7C 08 02 A6 */	mflr r0
/* 804AD564  3D 00 80 64 */	lis r8, data_80645F24@ha /* 0x80645F24@ha */
/* 804AD568  3C C0 80 64 */	lis r6, lit_436@ha /* 0x80645F28@ha */
/* 804AD56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD570  3C A0 80 64 */	lis r5, lit_437@ha /* 0x80645F2C@ha */
/* 804AD574  3C E0 80 37 */	lis r7, mAc_ActorShadowEllipse@ha /* 0x80376F88@ha */
/* 804AD578  C0 28 5F 24 */	lfs f1, data_80645F24@l(r8)  /* 0x80645F24@l */
/* 804AD57C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AD580  38 07 6F 88 */	addi r0, r7, mAc_ActorShadowEllipse@l /* 0x80376F88@l */
/* 804AD584  C0 46 5F 28 */	lfs f2, lit_436@l(r6)  /* 0x80645F28@l */
/* 804AD588  7C 7F 1B 78 */	mr r31, r3
/* 804AD58C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AD590  7C 9E 23 78 */	mr r30, r4
/* 804AD594  C0 65 5F 2C */	lfs f3, lit_437@l(r5)  /* 0x80645F2C@l */
/* 804AD598  7C 04 03 78 */	mr r4, r0
/* 804AD59C  4B EC 6E 55 */	bl Shape_Info_init
/* 804AD5A0  38 00 00 00 */	li r0, 0
/* 804AD5A4  7F C3 F3 78 */	mr r3, r30
/* 804AD5A8  98 1F 01 08 */	stb r0, 0x108(r31)
/* 804AD5AC  38 9F 01 78 */	addi r4, r31, 0x178
/* 804AD5B0  4B EE 70 69 */	bl ClObjPipe_ct
/* 804AD5B4  3C 80 80 69 */	lis r4, aUKI_CoInfoData@ha /* 0x8068F77C@ha */
/* 804AD5B8  7F C3 F3 78 */	mr r3, r30
/* 804AD5BC  38 C4 F7 7C */	addi r6, r4, aUKI_CoInfoData@l /* 0x8068F77C@l */
/* 804AD5C0  7F E5 FB 78 */	mr r5, r31
/* 804AD5C4  38 9F 01 78 */	addi r4, r31, 0x178
/* 804AD5C8  4B EE 70 E9 */	bl ClObjPipe_set5
/* 804AD5CC  3C 80 80 69 */	lis r4, aUKI_StatusData@ha /* 0x8068F78C@ha */
/* 804AD5D0  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 804AD5D4  38 84 F7 8C */	addi r4, r4, aUKI_StatusData@l /* 0x8068F78C@l */
/* 804AD5D8  4B EE 83 F1 */	bl CollisionCheck_Status_set3
/* 804AD5DC  3C 60 80 64 */	lis r3, lit_438@ha /* 0x80645F30@ha */
/* 804AD5E0  3C 80 80 64 */	lis r4, lit_439@ha /* 0x80645F34@ha */
/* 804AD5E4  38 A3 5F 30 */	addi r5, r3, lit_438@l /* 0x80645F30@l */
/* 804AD5E8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804AD5EC  38 C4 5F 34 */	addi r6, r4, lit_439@l /* 0x80645F34@l */
/* 804AD5F0  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804AD5F4  C0 26 00 00 */	lfs f1, 0(r6)
/* 804AD5F8  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 804AD5FC  38 A3 5F 24 */	addi r5, r3, data_80645F24@l /* 0x80645F24@l */
/* 804AD600  3C 60 80 66 */	lis r3, MtxF_clear@ha /* 0x8065F8B0@ha */
/* 804AD604  C0 05 00 00 */	lfs f0, 0(r5)
/* 804AD608  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 804AD60C  38 83 F8 B0 */	addi r4, r3, MtxF_clear@l /* 0x8065F8B0@l */
/* 804AD610  38 7F 01 98 */	addi r3, r31, 0x198
/* 804AD614  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804AD618  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 804AD61C  4B F5 FF 61 */	bl Matrix_copy_MtxF
/* 804AD620  3C 60 80 64 */	lis r3, lit_440@ha /* 0x80645F38@ha */
/* 804AD624  3C 80 80 4B */	lis r4, aUKI_set_value@ha /* 0x804AD74C@ha */
/* 804AD628  38 A3 5F 38 */	addi r5, r3, lit_440@l /* 0x80645F38@l */
/* 804AD62C  3C 60 80 4B */	lis r3, aUKI_get_fish_type@ha /* 0x804AD788@ha */
/* 804AD630  C0 05 00 00 */	lfs f0, 0(r5)
/* 804AD634  39 04 D7 4C */	addi r8, r4, aUKI_set_value@l /* 0x804AD74C@l */
/* 804AD638  38 E3 D7 88 */	addi r7, r3, aUKI_get_fish_type@l /* 0x804AD788@l */
/* 804AD63C  38 C0 00 00 */	li r6, 0
/* 804AD640  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804AD644  38 A0 00 02 */	li r5, 2
/* 804AD648  38 80 FF FF */	li r4, -1
/* 804AD64C  38 60 00 FF */	li r3, 0xff
/* 804AD650  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804AD654  38 00 00 01 */	li r0, 1
/* 804AD658  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804AD65C  81 5F 02 18 */	lwz r10, 0x218(r31)
/* 804AD660  81 3F 02 1C */	lwz r9, 0x21c(r31)
/* 804AD664  91 5F 00 28 */	stw r10, 0x28(r31)
/* 804AD668  91 3F 00 2C */	stw r9, 0x2c(r31)
/* 804AD66C  81 3F 02 20 */	lwz r9, 0x220(r31)
/* 804AD670  91 3F 00 30 */	stw r9, 0x30(r31)
/* 804AD674  91 1F 02 10 */	stw r8, 0x210(r31)
/* 804AD678  90 FF 02 14 */	stw r7, 0x214(r31)
/* 804AD67C  90 DF 01 74 */	stw r6, 0x174(r31)
/* 804AD680  B0 BF 02 62 */	sth r5, 0x262(r31)
/* 804AD684  B0 DF 02 64 */	sth r6, 0x264(r31)
/* 804AD688  B0 DF 02 66 */	sth r6, 0x266(r31)
/* 804AD68C  98 DF 02 60 */	stb r6, 0x260(r31)
/* 804AD690  98 DF 02 61 */	stb r6, 0x261(r31)
/* 804AD694  90 9F 02 90 */	stw r4, 0x290(r31)
/* 804AD698  90 7F 02 98 */	stw r3, 0x298(r31)
/* 804AD69C  90 7F 02 9C */	stw r3, 0x29c(r31)
/* 804AD6A0  90 7F 02 A0 */	stw r3, 0x2a0(r31)
/* 804AD6A4  90 DF 02 88 */	stw r6, 0x288(r31)
/* 804AD6A8  90 DF 02 8C */	stw r6, 0x28c(r31)
/* 804AD6AC  90 1F 02 38 */	stw r0, 0x238(r31)
/* 804AD6B0  B0 DF 01 D8 */	sth r6, 0x1d8(r31)
/* 804AD6B4  98 DF 02 B4 */	stb r6, 0x2b4(r31)
/* 804AD6B8  98 DF 02 B5 */	stb r6, 0x2b5(r31)
/* 804AD6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD6C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AD6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD6C8  7C 08 03 A6 */	mtlr r0
/* 804AD6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD6D0  4E 80 00 20 */	blr 
