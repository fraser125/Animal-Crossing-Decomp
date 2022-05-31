lbl_803BD7FC:
/* 803BD7FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BD800  7C 08 02 A6 */	mflr r0
/* 803BD804  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BD808  38 81 00 0C */	addi r4, r1, 0xc
/* 803BD80C  38 A1 00 14 */	addi r5, r1, 0x14
/* 803BD810  38 C1 00 08 */	addi r6, r1, 8
/* 803BD814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BD818  7C 7F 1B 78 */	mr r31, r3
/* 803BD81C  38 61 00 10 */	addi r3, r1, 0x10
/* 803BD820  7F E7 FB 78 */	mr r7, r31
/* 803BD824  4B FF FF 21 */	bl mMpswd_get_RSA_key_code
/* 803BD828  80 61 00 10 */	lwz r3, 0x10(r1)
/* 803BD82C  38 E0 00 00 */	li r7, 0
/* 803BD830  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BD834  39 00 00 00 */	li r8, 0
/* 803BD838  7C C3 01 D6 */	mullw r6, r3, r0
lbl_803BD83C:
/* 803BD83C  80 81 00 08 */	lwz r4, 8(r1)
/* 803BD840  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BD844  80 84 00 00 */	lwz r4, 0(r4)
/* 803BD848  35 23 FF FF */	addic. r9, r3, -1
/* 803BD84C  7C BF 20 AE */	lbzx r5, r31, r4
/* 803BD850  7C A0 2B 78 */	mr r0, r5
/* 803BD854  7D 29 03 A6 */	mtctr r9
/* 803BD858  40 81 00 1C */	ble lbl_803BD874
lbl_803BD85C:
/* 803BD85C  7C 60 29 D6 */	mullw r3, r0, r5
/* 803BD860  39 29 FF FF */	addi r9, r9, -1
/* 803BD864  7C 03 33 D6 */	divw r0, r3, r6
/* 803BD868  7C 00 31 D6 */	mullw r0, r0, r6
/* 803BD86C  7C 00 18 50 */	subf r0, r0, r3
/* 803BD870  42 00 FF EC */	bdnz lbl_803BD85C
lbl_803BD874:
/* 803BD874  7C 1F 21 AE */	stbx r0, r31, r4
/* 803BD878  54 00 C7 FE */	rlwinm r0, r0, 0x18, 0x1f, 0x1f
/* 803BD87C  7C 00 40 30 */	slw r0, r0, r8
/* 803BD880  39 08 00 01 */	addi r8, r8, 1
/* 803BD884  80 61 00 08 */	lwz r3, 8(r1)
/* 803BD888  7C E7 03 78 */	or r7, r7, r0
/* 803BD88C  2C 08 00 08 */	cmpwi r8, 8
/* 803BD890  38 03 00 04 */	addi r0, r3, 4
/* 803BD894  90 01 00 08 */	stw r0, 8(r1)
/* 803BD898  41 80 FF A4 */	blt lbl_803BD83C
/* 803BD89C  98 FF 00 14 */	stb r7, 0x14(r31)
/* 803BD8A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BD8A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BD8A8  7C 08 03 A6 */	mtlr r0
/* 803BD8AC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BD8B0  4E 80 00 20 */	blr 
