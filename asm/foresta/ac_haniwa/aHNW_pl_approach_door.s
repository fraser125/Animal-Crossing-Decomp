lbl_80428690:
/* 80428690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428694  7C 08 02 A6 */	mflr r0
/* 80428698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042869C  39 61 00 20 */	addi r11, r1, 0x20
/* 804286A0  4B C7 28 2D */	bl func_8009AECC
/* 804286A4  3C A0 80 68 */	lis r5, data_80683C08@ha /* 0x80683C08@ha */
/* 804286A8  7C 9E 23 78 */	mr r30, r4
/* 804286AC  7C 7D 1B 78 */	mr r29, r3
/* 804286B0  7F C3 F3 78 */	mr r3, r30
/* 804286B4  3B 85 3C 08 */	addi r28, r5, data_80683C08@l /* 0x80683C08@l */
/* 804286B8  4B FB 0F 89 */	bl get_player_actor_withoutCheck
/* 804286BC  A0 9D 02 80 */	lhz r4, 0x280(r29)
/* 804286C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804286C4  38 04 00 01 */	addi r0, r4, 1
/* 804286C8  B0 1D 02 80 */	sth r0, 0x280(r29)
/* 804286CC  41 82 01 18 */	beq lbl_804287E4
/* 804286D0  88 DD 02 83 */	lbz r6, 0x283(r29)
/* 804286D4  38 BC 00 78 */	addi r5, r28, 0x78
/* 804286D8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804286DC  38 9C 00 88 */	addi r4, r28, 0x88
/* 804286E0  54 C0 10 3A */	slwi r0, r6, 2
/* 804286E4  3C 60 80 64 */	lis r3, lit_748@ha /* 0x80643FE0@ha */
/* 804286E8  7C 45 04 2E */	lfsx f2, r5, r0
/* 804286EC  7C 24 04 2E */	lfsx f1, r4, r0
/* 804286F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804286F4  C0 03 3F E0 */	lfs f0, lit_748@l(r3)  /* 0x80643FE0@l */
/* 804286F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804286FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80428700  4C 40 13 82 */	cror 2, 0, 2
/* 80428704  7C 00 00 26 */	mfcr r0
/* 80428708  1C A6 00 18 */	mulli r5, r6, 0x18
/* 8042870C  54 1B 1F FE */	rlwinm r27, r0, 3, 0x1f, 0x1f
/* 80428710  80 1D 02 7C */	lwz r0, 0x27c(r29)
/* 80428714  38 9C 00 98 */	addi r4, r28, 0x98
/* 80428718  1C 7B 00 0C */	mulli r3, r27, 0xc
/* 8042871C  7C 00 D8 00 */	cmpw r0, r27
/* 80428720  7F 85 1A 14 */	add r28, r5, r3
/* 80428724  7F 84 E2 14 */	add r28, r4, r28
/* 80428728  41 82 00 2C */	beq lbl_80428754
/* 8042872C  3C 60 80 64 */	lis r3, lit_749@ha /* 0x80643FE4@ha */
/* 80428730  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80428734  C0 63 3F E4 */	lfs f3, lit_749@l(r3)  /* 0x80643FE4@l */
/* 80428738  7F C3 F3 78 */	mr r3, r30
/* 8042873C  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80428740  38 80 00 00 */	li r4, 0
/* 80428744  4B FB 26 99 */	bl mPlib_request_main_demo_walk_type1
/* 80428748  2C 03 00 00 */	cmpwi r3, 0
/* 8042874C  41 82 00 08 */	beq lbl_80428754
/* 80428750  93 7D 02 7C */	stw r27, 0x27c(r29)
lbl_80428754:
/* 80428754  3C 60 80 64 */	lis r3, lit_749@ha /* 0x80643FE4@ha */
/* 80428758  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8042875C  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80428760  C0 63 3F E4 */	lfs f3, lit_749@l(r3)  /* 0x80643FE4@l */
/* 80428764  4B FB 31 71 */	bl mPlib_Set_goal_player_demo_walk
/* 80428768  A0 1D 02 80 */	lhz r0, 0x280(r29)
/* 8042876C  28 00 00 A0 */	cmplwi r0, 0xa0
/* 80428770  40 81 00 40 */	ble lbl_804287B0
/* 80428774  88 9D 02 83 */	lbz r4, 0x283(r29)
/* 80428778  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8042877C  38 A0 00 01 */	li r5, 1
/* 80428780  38 04 58 00 */	addi r0, r4, 0x5800
/* 80428784  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80428788  4B F4 D5 B9 */	bl Actor_info_fgName_search
/* 8042878C  28 03 00 00 */	cmplwi r3, 0
/* 80428790  41 82 00 54 */	beq lbl_804287E4
/* 80428794  38 00 00 01 */	li r0, 1
/* 80428798  7F C4 F3 78 */	mr r4, r30
/* 8042879C  B0 03 00 38 */	sth r0, 0x38(r3)
/* 804287A0  7F A3 EB 78 */	mr r3, r29
/* 804287A4  38 A0 00 00 */	li r5, 0
/* 804287A8  48 00 02 AD */	bl aHNW_setupAction
/* 804287AC  48 00 00 38 */	b lbl_804287E4
lbl_804287B0:
/* 804287B0  2C 1B 00 01 */	cmpwi r27, 1
/* 804287B4  40 82 00 30 */	bne lbl_804287E4
/* 804287B8  7F 83 E3 78 */	mr r3, r28
/* 804287BC  38 9F 00 28 */	addi r4, r31, 0x28
/* 804287C0  4B F9 28 CD */	bl search_position_distanceXZ
/* 804287C4  3C 60 80 64 */	lis r3, lit_749@ha /* 0x80643FE4@ha */
/* 804287C8  C0 03 3F E4 */	lfs f0, lit_749@l(r3)  /* 0x80643FE4@l */
/* 804287CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804287D0  40 80 00 14 */	bge lbl_804287E4
/* 804287D4  7F A3 EB 78 */	mr r3, r29
/* 804287D8  7F C4 F3 78 */	mr r4, r30
/* 804287DC  38 A0 00 0F */	li r5, 0xf
/* 804287E0  48 00 02 75 */	bl aHNW_setupAction
lbl_804287E4:
/* 804287E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804287E8  4B C7 27 31 */	bl func_8009AF18
/* 804287EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804287F0  7C 08 03 A6 */	mtlr r0
/* 804287F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804287F8  4E 80 00 20 */	blr 
