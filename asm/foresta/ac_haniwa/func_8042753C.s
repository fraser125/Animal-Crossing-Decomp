lbl_8042753C:
/* 8042753C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427540  7C 08 02 A6 */	mflr r0
/* 80427544  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427548  39 61 00 20 */	addi r11, r1, 0x20
/* 8042754C  4B C7 39 89 */	bl func_8009AED4
/* 80427550  3C A0 80 8A */	lis r5, cKF_bs_r_hnw@ha /* 0x8089B044@ha */
/* 80427554  7C 7F 1B 78 */	mr r31, r3
/* 80427558  38 05 B0 44 */	addi r0, r5, cKF_bs_r_hnw@l /* 0x8089B044@l */
/* 8042755C  7C 9D 23 78 */	mr r29, r4
/* 80427560  7C 04 03 78 */	mr r4, r0
/* 80427564  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80427568  38 DF 02 14 */	addi r6, r31, 0x214
/* 8042756C  38 FF 02 44 */	addi r7, r31, 0x244
/* 80427570  38 A0 00 00 */	li r5, 0
/* 80427574  4B F4 95 21 */	bl cKF_SkeletonInfo_R_ct
/* 80427578  3B DF 01 F0 */	addi r30, r31, 0x1f0
/* 8042757C  7F A3 EB 78 */	mr r3, r29
/* 80427580  7F C4 F3 78 */	mr r4, r30
/* 80427584  4B F6 D0 95 */	bl ClObjPipe_ct
/* 80427588  3C 80 80 68 */	lis r4, AcHaniwaCoInfoData@ha /* 0x80683C2C@ha */
/* 8042758C  7F A3 EB 78 */	mr r3, r29
/* 80427590  38 C4 3C 2C */	addi r6, r4, AcHaniwaCoInfoData@l /* 0x80683C2C@l */
/* 80427594  7F E5 FB 78 */	mr r5, r31
/* 80427598  7F C4 F3 78 */	mr r4, r30
/* 8042759C  4B F6 D1 15 */	bl ClObjPipe_set5
/* 804275A0  3C 80 80 68 */	lis r4, AcHaniwaStatusData@ha /* 0x80683C3C@ha */
/* 804275A4  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 804275A8  38 84 3C 3C */	addi r4, r4, AcHaniwaStatusData@l /* 0x80683C3C@l */
/* 804275AC  4B F6 E4 1D */	bl CollisionCheck_Status_set3
/* 804275B0  A8 9F 00 26 */	lha r4, 0x26(r31)
/* 804275B4  3C 60 80 64 */	lis r3, data_80643FCC@ha /* 0x80643FCC@ha */
/* 804275B8  C0 03 3F CC */	lfs f0, data_80643FCC@l(r3)  /* 0x80643FCC@l */
/* 804275BC  38 00 00 02 */	li r0, 2
/* 804275C0  1C 84 00 5C */	mulli r4, r4, 0x5c
/* 804275C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804275C8  38 64 01 14 */	addi r3, r4, 0x114
/* 804275CC  7C 7D 18 2E */	lwzx r3, r29, r3
/* 804275D0  90 7F 02 10 */	stw r3, 0x210(r31)
/* 804275D4  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 804275D8  A0 7F 00 06 */	lhz r3, 6(r31)
/* 804275DC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 804275E0  38 03 5F FC */	addi r0, r3, 0x5ffc
/* 804275E4  98 1F 02 83 */	stb r0, 0x283(r31)
/* 804275E8  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 804275EC  4B C7 39 35 */	bl func_8009AF20
/* 804275F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804275F4  7C 08 03 A6 */	mtlr r0
/* 804275F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804275FC  4E 80 00 20 */	blr 
