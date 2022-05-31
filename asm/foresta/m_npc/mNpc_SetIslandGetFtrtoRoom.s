lbl_803D42F8:
/* 803D42F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D42FC  7C 08 02 A6 */	mflr r0
/* 803D4300  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4304  39 61 00 20 */	addi r11, r1, 0x20
/* 803D4308  4B CC 6B C9 */	bl func_8009AED0
/* 803D430C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D4310  3C 80 81 17 */	lis r4, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D4314  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D4318  3F C3 00 02 */	addis r30, r3, 2
/* 803D431C  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 803D4320  38 64 C6 80 */	addi r3, r4, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D4324  3B E3 00 0A */	addi r31, r3, 0xa
/* 803D4328  3B DE 34 40 */	addi r30, r30, 0x3440
/* 803D432C  28 00 00 00 */	cmplwi r0, 0
/* 803D4330  41 82 00 54 */	beq lbl_803D4384
/* 803D4334  7C 1D 03 78 */	mr r29, r0
/* 803D4338  3B 80 00 00 */	li r28, 0
lbl_803D433C:
/* 803D433C  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D4340  28 04 00 00 */	cmplwi r4, 0
/* 803D4344  41 82 00 20 */	beq lbl_803D4364
/* 803D4348  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D434C  2C 00 00 01 */	cmpwi r0, 1
/* 803D4350  41 82 00 0C */	beq lbl_803D435C
/* 803D4354  2C 00 00 03 */	cmpwi r0, 3
/* 803D4358  40 82 00 0C */	bne lbl_803D4364
lbl_803D435C:
/* 803D435C  7F A3 EB 78 */	mr r3, r29
/* 803D4360  48 00 07 59 */	bl mNpc_SetIslandFtr
lbl_803D4364:
/* 803D4364  3B 9C 00 01 */	addi r28, r28, 1
/* 803D4368  3B FF 00 02 */	addi r31, r31, 2
/* 803D436C  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803D4370  41 80 FF CC */	blt lbl_803D433C
/* 803D4374  48 00 10 55 */	bl mNpc_RestoreIslandPresentFtr
/* 803D4378  48 00 0E 55 */	bl mNpc_ClearIslandPresentFtrInfo
/* 803D437C  7F C3 F3 78 */	mr r3, r30
/* 803D4380  4B FF FA E1 */	bl mNpc_SetIslandRoomFtr
lbl_803D4384:
/* 803D4384  39 61 00 20 */	addi r11, r1, 0x20
/* 803D4388  4B CC 6B 95 */	bl func_8009AF1C
/* 803D438C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D4390  7C 08 03 A6 */	mtlr r0
/* 803D4394  38 21 00 20 */	addi r1, r1, 0x20
/* 803D4398  4E 80 00 20 */	blr 
