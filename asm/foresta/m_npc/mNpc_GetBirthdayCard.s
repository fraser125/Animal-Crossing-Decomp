lbl_803CE288:
/* 803CE288  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CE28C  7C 08 02 A6 */	mflr r0
/* 803CE290  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CE294  39 61 00 40 */	addi r11, r1, 0x40
/* 803CE298  4B CC CC 39 */	bl func_8009AED0
/* 803CE29C  7C 7C 1B 78 */	mr r28, r3
/* 803CE2A0  7C 9D 23 78 */	mr r29, r4
/* 803CE2A4  7C BE 2B 78 */	mr r30, r5
/* 803CE2A8  4B C8 EA 4D */	bl fqrand
/* 803CE2AC  3C 60 80 64 */	lis r3, lit_1327@ha /* 0x806428E0@ha */
/* 803CE2B0  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 803CE2B4  C0 03 28 E0 */	lfs f0, lit_1327@l(r3)  /* 0x806428E0@l */
/* 803CE2B8  7F A4 EB 78 */	mr r4, r29
/* 803CE2BC  1C 00 00 03 */	mulli r0, r0, 3
/* 803CE2C0  38 60 00 00 */	li r3, 0
/* 803CE2C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CE2C8  38 A0 00 08 */	li r5, 8
/* 803CE2CC  FC 00 00 1E */	fctiwz f0, f0
/* 803CE2D0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803CE2D4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 803CE2D8  7F E0 32 14 */	add r31, r0, r6
/* 803CE2DC  3B FF 00 EA */	addi r31, r31, 0xea
/* 803CE2E0  4B FE 36 79 */	bl mHandbill_Set_free_str
/* 803CE2E4  3C 60 81 17 */	lis r3, animal_name_1476@ha /* 0x8116B55C@ha */
/* 803CE2E8  7F C4 F3 78 */	mr r4, r30
/* 803CE2EC  38 63 B5 5C */	addi r3, r3, animal_name_1476@l /* 0x8116B55C@l */
/* 803CE2F0  48 00 36 61 */	bl mNpc_GetNpcWorldNameAnm
/* 803CE2F4  3C 80 81 17 */	lis r4, animal_name_1476@ha /* 0x8116B55C@ha */
/* 803CE2F8  38 60 00 01 */	li r3, 1
/* 803CE2FC  38 84 B5 5C */	addi r4, r4, animal_name_1476@l /* 0x8116B55C@l */
/* 803CE300  38 A0 00 08 */	li r5, 8
/* 803CE304  4B FE 36 55 */	bl mHandbill_Set_free_str
/* 803CE308  38 61 00 08 */	addi r3, r1, 8
/* 803CE30C  4B FF FE F5 */	bl mNpc_GetBirthdayPresent
/* 803CE310  A0 81 00 08 */	lhz r4, 8(r1)
/* 803CE314  38 61 00 0C */	addi r3, r1, 0xc
/* 803CE318  4B FE 76 8D */	bl mIN_copy_name_str
/* 803CE31C  38 81 00 0C */	addi r4, r1, 0xc
/* 803CE320  38 60 00 02 */	li r3, 2
/* 803CE324  38 A0 00 10 */	li r5, 0x10
/* 803CE328  4B FE 36 31 */	bl mHandbill_Set_free_str
/* 803CE32C  4B FF F9 85 */	bl mNpc_GetPaperType
/* 803CE330  A0 C1 00 08 */	lhz r6, 8(r1)
/* 803CE334  7C 67 1B 78 */	mr r7, r3
/* 803CE338  7F 83 E3 78 */	mr r3, r28
/* 803CE33C  7F A4 EB 78 */	mr r4, r29
/* 803CE340  7F C5 F3 78 */	mr r5, r30
/* 803CE344  7F E8 FB 78 */	mr r8, r31
/* 803CE348  4B FF F9 C9 */	bl mNpc_LoadMailDataCommon2
/* 803CE34C  39 61 00 40 */	addi r11, r1, 0x40
/* 803CE350  4B CC CB CD */	bl func_8009AF1C
/* 803CE354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CE358  7C 08 03 A6 */	mtlr r0
/* 803CE35C  38 21 00 40 */	addi r1, r1, 0x40
/* 803CE360  4E 80 00 20 */	blr 
