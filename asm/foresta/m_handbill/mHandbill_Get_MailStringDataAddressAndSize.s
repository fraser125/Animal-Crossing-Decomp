lbl_803B2300:
/* 803B2300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2304  7C 08 02 A6 */	mflr r0
/* 803B2308  3C C0 81 16 */	lis r6, Handbill_table_rom_start@ha /* 0x81167DC0@ha */
/* 803B230C  3D 00 81 16 */	lis r8, Handbill_rom_start@ha /* 0x81167DC4@ha */
/* 803B2310  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2314  39 26 7D C0 */	addi r9, r6, Handbill_table_rom_start@l /* 0x81167DC0@l */
/* 803B2318  7C 86 23 78 */	mr r6, r4
/* 803B231C  38 88 7D C4 */	addi r4, r8, Handbill_rom_start@l /* 0x81167DC4@l */
/* 803B2320  7C 60 1B 78 */	mr r0, r3
/* 803B2324  80 69 00 00 */	lwz r3, 0(r9)
/* 803B2328  7C A7 2B 78 */	mr r7, r5
/* 803B232C  80 84 00 00 */	lwz r4, 0(r4)
/* 803B2330  7C 05 03 78 */	mr r5, r0
/* 803B2334  48 00 E3 C5 */	bl mMsg_Get_BodyParam
/* 803B2338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B233C  7C 08 03 A6 */	mtlr r0
/* 803B2340  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2344  4E 80 00 20 */	blr 
