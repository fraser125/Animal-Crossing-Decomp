lbl_805084F4:
/* 805084F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805084F8  7C 08 02 A6 */	mflr r0
/* 805084FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80508500  39 61 00 30 */	addi r11, r1, 0x30
/* 80508504  4B B9 29 C5 */	bl func_8009AEC8
/* 80508508  7C 7D 1B 78 */	mr r29, r3
/* 8050850C  7C 9E 23 78 */	mr r30, r4
/* 80508510  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 80508514  4B FD 84 91 */	bl Player_actor_Get_ItemKind
/* 80508518  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 8050851C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80508520  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 80508524  7C 7C 07 74 */	extsb r28, r3
/* 80508528  83 FD 0D 60 */	lwz r31, 0xd60(r29)
/* 8050852C  38 00 00 00 */	li r0, 0
/* 80508530  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 80508534  7F A3 EB 78 */	mr r3, r29
/* 80508538  D0 1D 0D 18 */	stfs f0, 0xd18(r29)
/* 8050853C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80508540  38 C1 00 08 */	addi r6, r1, 8
/* 80508544  3B 60 00 80 */	li r27, 0x80
/* 80508548  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 8050854C  3B 40 00 03 */	li r26, 3
/* 80508550  38 80 00 80 */	li r4, 0x80
/* 80508554  93 FD 0D 20 */	stw r31, 0xd20(r29)
/* 80508558  4B FD 1A 09 */	bl Player_actor_SetupItem_Base1
/* 8050855C  2C 1C 00 37 */	cmpwi r28, 0x37
/* 80508560  38 00 00 00 */	li r0, 0
/* 80508564  41 80 00 10 */	blt lbl_80508574
/* 80508568  2C 1C 00 3F */	cmpwi r28, 0x3f
/* 8050856C  40 80 00 08 */	bge lbl_80508574
/* 80508570  38 00 00 01 */	li r0, 1
lbl_80508574:
/* 80508574  2C 00 00 00 */	cmpwi r0, 0
/* 80508578  41 82 00 14 */	beq lbl_8050858C
/* 8050857C  38 00 00 82 */	li r0, 0x82
/* 80508580  3B 60 00 82 */	li r27, 0x82
/* 80508584  90 01 00 0C */	stw r0, 0xc(r1)
/* 80508588  3B 40 00 00 */	li r26, 0
lbl_8050858C:
/* 8050858C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80508590  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80508594  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80508598  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 8050859C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805085A0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 805085A4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 805085A8  7F A3 EB 78 */	mr r3, r29
/* 805085AC  FC 40 08 90 */	fmr f2, f1
/* 805085B0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805085B4  7F C4 F3 78 */	mr r4, r30
/* 805085B8  7F 65 DB 78 */	mr r5, r27
/* 805085BC  7F 48 D3 78 */	mr r8, r26
/* 805085C0  38 E0 00 00 */	li r7, 0
/* 805085C4  4B FC E2 4D */	bl Player_actor_InitAnimation_Base2
/* 805085C8  7F A3 EB 78 */	mr r3, r29
/* 805085CC  7F C4 F3 78 */	mr r4, r30
/* 805085D0  4B FC D3 29 */	bl Player_actor_setup_main_Base
/* 805085D4  2C 1F 00 00 */	cmpwi r31, 0
/* 805085D8  41 80 00 1C */	blt lbl_805085F4
/* 805085DC  2C 1F 00 04 */	cmpwi r31, 4
/* 805085E0  40 80 00 14 */	bge lbl_805085F4
/* 805085E4  7F E3 FB 78 */	mr r3, r31
/* 805085E8  4B FD 74 51 */	bl Player_actor_sound_Get_bgm_num_forDemoGetGoldenItem
/* 805085EC  38 80 01 68 */	li r4, 0x168
/* 805085F0  4B E7 33 E1 */	bl mBGMPsComp_make_ps_fanfare
lbl_805085F4:
/* 805085F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805085F8  4B B9 29 1D */	bl func_8009AF14
/* 805085FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80508600  7C 08 03 A6 */	mtlr r0
/* 80508604  38 21 00 30 */	addi r1, r1, 0x30
/* 80508608  4E 80 00 20 */	blr 