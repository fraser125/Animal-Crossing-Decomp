lbl_805BF6B0:
/* 805BF6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BF6B4  7C 08 02 A6 */	mflr r0
/* 805BF6B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BF6BC  39 61 00 30 */	addi r11, r1, 0x30
/* 805BF6C0  4B AD B8 15 */	bl func_8009AED4
/* 805BF6C4  7C 7D 1B 78 */	mr r29, r3
/* 805BF6C8  7C 9E 23 78 */	mr r30, r4
/* 805BF6CC  38 7D 01 78 */	addi r3, r29, 0x178
/* 805BF6D0  4B DB 19 45 */	bl cKF_SkeletonInfo_R_play
/* 805BF6D4  90 7D 01 74 */	stw r3, 0x174(r29)
/* 805BF6D8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805BF6DC  C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 805BF6E0  FC 00 00 1E */	fctiwz f0, f0
/* 805BF6E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BF6E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BF6EC  90 1D 01 E8 */	stw r0, 0x1e8(r29)
/* 805BF6F0  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805BF6F4  7F E3 FB 78 */	mr r3, r31
/* 805BF6F8  4B E1 9F 49 */	bl get_player_actor_withoutCheck
/* 805BF6FC  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805BF700  7F E3 FB 78 */	mr r3, r31
/* 805BF704  7D 89 03 A6 */	mtctr r12
/* 805BF708  4E 80 04 21 */	bctrl 
/* 805BF70C  7C 03 E8 40 */	cmplw r3, r29
/* 805BF710  40 82 00 28 */	bne lbl_805BF738
/* 805BF714  7F A3 EB 78 */	mr r3, r29
/* 805BF718  7F C4 F3 78 */	mr r4, r30
/* 805BF71C  4B FF F5 71 */	bl func_805BEC8C
/* 805BF720  3C 80 80 6C */	lis r4, aTOU_door_data@ha /* 0x806C714C@ha */
/* 805BF724  7F C3 F3 78 */	mr r3, r30
/* 805BF728  38 84 71 4C */	addi r4, r4, aTOU_door_data@l /* 0x806C714C@l */
/* 805BF72C  38 A0 00 00 */	li r5, 0
/* 805BF730  4B E3 1A 79 */	bl goto_other_scene
/* 805BF734  48 00 00 78 */	b lbl_805BF7AC
lbl_805BF738:
/* 805BF738  81 9D 02 A0 */	lwz r12, 0x2a0(r29)
/* 805BF73C  7F A3 EB 78 */	mr r3, r29
/* 805BF740  7F C4 F3 78 */	mr r4, r30
/* 805BF744  7D 89 03 A6 */	mtctr r12
/* 805BF748  4E 80 04 21 */	bctrl 
/* 805BF74C  4B E2 E4 59 */	bl mSC_LightHouse_In_Check
/* 805BF750  2C 03 00 00 */	cmpwi r3, 0
/* 805BF754  41 82 00 58 */	beq lbl_805BF7AC
/* 805BF758  7F A3 EB 78 */	mr r3, r29
/* 805BF75C  7F C4 F3 78 */	mr r4, r30
/* 805BF760  4B FF F6 39 */	bl aTOU_check_door_pos
/* 805BF764  2C 03 00 00 */	cmpwi r3, 0
/* 805BF768  41 82 00 44 */	beq lbl_805BF7AC
/* 805BF76C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805BF770  3C 60 80 65 */	lis r3, lit_697@ha /* 0x8064AC38@ha */
/* 805BF774  38 83 AC 38 */	addi r4, r3, lit_697@l /* 0x8064AC38@l */
/* 805BF778  7F C3 F3 78 */	mr r3, r30
/* 805BF77C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BF780  7F A7 EB 78 */	mr r7, r29
/* 805BF784  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BF788  38 81 00 08 */	addi r4, r1, 8
/* 805BF78C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 805BF790  38 A0 00 00 */	li r5, 0
/* 805BF794  38 C0 00 01 */	li r6, 1
/* 805BF798  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805BF79C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 805BF7A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BF7A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BF7A8  4B E1 AE E1 */	bl mPlib_request_main_door_type1
lbl_805BF7AC:
/* 805BF7AC  7F A3 EB 78 */	mr r3, r29
/* 805BF7B0  4B FF F7 AD */	bl aTOU_color_ctrl
/* 805BF7B4  39 61 00 30 */	addi r11, r1, 0x30
/* 805BF7B8  4B AD B7 69 */	bl func_8009AF20
/* 805BF7BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BF7C0  7C 08 03 A6 */	mtlr r0
/* 805BF7C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805BF7C8  4E 80 00 20 */	blr 
