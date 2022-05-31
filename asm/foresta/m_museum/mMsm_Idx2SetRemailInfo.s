lbl_803C6490:
/* 803C6490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6494  7C 08 02 A6 */	mflr r0
/* 803C6498  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C649C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C64A0  4B CD 4A 31 */	bl func_8009AED0
/* 803C64A4  38 00 00 00 */	li r0, 0
/* 803C64A8  7C 7C 1B 79 */	or. r28, r3, r3
/* 803C64AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C64B0  7C 9D 23 78 */	mr r29, r4
/* 803C64B4  7C BE 2B 78 */	mr r30, r5
/* 803C64B8  7C DF 33 78 */	mr r31, r6
/* 803C64BC  90 01 00 08 */	stw r0, 8(r1)
/* 803C64C0  41 82 00 64 */	beq lbl_803C6524
/* 803C64C4  2C 1D 00 00 */	cmpwi r29, 0
/* 803C64C8  41 80 00 5C */	blt lbl_803C6524
/* 803C64CC  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 803C64D0  40 80 00 54 */	bge lbl_803C6524
/* 803C64D4  7F A5 EB 78 */	mr r5, r29
/* 803C64D8  38 61 00 0C */	addi r3, r1, 0xc
/* 803C64DC  38 81 00 08 */	addi r4, r1, 8
/* 803C64E0  4B FF FE A9 */	bl mMsm_GetRemailAddIdx
/* 803C64E4  80 01 00 08 */	lwz r0, 8(r1)
/* 803C64E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C64EC  2C 00 00 00 */	cmpwi r0, 0
/* 803C64F0  40 82 00 18 */	bne lbl_803C6508
/* 803C64F4  7C 7C 20 AE */	lbzx r3, r28, r4
/* 803C64F8  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 803C64FC  50 60 06 36 */	rlwimi r0, r3, 0, 0x18, 0x1b
/* 803C6500  7C 1C 21 AE */	stbx r0, r28, r4
/* 803C6504  48 00 00 14 */	b lbl_803C6518
lbl_803C6508:
/* 803C6508  7C 7C 20 AE */	lbzx r3, r28, r4
/* 803C650C  57 C0 26 76 */	rlwinm r0, r30, 4, 0x19, 0x1b
/* 803C6510  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 803C6514  7C 1C 21 AE */	stbx r0, r28, r4
lbl_803C6518:
/* 803C6518  57 A0 08 3C */	slwi r0, r29, 1
/* 803C651C  7C 7C 02 14 */	add r3, r28, r0
/* 803C6520  B3 E3 00 10 */	sth r31, 0x10(r3)
lbl_803C6524:
/* 803C6524  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6528  4B CD 49 F5 */	bl func_8009AF1C
/* 803C652C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6530  7C 08 03 A6 */	mtlr r0
/* 803C6534  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6538  4E 80 00 20 */	blr 
