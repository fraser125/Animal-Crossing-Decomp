lbl_80595CB0:
/* 80595CB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80595CB4  7C 08 02 A6 */	mflr r0
/* 80595CB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80595CBC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80595CC0  7C 9F 23 78 */	mr r31, r4
/* 80595CC4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80595CC8  7C 7E 1B 78 */	mr r30, r3
/* 80595CCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80595CD0  38 9E 00 28 */	addi r4, r30, 0x28
/* 80595CD4  4B E2 51 E9 */	bl xyz_t_move
/* 80595CD8  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 80595CDC  3C 60 80 6C */	lis r3, data_806C3100@ha /* 0x806C3100@ha */
/* 80595CE0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80595CE4  38 83 31 00 */	addi r4, r3, data_806C3100@l /* 0x806C3100@l */
/* 80595CE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80595CEC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80595CF0  38 A0 00 D2 */	li r5, 0xd2
/* 80595CF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80595CF8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80595CFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80595D00  4B DF E2 B9 */	bl mCoBG_GetWaterHeight_File
/* 80595D04  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80595D08  38 61 00 20 */	addi r3, r1, 0x20
/* 80595D0C  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 80595D10  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 80595D14  4B DF E6 21 */	bl mCoBG_GetWaterFlow
/* 80595D18  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80595D1C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80595D20  4B E7 62 E1 */	bl atans_table
/* 80595D24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80595D28  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80595D2C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80595D30  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 80595D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80595D38  3C 84 00 02 */	addis r4, r4, 2
/* 80595D3C  90 C1 00 08 */	stw r6, 8(r1)
/* 80595D40  7C 66 1B 78 */	mr r6, r3
/* 80595D44  81 64 60 9C */	lwz r11, 0x609c(r4)
/* 80595D48  7F E7 FB 78 */	mr r7, r31
/* 80595D4C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80595D50  38 81 00 08 */	addi r4, r1, 8
/* 80595D54  38 60 00 45 */	li r3, 0x45
/* 80595D58  38 A0 00 01 */	li r5, 1
/* 80595D5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80595D60  39 00 00 00 */	li r8, 0
/* 80595D64  39 20 00 01 */	li r9, 1
/* 80595D68  39 40 00 00 */	li r10, 0
/* 80595D6C  81 8B 00 00 */	lwz r12, 0(r11)
/* 80595D70  7D 89 03 A6 */	mtctr r12
/* 80595D74  4E 80 04 21 */	bctrl 
/* 80595D78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80595D7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80595D80  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80595D84  7C 08 03 A6 */	mtlr r0
/* 80595D88  38 21 00 40 */	addi r1, r1, 0x40
/* 80595D8C  4E 80 00 20 */	blr 
