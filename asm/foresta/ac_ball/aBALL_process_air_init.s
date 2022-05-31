lbl_80412D10:
/* 80412D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80412D14  7C 08 02 A6 */	mflr r0
/* 80412D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80412D1C  38 81 00 08 */	addi r4, r1, 8
/* 80412D20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80412D24  7C 7F 1B 78 */	mr r31, r3
/* 80412D28  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412D2C  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80412D30  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80412D34  C0 23 39 AC */	lfs f1, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412D38  38 60 00 00 */	li r3, 0
/* 80412D3C  90 A1 00 08 */	stw r5, 8(r1)
/* 80412D40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80412D44  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80412D48  90 01 00 10 */	stw r0, 0x10(r1)
/* 80412D4C  4B F7 C9 6D */	bl func_8038F6B8
/* 80412D50  38 00 00 01 */	li r0, 1
/* 80412D54  3C 60 80 41 */	lis r3, aBALL_process_ground@ha /* 0x80412EB8@ha */
/* 80412D58  98 1F 01 08 */	stb r0, 0x108(r31)
/* 80412D5C  38 03 2E B8 */	addi r0, r3, aBALL_process_ground@l /* 0x80412EB8@l */
/* 80412D60  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 80412D64  7C 03 00 40 */	cmplw r3, r0
/* 80412D68  40 82 00 28 */	bne lbl_80412D90
/* 80412D6C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80412D70  3C 60 80 64 */	lis r3, lit_658@ha /* 0x80643A20@ha */
/* 80412D74  EC 20 08 28 */	fsubs f1, f0, f1
/* 80412D78  C0 03 3A 20 */	lfs f0, lit_658@l(r3)  /* 0x80643A20@l */
/* 80412D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80412D80  40 81 00 10 */	ble lbl_80412D90
/* 80412D84  38 9F 00 28 */	addi r4, r31, 0x28
/* 80412D88  38 60 04 3D */	li r3, 0x43d
/* 80412D8C  48 21 B2 1D */	bl sAdo_OngenTrgStart
lbl_80412D90:
/* 80412D90  3C 60 80 41 */	lis r3, aBALL_process_air@ha /* 0x80412DB0@ha */
/* 80412D94  38 03 2D B0 */	addi r0, r3, aBALL_process_air@l /* 0x80412DB0@l */
/* 80412D98  90 1F 01 E0 */	stw r0, 0x1e0(r31)
/* 80412D9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80412DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80412DA4  7C 08 03 A6 */	mtlr r0
/* 80412DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80412DAC  4E 80 00 20 */	blr 
