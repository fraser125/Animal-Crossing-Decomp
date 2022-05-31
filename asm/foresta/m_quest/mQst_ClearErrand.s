lbl_803E294C:
/* 803E294C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2950  7C 08 02 A6 */	mflr r0
/* 803E2954  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2958  39 61 00 20 */	addi r11, r1, 0x20
/* 803E295C  4B CB 85 71 */	bl func_8009AECC
/* 803E2960  7C 7B 1B 78 */	mr r27, r3
/* 803E2964  7C 9C 23 78 */	mr r28, r4
/* 803E2968  3B A0 00 00 */	li r29, 0
/* 803E296C  3B C0 00 00 */	li r30, 0
/* 803E2970  3B E0 FF FF */	li r31, -1
/* 803E2974  48 00 00 4C */	b lbl_803E29C0
lbl_803E2978:
/* 803E2978  7F 63 DB 78 */	mr r3, r27
/* 803E297C  4B FF FF 2D */	bl func_803E28A8
/* 803E2980  38 7B 00 0C */	addi r3, r27, 0xc
/* 803E2984  4B FE 8A 01 */	bl mNpc_ClearAnimalPersonalID
/* 803E2988  38 7B 00 1A */	addi r3, r27, 0x1a
/* 803E298C  4B FE 89 F9 */	bl mNpc_ClearAnimalPersonalID
/* 803E2990  B3 DB 00 28 */	sth r30, 0x28(r27)
/* 803E2994  38 7B 00 2C */	addi r3, r27, 0x2c
/* 803E2998  38 80 00 2C */	li r4, 0x2c
/* 803E299C  88 1B 00 2A */	lbz r0, 0x2a(r27)
/* 803E29A0  53 E0 1E 38 */	rlwimi r0, r31, 3, 0x18, 0x1c
/* 803E29A4  98 1B 00 2A */	stb r0, 0x2a(r27)
/* 803E29A8  88 1B 00 2A */	lbz r0, 0x2a(r27)
/* 803E29AC  53 C0 07 7E */	rlwimi r0, r30, 0, 0x1d, 0x1f
/* 803E29B0  98 1B 00 2A */	stb r0, 0x2a(r27)
/* 803E29B4  4B C7 A6 B5 */	bl bzero
/* 803E29B8  3B 7B 00 58 */	addi r27, r27, 0x58
/* 803E29BC  3B BD 00 01 */	addi r29, r29, 1
lbl_803E29C0:
/* 803E29C0  7C 1D E0 00 */	cmpw r29, r28
/* 803E29C4  41 80 FF B4 */	blt lbl_803E2978
/* 803E29C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E29CC  4B CB 85 4D */	bl func_8009AF18
/* 803E29D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E29D4  7C 08 03 A6 */	mtlr r0
/* 803E29D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E29DC  4E 80 00 20 */	blr 
