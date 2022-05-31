lbl_80428DD0:
/* 80428DD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428DD4  7C 08 02 A6 */	mflr r0
/* 80428DD8  38 A0 00 00 */	li r5, 0
/* 80428DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428DE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80428DE4  7C 7F 1B 78 */	mr r31, r3
/* 80428DE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80428DEC  7C 9E 23 78 */	mr r30, r4
/* 80428DF0  38 81 00 08 */	addi r4, r1, 8
/* 80428DF4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80428DF8  88 63 02 83 */	lbz r3, 0x283(r3)
/* 80428DFC  80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 80428E00  3C 63 00 01 */	addis r3, r3, 1
/* 80428E04  90 01 00 08 */	stw r0, 8(r1)
/* 80428E08  38 03 F0 FB */	addi r0, r3, -3845
/* 80428E0C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80428E10  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80428E14  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80428E18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80428E1C  4B F7 EA 15 */	bl mFI_SetFG_common
/* 80428E20  3C 60 80 43 */	lis r3, aHNW_actor_move@ha /* 0x80428D44@ha */
/* 80428E24  3C 80 80 42 */	lis r4, aHNW_actor_draw@ha /* 0x80427660@ha */
/* 80428E28  38 03 8D 44 */	addi r0, r3, aHNW_actor_move@l /* 0x80428D44@l */
/* 80428E2C  7F E3 FB 78 */	mr r3, r31
/* 80428E30  90 1F 01 64 */	stw r0, 0x164(r31)
/* 80428E34  38 04 76 60 */	addi r0, r4, aHNW_actor_draw@l /* 0x80427660@l */
/* 80428E38  7F C4 F3 78 */	mr r4, r30
/* 80428E3C  38 A0 00 00 */	li r5, 0
/* 80428E40  90 1F 01 68 */	stw r0, 0x168(r31)
/* 80428E44  4B FF FC 11 */	bl aHNW_setupAction
/* 80428E48  3C 80 80 64 */	lis r4, lit_748@ha /* 0x80643FE0@ha */
/* 80428E4C  7F E3 FB 78 */	mr r3, r31
/* 80428E50  38 A4 3F E0 */	addi r5, r4, lit_748@l /* 0x80643FE0@l */
/* 80428E54  7F C4 F3 78 */	mr r4, r30
/* 80428E58  C0 05 00 00 */	lfs f0, 0(r5)
/* 80428E5C  D0 1F 01 9C */	stfs f0, 0x19c(r31)
/* 80428E60  4B FF FE E5 */	bl aHNW_actor_move
/* 80428E64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80428E68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80428E6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80428E70  7C 08 03 A6 */	mtlr r0
/* 80428E74  38 21 00 20 */	addi r1, r1, 0x20
/* 80428E78  4E 80 00 20 */	blr 
