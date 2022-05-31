lbl_805B22EC:
/* 805B22EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B22F0  7C 08 02 A6 */	mflr r0
/* 805B22F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B22F8  39 61 00 40 */	addi r11, r1, 0x40
/* 805B22FC  4B AE 8B D9 */	bl func_8009AED4
/* 805B2300  7C 9E 23 78 */	mr r30, r4
/* 805B2304  7C 7F 1B 78 */	mr r31, r3
/* 805B2308  7F C3 F3 78 */	mr r3, r30
/* 805B230C  4B E2 73 35 */	bl get_player_actor_withoutCheck
/* 805B2310  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805B2314  7C 7D 1B 78 */	mr r29, r3
/* 805B2318  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805B231C  38 61 00 14 */	addi r3, r1, 0x14
/* 805B2320  38 81 00 10 */	addi r4, r1, 0x10
/* 805B2324  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805B2328  38 A1 00 24 */	addi r5, r1, 0x24
/* 805B232C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B2330  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805B2334  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B2338  4B DF 34 29 */	bl mFI_Wpos2BlockNum
/* 805B233C  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805B2340  38 61 00 0C */	addi r3, r1, 0xc
/* 805B2344  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805B2348  38 81 00 08 */	addi r4, r1, 8
/* 805B234C  38 A1 00 18 */	addi r5, r1, 0x18
/* 805B2350  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B2354  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B2358  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805B235C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B2360  4B DF 34 01 */	bl mFI_Wpos2BlockNum
/* 805B2364  7F A4 EB 78 */	mr r4, r29
/* 805B2368  38 60 00 01 */	li r3, 1
/* 805B236C  4B DE 7E F9 */	bl mDemo_Check
/* 805B2370  2C 03 00 00 */	cmpwi r3, 0
/* 805B2374  40 82 00 58 */	bne lbl_805B23CC
/* 805B2378  7F A4 EB 78 */	mr r4, r29
/* 805B237C  38 60 00 05 */	li r3, 5
/* 805B2380  4B DE 7E E5 */	bl mDemo_Check
/* 805B2384  2C 03 00 00 */	cmpwi r3, 0
/* 805B2388  40 82 00 44 */	bne lbl_805B23CC
/* 805B238C  7F A4 EB 78 */	mr r4, r29
/* 805B2390  38 60 00 10 */	li r3, 0x10
/* 805B2394  4B DE 7E D1 */	bl mDemo_Check
/* 805B2398  2C 03 00 00 */	cmpwi r3, 0
/* 805B239C  40 82 00 30 */	bne lbl_805B23CC
/* 805B23A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B23A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B23A8  7C 03 00 00 */	cmpw r3, r0
/* 805B23AC  40 82 00 14 */	bne lbl_805B23C0
/* 805B23B0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805B23B4  80 01 00 08 */	lwz r0, 8(r1)
/* 805B23B8  7C 03 00 00 */	cmpw r3, r0
/* 805B23BC  41 82 00 10 */	beq lbl_805B23CC
lbl_805B23C0:
/* 805B23C0  7F E3 FB 78 */	mr r3, r31
/* 805B23C4  4B DC 20 7D */	bl Actor_delete
/* 805B23C8  48 00 00 50 */	b lbl_805B2418
lbl_805B23CC:
/* 805B23CC  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B23D0  7F E3 FB 78 */	mr r3, r31
/* 805B23D4  7F C4 F3 78 */	mr r4, r30
/* 805B23D8  7D 89 03 A6 */	mtctr r12
/* 805B23DC  4E 80 04 21 */	bctrl 
/* 805B23E0  7F E3 FB 78 */	mr r3, r31
/* 805B23E4  4B FF FE D5 */	bl aKKR_ctrl_light
/* 805B23E8  2C 03 00 00 */	cmpwi r3, 0
/* 805B23EC  41 82 00 10 */	beq lbl_805B23FC
/* 805B23F0  3C 60 80 65 */	lis r3, data_8064A85C@ha /* 0x8064A85C@ha */
/* 805B23F4  C0 23 A8 5C */	lfs f1, data_8064A85C@l(r3)  /* 0x8064A85C@l */
/* 805B23F8  48 00 00 0C */	b lbl_805B2404
lbl_805B23FC:
/* 805B23FC  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A860@ha */
/* 805B2400  C0 23 A8 60 */	lfs f1, lit_436@l(r3)  /* 0x8064A860@l */
lbl_805B2404:
/* 805B2404  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064A878@ha */
/* 805B2408  38 83 A8 78 */	addi r4, r3, lit_588@l /* 0x8064A878@l */
/* 805B240C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805B2410  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805B2414  4B E0 88 55 */	bl chase_f
lbl_805B2418:
/* 805B2418  39 61 00 40 */	addi r11, r1, 0x40
/* 805B241C  4B AE 8B 05 */	bl func_8009AF20
/* 805B2420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B2424  7C 08 03 A6 */	mtlr r0
/* 805B2428  38 21 00 40 */	addi r1, r1, 0x40
/* 805B242C  4E 80 00 20 */	blr 
