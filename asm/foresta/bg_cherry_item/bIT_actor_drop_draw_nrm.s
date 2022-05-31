lbl_804B3F00:
/* 804B3F00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B3F04  7C 08 02 A6 */	mflr r0
/* 804B3F08  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B3F0C  39 61 00 40 */	addi r11, r1, 0x40
/* 804B3F10  4B BE 6F C5 */	bl func_8009AED4
/* 804B3F14  7C BF 2B 78 */	mr r31, r5
/* 804B3F18  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646044@ha */
/* 804B3F1C  C0 26 60 44 */	lfs f1, lit_1546@l(r6)  /* 0x80646044@l */
/* 804B3F20  7C 7D 1B 78 */	mr r29, r3
/* 804B3F24  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804B3F28  7C 9E 23 78 */	mr r30, r4
/* 804B3F2C  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B3F30  38 9F 00 38 */	addi r4, r31, 0x38
/* 804B3F34  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3F38  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804B3F3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804B3F40  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804B3F44  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3F48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B3F4C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804B3F50  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3F54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B3F58  4B F0 6F ED */	bl xyz_t_add
/* 804B3F5C  38 00 00 00 */	li r0, 0
/* 804B3F60  7F A3 EB 78 */	mr r3, r29
/* 804B3F64  90 01 00 08 */	stw r0, 8(r1)
/* 804B3F68  7F C4 F3 78 */	mr r4, r30
/* 804B3F6C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804B3F70  38 FF 00 44 */	addi r7, r31, 0x44
/* 804B3F74  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B3F78  39 01 00 10 */	addi r8, r1, 0x10
/* 804B3F7C  39 40 00 00 */	li r10, 0
/* 804B3F80  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 804B3F84  89 3F 00 72 */	lbz r9, 0x72(r31)
/* 804B3F88  48 00 0A 65 */	bl bit_cmn_single_drawS
/* 804B3F8C  39 61 00 40 */	addi r11, r1, 0x40
/* 804B3F90  4B BE 6F 91 */	bl func_8009AF20
/* 804B3F94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B3F98  7C 08 03 A6 */	mtlr r0
/* 804B3F9C  38 21 00 40 */	addi r1, r1, 0x40
/* 804B3FA0  4E 80 00 20 */	blr 
