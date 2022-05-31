lbl_80622360:
/* 80622360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80622364  7C 08 02 A6 */	mflr r0
/* 80622368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062236C  39 61 00 20 */	addi r11, r1, 0x20
/* 80622370  4B A7 8B 65 */	bl func_8009AED4
/* 80622374  7C 7F 1B 78 */	mr r31, r3
/* 80622378  7C 9E 23 78 */	mr r30, r4
/* 8062237C  4B FF FF 1D */	bl eTL_GetNiceSwitchStat
/* 80622380  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80622384  7C 7D 07 34 */	extsh r29, r3
/* 80622388  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062238C  7F E3 FB 78 */	mr r3, r31
/* 80622390  3C A4 00 02 */	addis r5, r4, 2
/* 80622394  38 80 00 64 */	li r4, 0x64
/* 80622398  80 C5 60 9C */	lwz r6, 0x609c(r5)
/* 8062239C  38 A0 00 64 */	li r5, 0x64
/* 806223A0  81 86 00 10 */	lwz r12, 0x10(r6)
/* 806223A4  7D 89 03 A6 */	mtctr r12
/* 806223A8  4E 80 04 21 */	bctrl 
/* 806223AC  2C 1D 00 01 */	cmpwi r29, 1
/* 806223B0  40 82 00 20 */	bne lbl_806223D0
/* 806223B4  7F C3 F3 78 */	mr r3, r30
/* 806223B8  38 80 00 01 */	li r4, 1
/* 806223BC  38 A0 00 00 */	li r5, 0
/* 806223C0  4B D9 66 0D */	bl mEnv_RequestChangeLightON
/* 806223C4  3C 60 80 65 */	lis r3, data_8064CE24@ha /* 0x8064CE24@ha */
/* 806223C8  C0 23 CE 24 */	lfs f1, data_8064CE24@l(r3)  /* 0x8064CE24@l */
/* 806223CC  48 00 00 24 */	b lbl_806223F0
lbl_806223D0:
/* 806223D0  3C 80 80 65 */	lis r4, lit_406@ha /* 0x8064CE30@ha */
/* 806223D4  7F C3 F3 78 */	mr r3, r30
/* 806223D8  38 A4 CE 30 */	addi r5, r4, lit_406@l /* 0x8064CE30@l */
/* 806223DC  38 80 00 01 */	li r4, 1
/* 806223E0  C0 25 00 00 */	lfs f1, 0(r5)
/* 806223E4  4B D9 66 7D */	bl mEnv_RequestChangeLightOFF
/* 806223E8  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064CE2C@ha */
/* 806223EC  C0 23 CE 2C */	lfs f1, lit_398@l(r3)  /* 0x8064CE2C@l */
lbl_806223F0:
/* 806223F0  3C A0 80 65 */	lis r5, lit_407@ha /* 0x8064CE34@ha */
/* 806223F4  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064CE38@ha */
/* 806223F8  3C 60 80 65 */	lis r3, lit_409@ha /* 0x8064CE3C@ha */
/* 806223FC  C0 45 CE 34 */	lfs f2, lit_407@l(r5)  /* 0x8064CE34@l */
/* 80622400  C0 83 CE 3C */	lfs f4, lit_409@l(r3)  /* 0x8064CE3C@l */
/* 80622404  38 7F 00 40 */	addi r3, r31, 0x40
/* 80622408  C0 64 CE 38 */	lfs f3, lit_408@l(r4)  /* 0x8064CE38@l */
/* 8062240C  4B D9 8D A5 */	bl add_calc
/* 80622410  39 61 00 20 */	addi r11, r1, 0x20
/* 80622414  4B A7 8B 0D */	bl func_8009AF20
/* 80622418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062241C  7C 08 03 A6 */	mtlr r0
/* 80622420  38 21 00 20 */	addi r1, r1, 0x20
/* 80622424  4E 80 00 20 */	blr 
