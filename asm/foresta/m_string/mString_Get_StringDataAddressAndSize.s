lbl_803EEC84:
/* 803EEC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEC88  7C 08 02 A6 */	mflr r0
/* 803EEC8C  3C C0 81 17 */	lis r6, data_81171458@ha /* 0x81171458@ha */
/* 803EEC90  3D 00 81 17 */	lis r8, String_rom_start@ha /* 0x8117145C@ha */
/* 803EEC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEC98  39 26 14 58 */	addi r9, r6, data_81171458@l /* 0x81171458@l */
/* 803EEC9C  7C 86 23 78 */	mr r6, r4
/* 803EECA0  38 88 14 5C */	addi r4, r8, String_rom_start@l /* 0x8117145C@l */
/* 803EECA4  7C 60 1B 78 */	mr r0, r3
/* 803EECA8  80 69 00 00 */	lwz r3, 0(r9)
/* 803EECAC  7C A7 2B 78 */	mr r7, r5
/* 803EECB0  80 84 00 00 */	lwz r4, 0(r4)
/* 803EECB4  7C 05 03 78 */	mr r5, r0
/* 803EECB8  4B FD 1A 41 */	bl mMsg_Get_BodyParam
/* 803EECBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EECC0  7C 08 03 A6 */	mtlr r0
/* 803EECC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EECC8  4E 80 00 20 */	blr 
