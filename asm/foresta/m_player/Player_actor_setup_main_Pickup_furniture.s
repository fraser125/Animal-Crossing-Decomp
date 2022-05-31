lbl_804EE278:
/* 804EE278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE27C  7C 08 02 A6 */	mflr r0
/* 804EE280  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE284  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE288  4B BA CC 49 */	bl func_8009AED0
/* 804EE28C  7C 7E 1B 78 */	mr r30, r3
/* 804EE290  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804EE294  83 A3 0D 60 */	lwz r29, 0xd60(r3)
/* 804EE298  38 C5 66 68 */	addi r6, r5, lit_790@l /* 0x80646668@l */
/* 804EE29C  A3 83 0D 64 */	lhz r28, 0xd64(r3)
/* 804EE2A0  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804EE2A4  81 03 0D 68 */	lwz r8, 0xd68(r3)
/* 804EE2A8  38 E5 83 54 */	addi r7, r5, lit_7381@l /* 0x80648354@l */
/* 804EE2AC  80 03 0D 6C */	lwz r0, 0xd6c(r3)
/* 804EE2B0  7C 9F 23 78 */	mr r31, r4
/* 804EE2B4  C0 06 00 00 */	lfs f0, 0(r6)
/* 804EE2B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804EE2BC  91 03 0D 24 */	stw r8, 0xd24(r3)
/* 804EE2C0  38 C1 00 08 */	addi r6, r1, 8
/* 804EE2C4  C0 27 00 00 */	lfs f1, 0(r7)
/* 804EE2C8  38 80 00 07 */	li r4, 7
/* 804EE2CC  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804EE2D0  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804EE2D4  90 03 0D 2C */	stw r0, 0xd2c(r3)
/* 804EE2D8  80 E3 0D 24 */	lwz r7, 0xd24(r3)
/* 804EE2DC  80 03 0D 28 */	lwz r0, 0xd28(r3)
/* 804EE2E0  90 E3 0D 18 */	stw r7, 0xd18(r3)
/* 804EE2E4  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804EE2E8  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804EE2EC  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804EE2F0  D0 03 0D 3C */	stfs f0, 0xd3c(r3)
/* 804EE2F4  B3 83 0D 40 */	sth r28, 0xd40(r3)
/* 804EE2F8  4B FE BC 69 */	bl Player_actor_SetupItem_Base1
/* 804EE2FC  7F E3 FB 78 */	mr r3, r31
/* 804EE300  7F A4 EB 78 */	mr r4, r29
/* 804EE304  7F 85 E3 78 */	mr r5, r28
/* 804EE308  4B FE 91 51 */	bl Player_actor_putin_furniture
/* 804EE30C  2C 1D 00 00 */	cmpwi r29, 0
/* 804EE310  40 80 00 24 */	bge lbl_804EE334
/* 804EE314  28 1C 1B A8 */	cmplwi r28, 0x1ba8
/* 804EE318  41 80 00 0C */	blt lbl_804EE324
/* 804EE31C  28 1C 1B C7 */	cmplwi r28, 0x1bc7
/* 804EE320  40 81 00 14 */	ble lbl_804EE334
lbl_804EE324:
/* 804EE324  28 1C 1D 88 */	cmplwi r28, 0x1d88
/* 804EE328  41 80 00 18 */	blt lbl_804EE340
/* 804EE32C  28 1C 1D A7 */	cmplwi r28, 0x1da7
/* 804EE330  41 81 00 10 */	bgt lbl_804EE340
lbl_804EE334:
/* 804EE334  38 00 00 00 */	li r0, 0
/* 804EE338  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 804EE33C  48 00 00 0C */	b lbl_804EE348
lbl_804EE340:
/* 804EE340  38 00 00 01 */	li r0, 1
/* 804EE344  90 1E 0D 44 */	stw r0, 0xd44(r30)
lbl_804EE348:
/* 804EE348  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EE34C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EE350  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EE354  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EE358  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EE35C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EE360  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804EE364  7F C3 F3 78 */	mr r3, r30
/* 804EE368  FC 40 08 90 */	fmr f2, f1
/* 804EE36C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804EE370  7F E4 FB 78 */	mr r4, r31
/* 804EE374  38 A0 00 07 */	li r5, 7
/* 804EE378  38 E0 00 00 */	li r7, 0
/* 804EE37C  39 00 00 02 */	li r8, 2
/* 804EE380  4B FE 84 91 */	bl Player_actor_InitAnimation_Base2
/* 804EE384  7F C3 F3 78 */	mr r3, r30
/* 804EE388  7F E4 FB 78 */	mr r4, r31
/* 804EE38C  4B FE 75 6D */	bl Player_actor_setup_main_Base
/* 804EE390  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE394  4B BA CB 89 */	bl func_8009AF1C
/* 804EE398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EE39C  7C 08 03 A6 */	mtlr r0
/* 804EE3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804EE3A4  4E 80 00 20 */	blr 
