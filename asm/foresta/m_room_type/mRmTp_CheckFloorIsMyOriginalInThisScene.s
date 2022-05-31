lbl_803E6FC0:
/* 803E6FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E6FC4  7C 08 02 A6 */	mflr r0
/* 803E6FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E6FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E6FD0  4B FF FA E1 */	bl mRmTp_GetPlayerRoomIdx
/* 803E6FD4  7C 7F 1B 78 */	mr r31, r3
/* 803E6FD8  4B FB ED F5 */	bl mFI_GetNowPlayerHouseFloorNo
/* 803E6FDC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E6FE0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E6FE4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 803E6FE8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803E6FEC  40 82 00 24 */	bne lbl_803E7010
/* 803E6FF0  3C 65 00 02 */	addis r3, r5, 2
/* 803E6FF4  88 03 32 00 */	lbz r0, 0x3200(r3)
/* 803E6FF8  2C 00 00 57 */	cmpwi r0, 0x57
/* 803E6FFC  41 80 00 4C */	blt lbl_803E7048
/* 803E7000  2C 00 00 5E */	cmpwi r0, 0x5e
/* 803E7004  41 81 00 44 */	bgt lbl_803E7048
/* 803E7008  38 60 00 01 */	li r3, 1
/* 803E700C  48 00 00 40 */	b lbl_803E704C
lbl_803E7010:
/* 803E7010  2C 03 FF FF */	cmpwi r3, -1
/* 803E7014  41 82 00 34 */	beq lbl_803E7048
/* 803E7018  1C 9F 26 B0 */	mulli r4, r31, 0x26b0
/* 803E701C  3C A5 00 01 */	addis r5, r5, 1
/* 803E7020  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803E7024  7C 65 22 14 */	add r3, r5, r4
/* 803E7028  7C 63 02 14 */	add r3, r3, r0
/* 803E702C  88 03 A5 C0 */	lbz r0, -0x5a40(r3)
/* 803E7030  2C 00 00 57 */	cmpwi r0, 0x57
/* 803E7034  41 80 00 14 */	blt lbl_803E7048
/* 803E7038  2C 00 00 5E */	cmpwi r0, 0x5e
/* 803E703C  41 81 00 0C */	bgt lbl_803E7048
/* 803E7040  38 60 00 01 */	li r3, 1
/* 803E7044  48 00 00 08 */	b lbl_803E704C
lbl_803E7048:
/* 803E7048  38 60 00 00 */	li r3, 0
lbl_803E704C:
/* 803E704C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7054  7C 08 03 A6 */	mtlr r0
/* 803E7058  38 21 00 10 */	addi r1, r1, 0x10
/* 803E705C  4E 80 00 20 */	blr 
