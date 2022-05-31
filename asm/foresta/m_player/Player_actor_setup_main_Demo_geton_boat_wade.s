lbl_8050783C:
/* 8050783C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80507840  7C 08 02 A6 */	mflr r0
/* 80507844  90 01 00 44 */	stw r0, 0x44(r1)
/* 80507848  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8050784C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80507850  39 61 00 30 */	addi r11, r1, 0x30
/* 80507854  4B B9 36 7D */	bl func_8009AED0
/* 80507858  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 8050785C  7C 7D 1B 78 */	mr r29, r3
/* 80507860  38 C5 83 54 */	addi r6, r5, lit_7381@l /* 0x80648354@l */
/* 80507864  7C 9E 23 78 */	mr r30, r4
/* 80507868  83 83 0D 60 */	lwz r28, 0xd60(r3)
/* 8050786C  3B FD 00 28 */	addi r31, r29, 0x28
/* 80507870  C3 E3 0D 64 */	lfs f31, 0xd64(r3)
/* 80507874  38 A1 00 0C */	addi r5, r1, 0xc
/* 80507878  C0 26 00 00 */	lfs f1, 0(r6)
/* 8050787C  38 C1 00 08 */	addi r6, r1, 8
/* 80507880  38 80 00 88 */	li r4, 0x88
/* 80507884  4B FD 26 DD */	bl Player_actor_SetupItem_Base1
/* 80507888  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 8050788C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80507890  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80507894  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80507898  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050789C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 805078A0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 805078A4  7F A3 EB 78 */	mr r3, r29
/* 805078A8  FC 40 08 90 */	fmr f2, f1
/* 805078AC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805078B0  80 E1 00 08 */	lwz r7, 8(r1)
/* 805078B4  7F C4 F3 78 */	mr r4, r30
/* 805078B8  38 A0 00 88 */	li r5, 0x88
/* 805078BC  4B FC EE 3D */	bl Player_actor_InitAnimation_Base1
/* 805078C0  93 9D 0D 18 */	stw r28, 0xd18(r29)
/* 805078C4  FC 20 F8 90 */	fmr f1, f31
/* 805078C8  7F E3 FB 78 */	mr r3, r31
/* 805078CC  7F 85 E3 78 */	mr r5, r28
/* 805078D0  80 DF 00 00 */	lwz r6, 0(r31)
/* 805078D4  38 9D 0D 28 */	addi r4, r29, 0xd28
/* 805078D8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805078DC  90 DD 0D 1C */	stw r6, 0xd1c(r29)
/* 805078E0  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 805078E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 805078E8  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 805078EC  4B FD 5B F9 */	bl Player_actor_Culc_wade_end_pos
/* 805078F0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 805078F4  7F A3 EB 78 */	mr r3, r29
/* 805078F8  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 805078FC  7F C4 F3 78 */	mr r4, r30
/* 80507900  C0 05 00 00 */	lfs f0, 0(r5)
/* 80507904  D0 1D 0D 34 */	stfs f0, 0xd34(r29)
/* 80507908  4B FC DF F1 */	bl Player_actor_setup_main_Base
/* 8050790C  80 DD 0D 28 */	lwz r6, 0xd28(r29)
/* 80507910  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 80507914  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 80507918  38 81 00 10 */	addi r4, r1, 0x10
/* 8050791C  C0 23 6A 18 */	lfs f1, lit_1076@l(r3)  /* 0x80646A18@l */
/* 80507920  7F C3 F3 78 */	mr r3, r30
/* 80507924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507928  38 A0 00 09 */	li r5, 9
/* 8050792C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80507930  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80507934  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 80507938  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050793C  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 80507940  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80507944  EC 02 00 28 */	fsubs f0, f2, f0
/* 80507948  EC 03 00 2A */	fadds f0, f3, f0
/* 8050794C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80507950  4B E7 7B 65 */	bl Camera2_request_main_wade
/* 80507954  7F A3 EB 78 */	mr r3, r29
/* 80507958  7F C4 F3 78 */	mr r4, r30
/* 8050795C  4B FD 84 A5 */	bl Player_actor_setup_main_Demo_geton_boat_wade_other_func2
/* 80507960  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80507964  39 61 00 30 */	addi r11, r1, 0x30
/* 80507968  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8050796C  4B B9 35 B1 */	bl func_8009AF1C
/* 80507970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80507974  7C 08 03 A6 */	mtlr r0
/* 80507978  38 21 00 40 */	addi r1, r1, 0x40
/* 8050797C  4E 80 00 20 */	blr 
