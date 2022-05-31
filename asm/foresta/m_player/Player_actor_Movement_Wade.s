lbl_804E8EF0:
/* 804E8EF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8EF4  7C 08 02 A6 */	mflr r0
/* 804E8EF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8F00  4B BB 1F D5 */	bl func_8009AED4
/* 804E8F04  7C 7D 1B 78 */	mr r29, r3
/* 804E8F08  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804E8F0C  3C A0 80 64 */	lis r5, lit_1076@ha /* 0x80646A18@ha */
/* 804E8F10  3C 80 80 65 */	lis r4, lit_8464@ha /* 0x80648498@ha */
/* 804E8F14  3C 60 80 65 */	lis r3, lit_8465@ha /* 0x8064849C@ha */
/* 804E8F18  C0 3D 0D 34 */	lfs f1, 0xd34(r29)
/* 804E8F1C  C0 46 65 68 */	lfs f2, lit_604@l(r6)  /* 0x80646568@l */
/* 804E8F20  3B FD 0D 1C */	addi r31, r29, 0xd1c
/* 804E8F24  C0 65 6A 18 */	lfs f3, lit_1076@l(r5)  /* 0x80646A18@l */
/* 804E8F28  3B DD 0D 28 */	addi r30, r29, 0xd28
/* 804E8F2C  C0 84 84 98 */	lfs f4, lit_8464@l(r4)  /* 0x80648498@l */
/* 804E8F30  C0 A3 84 9C */	lfs f5, lit_8465@l(r3)  /* 0x8064849C@l */
/* 804E8F34  4B ED 26 C9 */	bl get_percent_forAccelBrake
/* 804E8F38  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804E8F3C  7F A3 EB 78 */	mr r3, r29
/* 804E8F40  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804E8F44  38 80 00 00 */	li r4, 0
/* 804E8F48  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E8F4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E8F50  EC 02 00 2A */	fadds f0, f2, f0
/* 804E8F54  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 804E8F58  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804E8F5C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E8F60  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E8F64  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E8F68  EC 02 00 2A */	fadds f0, f2, f0
/* 804E8F6C  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 804E8F70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E8F74  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804E8F78  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E8F7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E8F80  EC 02 00 2A */	fadds f0, f2, f0
/* 804E8F84  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 804E8F88  4B FE CB 35 */	bl Player_actor_Movement_Base_Stop
/* 804E8F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8F90  4B BB 1F 91 */	bl func_8009AF20
/* 804E8F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8F98  7C 08 03 A6 */	mtlr r0
/* 804E8F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 804E8FA0  4E 80 00 20 */	blr 
