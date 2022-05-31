lbl_803B22B8:
/* 803B22B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B22BC  7C 08 02 A6 */	mflr r0
/* 803B22C0  3C C0 81 16 */	lis r6, data_81167DB8@ha /* 0x81167DB8@ha */
/* 803B22C4  3D 00 81 16 */	lis r8, Ps_rom_start@ha /* 0x81167DBC@ha */
/* 803B22C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B22CC  39 26 7D B8 */	addi r9, r6, data_81167DB8@l /* 0x81167DB8@l */
/* 803B22D0  7C 86 23 78 */	mr r6, r4
/* 803B22D4  38 88 7D BC */	addi r4, r8, Ps_rom_start@l /* 0x81167DBC@l */
/* 803B22D8  7C 60 1B 78 */	mr r0, r3
/* 803B22DC  80 69 00 00 */	lwz r3, 0(r9)
/* 803B22E0  7C A7 2B 78 */	mr r7, r5
/* 803B22E4  80 84 00 00 */	lwz r4, 0(r4)
/* 803B22E8  7C 05 03 78 */	mr r5, r0
/* 803B22EC  48 00 E4 0D */	bl mMsg_Get_BodyParam
/* 803B22F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B22F4  7C 08 03 A6 */	mtlr r0
/* 803B22F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B22FC  4E 80 00 20 */	blr 
