lbl_803B2270:
/* 803B2270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2274  7C 08 02 A6 */	mflr r0
/* 803B2278  3C C0 81 16 */	lis r6, Super_table_rom_start@ha /* 0x81167DC8@ha */
/* 803B227C  3D 00 81 16 */	lis r8, Super_rom_start@ha /* 0x81167DCC@ha */
/* 803B2280  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2284  39 26 7D C8 */	addi r9, r6, Super_table_rom_start@l /* 0x81167DC8@l */
/* 803B2288  7C 86 23 78 */	mr r6, r4
/* 803B228C  38 88 7D CC */	addi r4, r8, Super_rom_start@l /* 0x81167DCC@l */
/* 803B2290  7C 60 1B 78 */	mr r0, r3
/* 803B2294  80 69 00 00 */	lwz r3, 0(r9)
/* 803B2298  7C A7 2B 78 */	mr r7, r5
/* 803B229C  80 84 00 00 */	lwz r4, 0(r4)
/* 803B22A0  7C 05 03 78 */	mr r5, r0
/* 803B22A4  48 00 E4 55 */	bl mMsg_Get_BodyParam
/* 803B22A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B22AC  7C 08 03 A6 */	mtlr r0
/* 803B22B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B22B4  4E 80 00 20 */	blr 
