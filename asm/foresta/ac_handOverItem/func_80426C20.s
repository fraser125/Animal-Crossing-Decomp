lbl_80426C20:
/* 80426C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80426C24  7C 08 02 A6 */	mflr r0
/* 80426C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80426C2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80426C30  7C 7F 1B 78 */	mr r31, r3
/* 80426C34  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 80426C38  2C 00 00 01 */	cmpwi r0, 1
/* 80426C3C  40 82 00 58 */	bne lbl_80426C94
/* 80426C40  3C 60 80 64 */	lis r3, data_80643FB4@ha /* 0x80643FB4@ha */
/* 80426C44  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80426C48  C0 03 3F B4 */	lfs f0, data_80643FB4@l(r3)  /* 0x80643FB4@l */
/* 80426C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80426C50  40 81 00 44 */	ble lbl_80426C94
/* 80426C54  88 1F 01 E7 */	lbz r0, 0x1e7(r31)
/* 80426C58  28 00 00 00 */	cmplwi r0, 0
/* 80426C5C  41 82 00 38 */	beq lbl_80426C94
/* 80426C60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80426C64  38 61 00 08 */	addi r3, r1, 8
/* 80426C68  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80426C6C  3C 84 00 02 */	addis r4, r4, 2
/* 80426C70  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 80426C74  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80426C78  38 84 00 28 */	addi r4, r4, 0x28
/* 80426C7C  4B F9 42 41 */	bl xyz_t_move
/* 80426C80  38 81 00 08 */	addi r4, r1, 8
/* 80426C84  38 60 00 56 */	li r3, 0x56
/* 80426C88  48 20 73 21 */	bl sAdo_OngenTrgStart
/* 80426C8C  38 00 00 00 */	li r0, 0
/* 80426C90  98 1F 01 E7 */	stb r0, 0x1e7(r31)
lbl_80426C94:
/* 80426C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80426C98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80426C9C  7C 08 03 A6 */	mtlr r0
/* 80426CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80426CA4  4E 80 00 20 */	blr 
