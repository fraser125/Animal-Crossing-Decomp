lbl_804AC2B0:
/* 804AC2B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AC2B4  7C 08 02 A6 */	mflr r0
/* 804AC2B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AC2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804AC2C0  4B BE EC 11 */	bl func_8009AED0
/* 804AC2C4  3C 80 80 69 */	lis r4, chk_pat@ha /* 0x8068F4E4@ha */
/* 804AC2C8  7C 7C 1B 78 */	mr r28, r3
/* 804AC2CC  3B C4 F4 E4 */	addi r30, r4, chk_pat@l /* 0x8068F4E4@l */
/* 804AC2D0  3B A0 00 00 */	li r29, 0
/* 804AC2D4  3B E0 00 00 */	li r31, 0
lbl_804AC2D8:
/* 804AC2D8  7C 3E FC 2E */	lfsx f1, r30, r31
/* 804AC2DC  38 7C 01 7C */	addi r3, r28, 0x17c
/* 804AC2E0  4B EC 41 A9 */	bl cKF_FrameControl_passCheck_now
/* 804AC2E4  2C 03 00 00 */	cmpwi r3, 0
/* 804AC2E8  41 82 00 20 */	beq lbl_804AC308
/* 804AC2EC  3C 60 80 69 */	lis r3, se_no@ha /* 0x8068F4EC@ha */
/* 804AC2F0  57 A0 08 3C */	slwi r0, r29, 1
/* 804AC2F4  38 63 F4 EC */	addi r3, r3, se_no@l /* 0x8068F4EC@l */
/* 804AC2F8  38 9C 00 28 */	addi r4, r28, 0x28
/* 804AC2FC  7C 63 02 2E */	lhzx r3, r3, r0
/* 804AC300  48 18 1C A9 */	bl sAdo_OngenTrgStart
/* 804AC304  48 00 00 14 */	b lbl_804AC318
lbl_804AC308:
/* 804AC308  3B BD 00 01 */	addi r29, r29, 1
/* 804AC30C  3B FF 00 04 */	addi r31, r31, 4
/* 804AC310  2C 1D 00 02 */	cmpwi r29, 2
/* 804AC314  41 80 FF C4 */	blt lbl_804AC2D8
lbl_804AC318:
/* 804AC318  39 61 00 20 */	addi r11, r1, 0x20
/* 804AC31C  4B BE EC 01 */	bl func_8009AF1C
/* 804AC320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AC324  7C 08 03 A6 */	mtlr r0
/* 804AC328  38 21 00 20 */	addi r1, r1, 0x20
/* 804AC32C  4E 80 00 20 */	blr 
