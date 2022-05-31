lbl_80419C4C:
/* 80419C4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80419C50  7C 08 02 A6 */	mflr r0
/* 80419C54  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419C58  90 01 00 54 */	stw r0, 0x54(r1)
/* 80419C5C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419C60  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80419C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80419C68  4B FB F9 D9 */	bl get_player_actor_withoutCheck
/* 80419C6C  7C 7F 1B 78 */	mr r31, r3
/* 80419C70  38 61 00 14 */	addi r3, r1, 0x14
/* 80419C74  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80419C78  38 81 00 10 */	addi r4, r1, 0x10
/* 80419C7C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80419C80  38 A1 00 20 */	addi r5, r1, 0x20
/* 80419C84  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80419C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80419C8C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80419C90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80419C94  4B F8 BA CD */	bl mFI_Wpos2BlockNum
/* 80419C98  2C 03 00 00 */	cmpwi r3, 0
/* 80419C9C  41 82 01 58 */	beq lbl_80419DF4
/* 80419CA0  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 80419CA4  80 E3 B9 60 */	lwz r7, spppp@l(r3)  /* 0x811CB960@l */
/* 80419CA8  28 07 00 00 */	cmplwi r7, 0
/* 80419CAC  41 82 01 48 */	beq lbl_80419DF4
/* 80419CB0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80419CB4  3C 60 80 64 */	lis r3, lit_576@ha /* 0x80643D44@ha */
/* 80419CB8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80419CBC  C0 03 3D 44 */	lfs f0, lit_576@l(r3)  /* 0x80643D44@l */
/* 80419CC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80419CC4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80419CC8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80419CCC  90 81 00 38 */	stw r4, 0x38(r1)
/* 80419CD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80419CD4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80419CD8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80419CDC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80419CE0  80 87 00 04 */	lwz r4, 4(r7)
/* 80419CE4  80 A7 00 00 */	lwz r5, 0(r7)
/* 80419CE8  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 80419CEC  80 E7 00 08 */	lwz r7, 8(r7)
/* 80419CF0  4B F8 C0 05 */	bl mFI_BkandUtNum2CenterWpos
/* 80419CF4  38 61 00 38 */	addi r3, r1, 0x38
/* 80419CF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80419CFC  4B FB EB A1 */	bl sanglexy_by_2pos
/* 80419D00  3C A0 81 1D */	lis r5, spppp@ha /* 0x811CB960@ha */
/* 80419D04  54 80 84 3E */	srwi r0, r4, 0x10
/* 80419D08  38 85 B9 60 */	addi r4, r5, spppp@l /* 0x811CB960@l */
/* 80419D0C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80419D10  80 84 00 00 */	lwz r4, 0(r4)
/* 80419D14  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80419D18  80 04 00 04 */	lwz r0, 4(r4)
/* 80419D1C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80419D20  7C 05 00 00 */	cmpw r5, r0
/* 80419D24  40 82 00 14 */	bne lbl_80419D38
/* 80419D28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80419D2C  80 04 00 00 */	lwz r0, 0(r4)
/* 80419D30  7C 03 00 00 */	cmpw r3, r0
/* 80419D34  41 82 00 64 */	beq lbl_80419D98
lbl_80419D38:
/* 80419D38  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419D3C  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 80419D40  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419D44  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 80419D48  80 A5 00 00 */	lwz r5, 0(r5)
/* 80419D4C  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80643D3C@ha */
/* 80419D50  38 C3 3D 3C */	addi r6, r3, lit_557@l /* 0x80643D3C@l */
/* 80419D54  FC A0 20 90 */	fmr f5, f4
/* 80419D58  80 05 00 00 */	lwz r0, 0(r5)
/* 80419D5C  38 60 00 00 */	li r3, 0
/* 80419D60  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80419D64  38 A0 00 00 */	li r5, 0
/* 80419D68  90 01 00 08 */	stw r0, 8(r1)
/* 80419D6C  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 80419D70  38 C0 00 78 */	li r6, 0x78
/* 80419D74  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80419D78  38 E0 00 78 */	li r7, 0x78
/* 80419D7C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80419D80  39 00 00 F0 */	li r8, 0xf0
/* 80419D84  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80419D88  39 20 00 80 */	li r9, 0x80
/* 80419D8C  39 40 00 04 */	li r10, 4
/* 80419D90  4B F7 C3 31 */	bl Debug_Display_new
/* 80419D94  48 00 00 60 */	b lbl_80419DF4
lbl_80419D98:
/* 80419D98  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419D9C  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 80419DA0  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419DA4  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 80419DA8  80 A5 00 00 */	lwz r5, 0(r5)
/* 80419DAC  3C 60 80 64 */	lis r3, lit_558@ha /* 0x80643D40@ha */
/* 80419DB0  38 C3 3D 40 */	addi r6, r3, lit_558@l /* 0x80643D40@l */
/* 80419DB4  FC A0 20 90 */	fmr f5, f4
/* 80419DB8  80 05 00 00 */	lwz r0, 0(r5)
/* 80419DBC  38 60 00 00 */	li r3, 0
/* 80419DC0  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80419DC4  38 A0 00 00 */	li r5, 0
/* 80419DC8  90 01 00 08 */	stw r0, 8(r1)
/* 80419DCC  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 80419DD0  38 C0 00 78 */	li r6, 0x78
/* 80419DD4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80419DD8  38 E0 00 78 */	li r7, 0x78
/* 80419DDC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80419DE0  39 00 00 F0 */	li r8, 0xf0
/* 80419DE4  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80419DE8  39 20 00 80 */	li r9, 0x80
/* 80419DEC  39 40 00 04 */	li r10, 4
/* 80419DF0  4B F7 C2 D1 */	bl Debug_Display_new
lbl_80419DF4:
/* 80419DF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80419DF8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80419DFC  7C 08 03 A6 */	mtlr r0
/* 80419E00  38 21 00 50 */	addi r1, r1, 0x50
/* 80419E04  4E 80 00 20 */	blr 
