lbl_8055F19C:
/* 8055F19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F1A0  7C 08 02 A6 */	mflr r0
/* 8055F1A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F1AC  4B B3 BD 29 */	bl func_8009AED4
/* 8055F1B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055F1B4  7C 9D 23 78 */	mr r29, r4
/* 8055F1B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055F1BC  3C E0 80 6B */	lis r7, ct_data@ha /* 0x806AA2D4@ha */
/* 8055F1C0  3C A5 00 02 */	addis r5, r5, 2
/* 8055F1C4  7C 7F 1B 78 */	mr r31, r3
/* 8055F1C8  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 8055F1CC  38 A7 A2 D4 */	addi r5, r7, ct_data@l /* 0x806AA2D4@l */
/* 8055F1D0  7F BE EB 78 */	mr r30, r29
/* 8055F1D4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8055F1D8  7D 89 03 A6 */	mtctr r12
/* 8055F1DC  4E 80 04 21 */	bctrl 
/* 8055F1E0  38 00 03 FF */	li r0, 0x3ff
/* 8055F1E4  3C 60 80 65 */	lis r3, data_8064970C@ha /* 0x8064970C@ha */
/* 8055F1E8  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8055F1EC  38 00 00 28 */	li r0, 0x28
/* 8055F1F0  C0 03 97 0C */	lfs f0, data_8064970C@l(r3)  /* 0x8064970C@l */
/* 8055F1F4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A011@ha */
/* 8055F1F8  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 8055F1FC  38 00 00 00 */	li r0, 0
/* 8055F200  38 C0 00 01 */	li r6, 1
/* 8055F204  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8055F208  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 8055F20C  38 00 FF FF */	li r0, -1
/* 8055F210  38 84 A0 11 */	addi r4, r4, 0xA011 /* 0x0000A011@l */
/* 8055F214  38 A0 00 05 */	li r5, 5
/* 8055F218  D0 1F 08 2C */	stfs f0, 0x82c(r31)
/* 8055F21C  98 DF 09 A7 */	stb r6, 0x9a7(r31)
/* 8055F220  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8055F224  4B E1 6B 1D */	bl Actor_info_fgName_search
/* 8055F228  90 7F 09 B0 */	stw r3, 0x9b0(r31)
/* 8055F22C  38 00 00 01 */	li r0, 1
/* 8055F230  7F A3 EB 78 */	mr r3, r29
/* 8055F234  38 80 00 00 */	li r4, 0
/* 8055F238  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8055F23C  38 A0 00 00 */	li r5, 0
/* 8055F240  4B E7 BB 45 */	bl mPlib_request_main_demo_wait_type1
/* 8055F244  7F C3 F3 78 */	mr r3, r30
/* 8055F248  4B E7 A3 F9 */	bl get_player_actor_withoutCheck
/* 8055F24C  28 03 00 00 */	cmplwi r3, 0
/* 8055F250  41 82 00 10 */	beq lbl_8055F260
/* 8055F254  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8055F258  60 00 00 80 */	ori r0, r0, 0x80
/* 8055F25C  90 03 00 20 */	stw r0, 0x20(r3)
lbl_8055F260:
/* 8055F260  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 8055F264  3B A0 00 00 */	li r29, 0
/* 8055F268  28 03 00 00 */	cmplwi r3, 0
/* 8055F26C  41 82 00 10 */	beq lbl_8055F27C
/* 8055F270  A0 03 00 02 */	lhz r0, 2(r3)
/* 8055F274  28 00 D0 04 */	cmplwi r0, 0xd004
/* 8055F278  40 82 00 2C */	bne lbl_8055F2A4
lbl_8055F27C:
/* 8055F27C  38 00 80 00 */	li r0, -32768
/* 8055F280  3C 60 80 65 */	lis r3, lit_484@ha /* 0x80649710@ha */
/* 8055F284  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8055F288  38 00 00 00 */	li r0, 0
/* 8055F28C  C0 03 97 10 */	lfs f0, lit_484@l(r3)  /* 0x80649710@l */
/* 8055F290  3B A0 00 04 */	li r29, 4
/* 8055F294  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8055F298  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8055F29C  98 1F 08 30 */	stb r0, 0x830(r31)
/* 8055F2A0  48 00 00 64 */	b lbl_8055F304
lbl_8055F2A4:
/* 8055F2A4  38 00 40 00 */	li r0, 0x4000
/* 8055F2A8  3C 60 80 65 */	lis r3, lit_485@ha /* 0x80649714@ha */
/* 8055F2AC  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8055F2B0  38 83 97 14 */	addi r4, r3, lit_485@l /* 0x80649714@l */
/* 8055F2B4  3C 60 80 65 */	lis r3, lit_486@ha /* 0x80649718@ha */
/* 8055F2B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8055F2BC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8055F2C0  C0 03 97 18 */	lfs f0, lit_486@l(r3)  /* 0x80649718@l */
/* 8055F2C4  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8055F2C8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8055F2CC  4B E3 FF 41 */	bl mMC_mask_cat_init
/* 8055F2D0  4B E4 01 25 */	bl mMC_set_time
/* 8055F2D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F2D8  38 80 02 00 */	li r4, 0x200
/* 8055F2DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055F2E0  38 A0 00 FF */	li r5, 0xff
/* 8055F2E4  3C 63 00 02 */	addis r3, r3, 2
/* 8055F2E8  38 63 3F 40 */	addi r3, r3, 0x3f40
/* 8055F2EC  4B E5 B7 5D */	bl mem_clear
/* 8055F2F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F2F4  38 00 00 0F */	li r0, 0xf
/* 8055F2F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055F2FC  3C 63 00 02 */	addis r3, r3, 2
/* 8055F300  98 03 41 40 */	stb r0, 0x4140(r3)
lbl_8055F304:
/* 8055F304  7F E3 FB 78 */	mr r3, r31
/* 8055F308  7F C4 F3 78 */	mr r4, r30
/* 8055F30C  7F A5 EB 78 */	mr r5, r29
/* 8055F310  48 00 1A E1 */	bl aNM2_setupAction
/* 8055F314  38 60 00 8D */	li r3, 0x8d
/* 8055F318  48 0C EB ED */	bl sAdo_SysLevStart
/* 8055F31C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F320  38 00 00 00 */	li r0, 0
/* 8055F324  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055F328  38 60 00 01 */	li r3, 1
/* 8055F32C  3C 84 00 02 */	addis r4, r4, 2
/* 8055F330  98 04 65 22 */	stb r0, 0x6522(r4)
/* 8055F334  48 0C F1 BD */	bl sAdo_TrgSeEcho
/* 8055F338  38 60 00 01 */	li r3, 1
/* 8055F33C  48 0C F1 D5 */	bl sAdo_LevSeEcho
/* 8055F340  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F344  4B B3 BB DD */	bl func_8009AF20
/* 8055F348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055F34C  7C 08 03 A6 */	mtlr r0
/* 8055F350  38 21 00 20 */	addi r1, r1, 0x20
/* 8055F354  4E 80 00 20 */	blr 
