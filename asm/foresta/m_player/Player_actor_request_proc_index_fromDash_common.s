lbl_804E77A0:
/* 804E77A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E77A4  7C 08 02 A6 */	mflr r0
/* 804E77A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E77AC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E77B0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E77B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E77B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E77BC  7C 7E 1B 78 */	mr r30, r3
/* 804E77C0  7C 9F 23 78 */	mr r31, r4
/* 804E77C4  4B EB 36 F5 */	bl mEv_CheckTitleDemo
/* 804E77C8  7C 60 00 34 */	cntlzw r0, r3
/* 804E77CC  38 60 00 01 */	li r3, 1
/* 804E77D0  5C 65 07 FE */	rlwnm r5, r3, r0, 0x1f, 0x1f
/* 804E77D4  7F E4 FB 78 */	mr r4, r31
/* 804E77D8  7F C3 F3 78 */	mr r3, r30
/* 804E77DC  4B FF 22 C1 */	bl Player_actor_Set_ScrollDemo_forWade
/* 804E77E0  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 804E77E4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804E77E8  40 82 00 20 */	bne lbl_804E7808
/* 804E77EC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E77F0  7F E3 FB 78 */	mr r3, r31
/* 804E77F4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E77F8  38 80 00 01 */	li r4, 1
/* 804E77FC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E7800  38 A0 00 01 */	li r5, 1
/* 804E7804  48 00 11 A9 */	bl func_804E89AC
lbl_804E7808:
/* 804E7808  7F E3 FB 78 */	mr r3, r31
/* 804E780C  38 80 00 04 */	li r4, 4
/* 804E7810  4B FF 1C D9 */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804E7814  7F E3 FB 78 */	mr r3, r31
/* 804E7818  4B FE CD E1 */	bl Player_actor_CheckController_forNet
/* 804E781C  2C 03 00 00 */	cmpwi r3, 0
/* 804E7820  41 82 00 10 */	beq lbl_804E7830
/* 804E7824  7F E3 FB 78 */	mr r3, r31
/* 804E7828  38 80 00 04 */	li r4, 4
/* 804E782C  48 00 A2 0D */	bl func_804F1A38
lbl_804E7830:
/* 804E7830  7F E3 FB 78 */	mr r3, r31
/* 804E7834  4B FE CE 41 */	bl Player_actor_CheckController_forRod
/* 804E7838  2C 03 00 00 */	cmpwi r3, 0
/* 804E783C  41 82 00 10 */	beq lbl_804E784C
/* 804E7840  7F E3 FB 78 */	mr r3, r31
/* 804E7844  38 80 00 04 */	li r4, 4
/* 804E7848  48 00 D3 A1 */	bl func_804F4BE8
lbl_804E784C:
/* 804E784C  7F E3 FB 78 */	mr r3, r31
/* 804E7850  38 80 00 04 */	li r4, 4
/* 804E7854  4B FF 2D C5 */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804E7858  7F E3 FB 78 */	mr r3, r31
/* 804E785C  38 80 00 04 */	li r4, 4
/* 804E7860  4B FF 1E 41 */	bl Player_actor_CheckAndRequest_main_umbrella_all
/* 804E7864  7F E3 FB 78 */	mr r3, r31
/* 804E7868  38 80 00 01 */	li r4, 1
/* 804E786C  38 A0 00 01 */	li r5, 1
/* 804E7870  38 C0 00 04 */	li r6, 4
/* 804E7874  4B FF 1E 91 */	bl Player_actor_CheckAndRequest_main_fan_all
/* 804E7878  7F E3 FB 78 */	mr r3, r31
/* 804E787C  4B FF 4C 91 */	bl Player_actor_CheckAndRequest_main_shake_tree_all
/* 804E7880  7F E3 FB 78 */	mr r3, r31
/* 804E7884  4B FF 65 1D */	bl Player_actor_CheckAndRequest_main_pickup_all
/* 804E7888  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 804E788C  3C 60 80 65 */	lis r3, lit_7897@ha /* 0x80648378@ha */
/* 804E7890  38 83 83 78 */	addi r4, r3, lit_7897@l /* 0x80648378@l */
/* 804E7894  7F C3 F3 78 */	mr r3, r30
/* 804E7898  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E789C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804E78A0  EF E1 00 24 */	fdivs f31, f1, f0
/* 804E78A4  4B FE FA 75 */	bl Player_actor_Get_DiffWorldAngleToControllerAngle
/* 804E78A8  2C 03 47 1C */	cmpwi r3, 0x471c
/* 804E78AC  41 80 00 1C */	blt lbl_804E78C8
/* 804E78B0  7F E3 FB 78 */	mr r3, r31
/* 804E78B4  4B FE FA 21 */	bl Player_actor_Get_ControllerAngle
/* 804E78B8  7C 64 1B 78 */	mr r4, r3
/* 804E78BC  7F E3 FB 78 */	mr r3, r31
/* 804E78C0  38 A0 00 03 */	li r5, 3
/* 804E78C4  48 00 0C AD */	bl Player_actor_request_main_turn_dash_all
lbl_804E78C8:
/* 804E78C8  3C 60 80 65 */	lis r3, lit_7853@ha /* 0x80648370@ha */
/* 804E78CC  C0 03 83 70 */	lfs f0, lit_7853@l(r3)  /* 0x80648370@l */
/* 804E78D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E78D4  40 80 00 20 */	bge lbl_804E78F4
/* 804E78D8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E78DC  7F E3 FB 78 */	mr r3, r31
/* 804E78E0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E78E4  38 80 00 00 */	li r4, 0
/* 804E78E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E78EC  38 A0 00 01 */	li r5, 1
/* 804E78F0  4B FF F3 19 */	bl func_804E6C08
lbl_804E78F4:
/* 804E78F4  4B EB 35 C5 */	bl mEv_CheckTitleDemo
/* 804E78F8  2C 03 00 00 */	cmpwi r3, 0
/* 804E78FC  41 81 00 A0 */	bgt lbl_804E799C
/* 804E7900  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7904  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7908  3C 63 00 02 */	addis r3, r3, 2
/* 804E790C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804E7910  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804E7914  28 00 00 03 */	cmplwi r0, 3
/* 804E7918  40 82 00 84 */	bne lbl_804E799C
/* 804E791C  7F C3 F3 78 */	mr r3, r30
/* 804E7920  4B FF FD 41 */	bl Player_actor_Check_FlatPlace
/* 804E7924  2C 03 00 00 */	cmpwi r3, 0
/* 804E7928  41 82 00 74 */	beq lbl_804E799C
/* 804E792C  3C 80 80 65 */	lis r4, lit_7783@ha /* 0x80648364@ha */
/* 804E7930  3C 60 80 65 */	lis r3, lit_8144@ha /* 0x806483E0@ha */
/* 804E7934  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 804E7938  C0 24 83 64 */	lfs f1, lit_7783@l(r4)  /* 0x80648364@l */
/* 804E793C  C0 03 83 E0 */	lfs f0, lit_8144@l(r3)  /* 0x806483E0@l */
/* 804E7940  EC 22 08 24 */	fdivs f1, f2, f1
/* 804E7944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7948  4C 41 13 82 */	cror 2, 1, 2
/* 804E794C  40 82 00 50 */	bne lbl_804E799C
/* 804E7950  4B B7 53 A5 */	bl fqrand
/* 804E7954  3C 60 80 64 */	lis r3, lit_6211@ha /* 0x80647DF0@ha */
/* 804E7958  3C 80 80 65 */	lis r4, lit_6385@ha /* 0x8064806C@ha */
/* 804E795C  38 A3 7D F0 */	addi r5, r3, lit_6211@l /* 0x80647DF0@l */
/* 804E7960  C0 04 80 6C */	lfs f0, lit_6385@l(r4)  /* 0x8064806C@l */
/* 804E7964  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E7968  38 60 02 58 */	li r3, 0x258
/* 804E796C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804E7970  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E7974  FC 00 00 1E */	fctiwz f0, f0
/* 804E7978  D8 01 00 08 */	stfd f0, 8(r1)
/* 804E797C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804E7980  7C 04 1B D6 */	divw r0, r4, r3
/* 804E7984  7C 00 19 D6 */	mullw r0, r0, r3
/* 804E7988  7C 00 20 51 */	subf. r0, r0, r4
/* 804E798C  40 82 00 10 */	bne lbl_804E799C
/* 804E7990  7F E3 FB 78 */	mr r3, r31
/* 804E7994  38 80 00 06 */	li r4, 6
/* 804E7998  48 00 00 E9 */	bl func_804E7A80
lbl_804E799C:
/* 804E799C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E79A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E79A4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E79A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E79AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E79B0  7C 08 03 A6 */	mtlr r0
/* 804E79B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804E79B8  4E 80 00 20 */	blr 
