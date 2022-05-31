lbl_803FE84C:
/* 803FE84C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803FE850  7C 08 02 A6 */	mflr r0
/* 803FE854  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803FE858  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803FE85C  4B C9 C6 71 */	bl func_8009AECC
/* 803FE860  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A000@ha */
/* 803FE864  7C 7C 1B 78 */	mr r28, r3
/* 803FE868  38 64 A0 00 */	addi r3, r4, 0xA000 /* 0x0000A000@l */
/* 803FE86C  3B 60 00 00 */	li r27, 0
/* 803FE870  4B FF 8F 85 */	bl mCD_malloc_32
/* 803FE874  7C 60 1B 78 */	mr r0, r3
/* 803FE878  38 60 60 00 */	li r3, 0x6000
/* 803FE87C  7C 1D 03 78 */	mr r29, r0
/* 803FE880  4B FF 8F 75 */	bl mCD_malloc_32
/* 803FE884  2C 1C 00 00 */	cmpwi r28, 0
/* 803FE888  7C 7E 1B 78 */	mr r30, r3
/* 803FE88C  41 82 00 0C */	beq lbl_803FE898
/* 803FE890  2C 1C 00 01 */	cmpwi r28, 1
/* 803FE894  40 82 01 58 */	bne lbl_803FE9EC
lbl_803FE898:
/* 803FE898  28 1D 00 00 */	cmplwi r29, 0
/* 803FE89C  41 82 01 50 */	beq lbl_803FE9EC
/* 803FE8A0  28 1E 00 00 */	cmplwi r30, 0
/* 803FE8A4  41 82 01 48 */	beq lbl_803FE9EC
/* 803FE8A8  7F 9F E3 78 */	mr r31, r28
/* 803FE8AC  7F 85 E3 78 */	mr r5, r28
/* 803FE8B0  38 61 00 08 */	addi r3, r1, 8
/* 803FE8B4  38 80 20 00 */	li r4, 0x2000
/* 803FE8B8  4B FF 8F E9 */	bl mCD_check_card
/* 803FE8BC  2C 03 00 01 */	cmpwi r3, 1
/* 803FE8C0  40 82 01 2C */	bne lbl_803FE9EC
/* 803FE8C4  7F 83 E3 78 */	mr r3, r28
/* 803FE8C8  7F A4 EB 78 */	mr r4, r29
/* 803FE8CC  38 A0 00 00 */	li r5, 0
/* 803FE8D0  4B C9 1E 2D */	bl CARDMount
/* 803FE8D4  2C 03 00 00 */	cmpwi r3, 0
/* 803FE8D8  90 61 00 08 */	stw r3, 8(r1)
/* 803FE8DC  41 82 00 0C */	beq lbl_803FE8E8
/* 803FE8E0  2C 03 FF FA */	cmpwi r3, -6
/* 803FE8E4  40 82 00 D8 */	bne lbl_803FE9BC
lbl_803FE8E8:
/* 803FE8E8  7F E3 FB 78 */	mr r3, r31
/* 803FE8EC  4B C9 14 8D */	bl CARDCheck
/* 803FE8F0  2C 03 00 00 */	cmpwi r3, 0
/* 803FE8F4  90 61 00 08 */	stw r3, 8(r1)
/* 803FE8F8  40 82 00 B8 */	bne lbl_803FE9B0
/* 803FE8FC  3B 80 00 00 */	li r28, 0
lbl_803FE900:
/* 803FE900  7F E3 FB 78 */	mr r3, r31
/* 803FE904  7F 84 E3 78 */	mr r4, r28
/* 803FE908  38 A1 00 20 */	addi r5, r1, 0x20
/* 803FE90C  4B C9 3C ED */	bl CARDGetStatus
/* 803FE910  2C 03 00 00 */	cmpwi r3, 0
/* 803FE914  90 61 00 08 */	stw r3, 8(r1)
/* 803FE918  40 82 00 8C */	bne lbl_803FE9A4
/* 803FE91C  38 61 00 20 */	addi r3, r1, 0x20
/* 803FE920  4B FF C3 E9 */	bl mCD_CheckPassportFileStatus
/* 803FE924  2C 03 00 01 */	cmpwi r3, 1
/* 803FE928  40 82 00 7C */	bne lbl_803FE9A4
/* 803FE92C  7F E3 FB 78 */	mr r3, r31
/* 803FE930  38 81 00 20 */	addi r4, r1, 0x20
/* 803FE934  38 A1 00 0C */	addi r5, r1, 0xc
/* 803FE938  4B C9 2B 6D */	bl CARDOpen
/* 803FE93C  2C 03 00 00 */	cmpwi r3, 0
/* 803FE940  90 61 00 08 */	stw r3, 8(r1)
/* 803FE944  40 82 00 60 */	bne lbl_803FE9A4
/* 803FE948  7F C4 F3 78 */	mr r4, r30
/* 803FE94C  38 61 00 0C */	addi r3, r1, 0xc
/* 803FE950  38 A0 60 00 */	li r5, 0x6000
/* 803FE954  38 C0 00 00 */	li r6, 0
/* 803FE958  4B C9 34 E9 */	bl CARDRead
/* 803FE95C  2C 03 00 00 */	cmpwi r3, 0
/* 803FE960  90 61 00 08 */	stw r3, 8(r1)
/* 803FE964  40 82 00 38 */	bne lbl_803FE99C
/* 803FE968  38 7E 30 40 */	addi r3, r30, 0x3040
/* 803FE96C  38 80 2E 20 */	li r4, 0x2e20
/* 803FE970  4B FA DB 8D */	bl mFRm_ReturnCheckSum
/* 803FE974  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FE978  40 82 00 14 */	bne lbl_803FE98C
/* 803FE97C  38 7E 30 60 */	addi r3, r30, 0x3060
/* 803FE980  4B FE 16 C5 */	bl mPr_NullCheckPersonalID
/* 803FE984  2C 03 00 01 */	cmpwi r3, 1
/* 803FE988  40 82 00 14 */	bne lbl_803FE99C
lbl_803FE98C:
/* 803FE98C  38 61 00 0C */	addi r3, r1, 0xc
/* 803FE990  4B C9 2C 8D */	bl CARDClose
/* 803FE994  3B 60 00 01 */	li r27, 1
/* 803FE998  48 00 00 18 */	b lbl_803FE9B0
lbl_803FE99C:
/* 803FE99C  38 61 00 0C */	addi r3, r1, 0xc
/* 803FE9A0  4B C9 2C 7D */	bl CARDClose
lbl_803FE9A4:
/* 803FE9A4  3B 9C 00 01 */	addi r28, r28, 1
/* 803FE9A8  2C 1C 00 7F */	cmpwi r28, 0x7f
/* 803FE9AC  41 80 FF 54 */	blt lbl_803FE900
lbl_803FE9B0:
/* 803FE9B0  7F E3 FB 78 */	mr r3, r31
/* 803FE9B4  4B C9 1E 2D */	bl CARDUnmount
/* 803FE9B8  48 00 00 14 */	b lbl_803FE9CC
lbl_803FE9BC:
/* 803FE9BC  2C 03 FF F3 */	cmpwi r3, -13
/* 803FE9C0  40 82 00 0C */	bne lbl_803FE9CC
/* 803FE9C4  7F 83 E3 78 */	mr r3, r28
/* 803FE9C8  4B C9 1E 19 */	bl CARDUnmount
lbl_803FE9CC:
/* 803FE9CC  28 1D 00 00 */	cmplwi r29, 0
/* 803FE9D0  41 82 00 0C */	beq lbl_803FE9DC
/* 803FE9D4  7F A3 EB 78 */	mr r3, r29
/* 803FE9D8  4B FB DA DD */	bl zelda_free
lbl_803FE9DC:
/* 803FE9DC  28 1E 00 00 */	cmplwi r30, 0
/* 803FE9E0  41 82 00 0C */	beq lbl_803FE9EC
/* 803FE9E4  7F C3 F3 78 */	mr r3, r30
/* 803FE9E8  4B FB DA CD */	bl zelda_free
lbl_803FE9EC:
/* 803FE9EC  7F 63 DB 78 */	mr r3, r27
/* 803FE9F0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803FE9F4  4B C9 C5 25 */	bl func_8009AF18
/* 803FE9F8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803FE9FC  7C 08 03 A6 */	mtlr r0
/* 803FEA00  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803FEA04  4E 80 00 20 */	blr 
