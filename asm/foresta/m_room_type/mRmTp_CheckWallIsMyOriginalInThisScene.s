lbl_803E6F20:
/* 803E6F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E6F24  7C 08 02 A6 */	mflr r0
/* 803E6F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E6F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E6F30  4B FF FB 81 */	bl mRmTp_GetPlayerRoomIdx
/* 803E6F34  7C 7F 1B 78 */	mr r31, r3
/* 803E6F38  4B FB EE 95 */	bl mFI_GetNowPlayerHouseFloorNo
/* 803E6F3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E6F40  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E6F44  80 05 00 14 */	lwz r0, 0x14(r5)
/* 803E6F48  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803E6F4C  40 82 00 24 */	bne lbl_803E6F70
/* 803E6F50  3C 65 00 02 */	addis r3, r5, 2
/* 803E6F54  88 03 32 01 */	lbz r0, 0x3201(r3)
/* 803E6F58  2C 00 00 48 */	cmpwi r0, 0x48
/* 803E6F5C  41 80 00 4C */	blt lbl_803E6FA8
/* 803E6F60  2C 00 00 4F */	cmpwi r0, 0x4f
/* 803E6F64  41 81 00 44 */	bgt lbl_803E6FA8
/* 803E6F68  38 60 00 01 */	li r3, 1
/* 803E6F6C  48 00 00 40 */	b lbl_803E6FAC
lbl_803E6F70:
/* 803E6F70  2C 03 FF FF */	cmpwi r3, -1
/* 803E6F74  41 82 00 34 */	beq lbl_803E6FA8
/* 803E6F78  1C 9F 26 B0 */	mulli r4, r31, 0x26b0
/* 803E6F7C  3C A5 00 01 */	addis r5, r5, 1
/* 803E6F80  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803E6F84  7C 65 22 14 */	add r3, r5, r4
/* 803E6F88  7C 63 02 14 */	add r3, r3, r0
/* 803E6F8C  88 03 A5 C1 */	lbz r0, -0x5a3f(r3)
/* 803E6F90  2C 00 00 48 */	cmpwi r0, 0x48
/* 803E6F94  41 80 00 14 */	blt lbl_803E6FA8
/* 803E6F98  2C 00 00 4F */	cmpwi r0, 0x4f
/* 803E6F9C  41 81 00 0C */	bgt lbl_803E6FA8
/* 803E6FA0  38 60 00 01 */	li r3, 1
/* 803E6FA4  48 00 00 08 */	b lbl_803E6FAC
lbl_803E6FA8:
/* 803E6FA8  38 60 00 00 */	li r3, 0
lbl_803E6FAC:
/* 803E6FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E6FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E6FB4  7C 08 03 A6 */	mtlr r0
/* 803E6FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E6FBC  4E 80 00 20 */	blr 
