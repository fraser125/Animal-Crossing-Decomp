lbl_803CE780:
/* 803CE780  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CE784  7C 08 02 A6 */	mflr r0
/* 803CE788  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CE78C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CE790  4B CC C7 3D */	bl func_8009AECC
/* 803CE794  7C 7B 1B 79 */	or. r27, r3, r3
/* 803CE798  3B C0 00 00 */	li r30, 0
/* 803CE79C  3B A0 FF FF */	li r29, -1
/* 803CE7A0  7F 7F DB 78 */	mr r31, r27
/* 803CE7A4  41 82 00 C4 */	beq lbl_803CE868
/* 803CE7A8  3B 80 00 00 */	li r28, 0
lbl_803CE7AC:
/* 803CE7AC  7F 63 DB 78 */	mr r3, r27
/* 803CE7B0  4B FF D0 C1 */	bl mNpc_CheckFreeAnimalMemory
/* 803CE7B4  2C 03 00 00 */	cmpwi r3, 0
/* 803CE7B8  40 82 00 18 */	bne lbl_803CE7D0
/* 803CE7BC  88 1B 00 31 */	lbz r0, 0x31(r27)
/* 803CE7C0  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 803CE7C4  28 00 00 01 */	cmplwi r0, 1
/* 803CE7C8  40 82 00 08 */	bne lbl_803CE7D0
/* 803CE7CC  3B DE 00 01 */	addi r30, r30, 1
lbl_803CE7D0:
/* 803CE7D0  3B 9C 00 01 */	addi r28, r28, 1
/* 803CE7D4  3B 7B 01 38 */	addi r27, r27, 0x138
/* 803CE7D8  2C 1C 00 07 */	cmpwi r28, 7
/* 803CE7DC  41 80 FF D0 */	blt lbl_803CE7AC
/* 803CE7E0  2C 1E 00 00 */	cmpwi r30, 0
/* 803CE7E4  40 81 00 84 */	ble lbl_803CE868
/* 803CE7E8  4B C8 E5 0D */	bl fqrand
/* 803CE7EC  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 803CE7F0  3C 00 43 30 */	lis r0, 0x4330
/* 803CE7F4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803CE7F8  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803CE7FC  7F FB FB 78 */	mr r27, r31
/* 803CE800  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803CE804  90 01 00 08 */	stw r0, 8(r1)
/* 803CE808  3B E0 00 00 */	li r31, 0
/* 803CE80C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803CE810  EC 00 10 28 */	fsubs f0, f0, f2
/* 803CE814  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CE818  FC 00 00 1E */	fctiwz f0, f0
/* 803CE81C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CE820  83 C1 00 14 */	lwz r30, 0x14(r1)
lbl_803CE824:
/* 803CE824  7F 63 DB 78 */	mr r3, r27
/* 803CE828  4B FF D0 49 */	bl mNpc_CheckFreeAnimalMemory
/* 803CE82C  2C 03 00 00 */	cmpwi r3, 0
/* 803CE830  40 82 00 28 */	bne lbl_803CE858
/* 803CE834  88 1B 00 31 */	lbz r0, 0x31(r27)
/* 803CE838  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 803CE83C  28 00 00 01 */	cmplwi r0, 1
/* 803CE840  40 82 00 18 */	bne lbl_803CE858
/* 803CE844  2C 1E 00 00 */	cmpwi r30, 0
/* 803CE848  41 81 00 0C */	bgt lbl_803CE854
/* 803CE84C  7F FD FB 78 */	mr r29, r31
/* 803CE850  48 00 00 18 */	b lbl_803CE868
lbl_803CE854:
/* 803CE854  3B DE FF FF */	addi r30, r30, -1
lbl_803CE858:
/* 803CE858  3B FF 00 01 */	addi r31, r31, 1
/* 803CE85C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 803CE860  2C 1F 00 07 */	cmpwi r31, 7
/* 803CE864  41 80 FF C0 */	blt lbl_803CE824
lbl_803CE868:
/* 803CE868  7F A3 EB 78 */	mr r3, r29
/* 803CE86C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CE870  4B CC C6 A9 */	bl func_8009AF18
/* 803CE874  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CE878  7C 08 03 A6 */	mtlr r0
/* 803CE87C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CE880  4E 80 00 20 */	blr 
