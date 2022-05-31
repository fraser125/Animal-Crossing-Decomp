lbl_803E7350:
/* 803E7350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7354  7C 08 02 A6 */	mflr r0
/* 803E7358  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E735C  2C 04 00 01 */	cmpwi r4, 1
/* 803E7360  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7364  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 803E7368  3C 84 00 02 */	addis r4, r4, 2
/* 803E736C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E7370  83 E4 61 1C */	lwz r31, 0x611c(r4)
/* 803E7374  40 82 00 30 */	bne lbl_803E73A4
/* 803E7378  4B FF FF 91 */	bl mRmTp_CheckExistMyRoomOwner
/* 803E737C  2C 03 00 00 */	cmpwi r3, 0
/* 803E7380  41 82 00 44 */	beq lbl_803E73C4
/* 803E7384  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803E7388  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803E738C  7C 1F 00 00 */	cmpw r31, r0
/* 803E7390  40 80 00 0C */	bge lbl_803E739C
/* 803E7394  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 803E7398  40 80 00 2C */	bge lbl_803E73C4
lbl_803E739C:
/* 803E739C  38 60 00 01 */	li r3, 1
/* 803E73A0  48 00 00 28 */	b lbl_803E73C8
lbl_803E73A4:
/* 803E73A4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803E73A8  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803E73AC  7C 1F 00 00 */	cmpw r31, r0
/* 803E73B0  40 80 00 0C */	bge lbl_803E73BC
/* 803E73B4  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 803E73B8  40 80 00 0C */	bge lbl_803E73C4
lbl_803E73BC:
/* 803E73BC  38 60 00 01 */	li r3, 1
/* 803E73C0  48 00 00 08 */	b lbl_803E73C8
lbl_803E73C4:
/* 803E73C4  38 60 00 00 */	li r3, 0
lbl_803E73C8:
/* 803E73C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E73CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E73D0  7C 08 03 A6 */	mtlr r0
/* 803E73D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803E73D8  4E 80 00 20 */	blr 
