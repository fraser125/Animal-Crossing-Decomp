lbl_803B684C:
/* 803B684C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6850  7C 08 02 A6 */	mflr r0
/* 803B6854  38 A0 00 00 */	li r5, 0
/* 803B6858  38 C0 00 00 */	li r6, 0
/* 803B685C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6860  38 E0 00 00 */	li r7, 0
/* 803B6864  39 00 00 00 */	li r8, 0
/* 803B6868  39 20 00 00 */	li r9, 0
/* 803B686C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B6870  7C 9F 23 78 */	mr r31, r4
/* 803B6874  38 80 00 01 */	li r4, 1
/* 803B6878  93 C1 00 08 */	stw r30, 8(r1)
/* 803B687C  7C 7E 1B 78 */	mr r30, r3
/* 803B6880  7F E3 FB 78 */	mr r3, r31
/* 803B6884  48 00 50 79 */	bl Light_diffuse_ct
/* 803B6888  7F C3 F3 78 */	mr r3, r30
/* 803B688C  7F E5 FB 78 */	mr r5, r31
/* 803B6890  38 9E 1D 90 */	addi r4, r30, 0x1d90
/* 803B6894  48 00 58 E9 */	bl Global_light_list_new
/* 803B6898  38 7F 00 0E */	addi r3, r31, 0xe
/* 803B689C  38 80 00 01 */	li r4, 1
/* 803B68A0  38 A0 00 00 */	li r5, 0
/* 803B68A4  38 C0 00 00 */	li r6, 0
/* 803B68A8  38 E0 00 00 */	li r7, 0
/* 803B68AC  39 00 00 00 */	li r8, 0
/* 803B68B0  39 20 00 00 */	li r9, 0
/* 803B68B4  48 00 50 49 */	bl Light_diffuse_ct
/* 803B68B8  7F C3 F3 78 */	mr r3, r30
/* 803B68BC  38 9E 1D 90 */	addi r4, r30, 0x1d90
/* 803B68C0  38 BF 00 0E */	addi r5, r31, 0xe
/* 803B68C4  48 00 58 B9 */	bl Global_light_list_new
/* 803B68C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B68CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B68D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B68D4  7C 08 03 A6 */	mtlr r0
/* 803B68D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B68DC  4E 80 00 20 */	blr 
