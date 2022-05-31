lbl_804FE508:
/* 804FE508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FE50C  7C 08 02 A6 */	mflr r0
/* 804FE510  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FE514  39 61 00 30 */	addi r11, r1, 0x30
/* 804FE518  4B B9 C9 B9 */	bl func_8009AED0
/* 804FE51C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804FE520  7C 7D 1B 78 */	mr r29, r3
/* 804FE524  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804FE528  7C 9E 23 78 */	mr r30, r4
/* 804FE52C  83 83 0D 60 */	lwz r28, 0xd60(r3)
/* 804FE530  3B FD 00 28 */	addi r31, r29, 0x28
/* 804FE534  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FE538  38 C1 00 08 */	addi r6, r1, 8
/* 804FE53C  38 80 00 00 */	li r4, 0
/* 804FE540  4B FD BA 21 */	bl Player_actor_SetupItem_Base1
/* 804FE544  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FE548  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FE54C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FE550  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FE554  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FE558  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FE55C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FE560  7F A3 EB 78 */	mr r3, r29
/* 804FE564  FC 40 08 90 */	fmr f2, f1
/* 804FE568  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FE56C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FE570  7F C4 F3 78 */	mr r4, r30
/* 804FE574  38 A0 00 00 */	li r5, 0
/* 804FE578  4B FD 81 81 */	bl Player_actor_InitAnimation_Base1
/* 804FE57C  93 9D 0D 18 */	stw r28, 0xd18(r29)
/* 804FE580  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804FE584  38 C3 6A 14 */	addi r6, r3, lit_1075@l /* 0x80646A14@l */
/* 804FE588  7F E3 FB 78 */	mr r3, r31
/* 804FE58C  80 FF 00 00 */	lwz r7, 0(r31)
/* 804FE590  7F 85 E3 78 */	mr r5, r28
/* 804FE594  80 1F 00 04 */	lwz r0, 4(r31)
/* 804FE598  38 9D 0D 28 */	addi r4, r29, 0xd28
/* 804FE59C  C0 26 00 00 */	lfs f1, 0(r6)
/* 804FE5A0  90 FD 0D 1C */	stw r7, 0xd1c(r29)
/* 804FE5A4  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804FE5A8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804FE5AC  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 804FE5B0  4B FD EF 35 */	bl Player_actor_Culc_wade_end_pos
/* 804FE5B4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FE5B8  7F A3 EB 78 */	mr r3, r29
/* 804FE5BC  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804FE5C0  7F C4 F3 78 */	mr r4, r30
/* 804FE5C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804FE5C8  D0 1D 0D 34 */	stfs f0, 0xd34(r29)
/* 804FE5CC  4B FD 73 2D */	bl Player_actor_setup_main_Base
/* 804FE5D0  80 DD 0D 28 */	lwz r6, 0xd28(r29)
/* 804FE5D4  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 804FE5D8  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804FE5DC  38 81 00 10 */	addi r4, r1, 0x10
/* 804FE5E0  C0 23 6A 18 */	lfs f1, lit_1076@l(r3)  /* 0x80646A18@l */
/* 804FE5E4  7F C3 F3 78 */	mr r3, r30
/* 804FE5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE5EC  38 A0 00 09 */	li r5, 9
/* 804FE5F0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804FE5F4  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 804FE5F8  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 804FE5FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804FE600  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804FE604  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FE608  EC 02 00 28 */	fsubs f0, f2, f0
/* 804FE60C  EC 03 00 2A */	fadds f0, f3, f0
/* 804FE610  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804FE614  4B E8 0E A1 */	bl Camera2_request_main_wade
/* 804FE618  7F A3 EB 78 */	mr r3, r29
/* 804FE61C  7F C4 F3 78 */	mr r4, r30
/* 804FE620  4B FE 17 85 */	bl Player_actor_setup_main_Demo_wade_other_func2
/* 804FE624  39 61 00 30 */	addi r11, r1, 0x30
/* 804FE628  4B B9 C8 F5 */	bl func_8009AF1C
/* 804FE62C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FE630  7C 08 03 A6 */	mtlr r0
/* 804FE634  38 21 00 30 */	addi r1, r1, 0x30
/* 804FE638  4E 80 00 20 */	blr 
