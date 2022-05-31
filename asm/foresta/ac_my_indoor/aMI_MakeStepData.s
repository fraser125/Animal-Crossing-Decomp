lbl_8046F244:
/* 8046F244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F248  7C 08 02 A6 */	mflr r0
/* 8046F24C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8046F250  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F254  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8046F258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F25C  7C 7F 1B 78 */	mr r31, r3
/* 8046F260  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8046F264  2C 00 00 15 */	cmpwi r0, 0x15
/* 8046F268  41 82 00 14 */	beq lbl_8046F27C
/* 8046F26C  2C 00 00 16 */	cmpwi r0, 0x16
/* 8046F270  41 82 00 0C */	beq lbl_8046F27C
/* 8046F274  2C 00 00 28 */	cmpwi r0, 0x28
/* 8046F278  40 82 00 2C */	bne lbl_8046F2A4
lbl_8046F27C:
/* 8046F27C  1C 84 26 B0 */	mulli r4, r4, 0x26b0
/* 8046F280  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F284  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8046F288  7C 60 22 14 */	add r3, r0, r4
/* 8046F28C  3C 63 00 01 */	addis r3, r3, 1
/* 8046F290  88 03 9D 0C */	lbz r0, -0x62f4(r3)
/* 8046F294  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8046F298  41 82 00 0C */	beq lbl_8046F2A4
/* 8046F29C  38 00 00 01 */	li r0, 1
/* 8046F2A0  90 1F 01 F0 */	stw r0, 0x1f0(r31)
lbl_8046F2A4:
/* 8046F2A4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8046F2A8  2C 00 00 28 */	cmpwi r0, 0x28
/* 8046F2AC  40 82 00 0C */	bne lbl_8046F2B8
/* 8046F2B0  38 00 00 01 */	li r0, 1
/* 8046F2B4  90 1F 01 F4 */	stw r0, 0x1f4(r31)
lbl_8046F2B8:
/* 8046F2B8  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8046F2BC  2C 00 00 29 */	cmpwi r0, 0x29
/* 8046F2C0  40 82 00 0C */	bne lbl_8046F2CC
/* 8046F2C4  38 00 00 01 */	li r0, 1
/* 8046F2C8  90 1F 01 F8 */	stw r0, 0x1f8(r31)
lbl_8046F2CC:
/* 8046F2CC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8046F2D0  4B F3 6A 99 */	bl mFI_GetPlayerHouseFloorNo
/* 8046F2D4  2C 03 00 02 */	cmpwi r3, 2
/* 8046F2D8  40 82 00 0C */	bne lbl_8046F2E4
/* 8046F2DC  38 00 00 01 */	li r0, 1
/* 8046F2E0  90 1F 01 FC */	stw r0, 0x1fc(r31)
lbl_8046F2E4:
/* 8046F2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F2EC  7C 08 03 A6 */	mtlr r0
/* 8046F2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F2F4  4E 80 00 20 */	blr 
