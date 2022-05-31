lbl_803B89CC:
/* 803B89CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B89D0  7C 08 02 A6 */	mflr r0
/* 803B89D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B89D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B89DC  4B CE 24 F9 */	bl func_8009AED4
/* 803B89E0  7C 7D 1B 78 */	mr r29, r3
/* 803B89E4  7C 9E 23 78 */	mr r30, r4
/* 803B89E8  7C BF 2B 78 */	mr r31, r5
/* 803B89EC  48 02 E7 B9 */	bl mRmTp_NowSceneLightSwitchON
/* 803B89F0  2C 03 00 00 */	cmpwi r3, 0
/* 803B89F4  41 82 00 50 */	beq lbl_803B8A44
/* 803B89F8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B89FC  2C 1E 00 00 */	cmpwi r30, 0
/* 803B8A00  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8A04  93 C3 00 18 */	stw r30, 0x18(r3)
/* 803B8A08  40 82 00 34 */	bne lbl_803B8A3C
/* 803B8A0C  7F A3 EB 78 */	mr r3, r29
/* 803B8A10  48 02 0C 31 */	bl get_player_actor_withoutCheck
/* 803B8A14  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8A18  2C 1F 00 01 */	cmpwi r31, 1
/* 803B8A1C  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8A20  38 80 00 01 */	li r4, 1
/* 803B8A24  38 00 00 00 */	li r0, 0
/* 803B8A28  B0 83 00 14 */	sth r4, 0x14(r3)
/* 803B8A2C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 803B8A30  40 82 00 0C */	bne lbl_803B8A3C
/* 803B8A34  38 60 00 16 */	li r3, 0x16
/* 803B8A38  48 27 52 CD */	bl sAdo_SysTrgStart
lbl_803B8A3C:
/* 803B8A3C  38 60 00 01 */	li r3, 1
/* 803B8A40  48 00 00 08 */	b lbl_803B8A48
lbl_803B8A44:
/* 803B8A44  38 60 00 00 */	li r3, 0
lbl_803B8A48:
/* 803B8A48  39 61 00 20 */	addi r11, r1, 0x20
/* 803B8A4C  4B CE 24 D5 */	bl func_8009AF20
/* 803B8A50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8A54  7C 08 03 A6 */	mtlr r0
/* 803B8A58  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8A5C  4E 80 00 20 */	blr 
