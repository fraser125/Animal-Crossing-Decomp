lbl_8050C26C:
/* 8050C26C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050C270  7C 08 02 A6 */	mflr r0
/* 8050C274  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050C278  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8050C27C  7C 7F 1B 78 */	mr r31, r3
/* 8050C280  38 61 00 14 */	addi r3, r1, 0x14
/* 8050C284  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8050C288  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050C28C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8050C290  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050C294  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050C298  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8050C29C  4B E9 B1 95 */	bl mFI_GetUnitFG
/* 8050C2A0  90 7F 01 88 */	stw r3, 0x188(r31)
/* 8050C2A4  3C 60 80 65 */	lis r3, data_80648E54@ha /* 0x80648E54@ha */
/* 8050C2A8  38 83 8E 54 */	addi r4, r3, data_80648E54@l /* 0x80648E54@l */
/* 8050C2AC  38 61 00 08 */	addi r3, r1, 8
/* 8050C2B0  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8050C2B4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050C2B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050C2BC  90 A1 00 08 */	stw r5, 8(r1)
/* 8050C2C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050C2C4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050C2C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050C2CC  4B E8 35 55 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8050C2D0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8050C2D4  3C 60 80 51 */	lis r3, aANT_actor_move@ha /* 0x8050C67C@ha */
/* 8050C2D8  38 C0 20 00 */	li r6, 0x2000
/* 8050C2DC  38 A0 00 FF */	li r5, 0xff
/* 8050C2E0  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8050C2E4  38 03 C6 7C */	addi r0, r3, aANT_actor_move@l /* 0x8050C67C@l */
/* 8050C2E8  7F E3 FB 78 */	mr r3, r31
/* 8050C2EC  38 80 00 00 */	li r4, 0
/* 8050C2F0  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 8050C2F4  90 BF 01 7C */	stw r5, 0x17c(r31)
/* 8050C2F8  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8050C2FC  48 00 03 39 */	bl aANT_setupAction
/* 8050C300  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050C304  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8050C308  7C 08 03 A6 */	mtlr r0
/* 8050C30C  38 21 00 30 */	addi r1, r1, 0x30
/* 8050C310  4E 80 00 20 */	blr 
