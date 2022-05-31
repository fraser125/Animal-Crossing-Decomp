lbl_805CD768:
/* 805CD768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD76C  7C 08 02 A6 */	mflr r0
/* 805CD770  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD774  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD778  4B AC D7 55 */	bl func_8009AECC
/* 805CD77C  7C 7B 1B 78 */	mr r27, r3
/* 805CD780  7C 9C 23 78 */	mr r28, r4
/* 805CD784  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805CD788  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD78C  28 04 FE 31 */	cmplwi r4, 0xfe31
/* 805CD790  7C BD 2B 78 */	mr r29, r5
/* 805CD794  83 C6 09 DC */	lwz r30, 0x9dc(r6)
/* 805CD798  41 80 00 38 */	blt lbl_805CD7D0
/* 805CD79C  28 04 FE 38 */	cmplwi r4, 0xfe38
/* 805CD7A0  41 81 00 30 */	bgt lbl_805CD7D0
/* 805CD7A4  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 805CD7A8  28 05 FE 31 */	cmplwi r5, 0xfe31
/* 805CD7AC  41 80 00 24 */	blt lbl_805CD7D0
/* 805CD7B0  28 05 FE 38 */	cmplwi r5, 0xfe38
/* 805CD7B4  41 81 00 1C */	bgt lbl_805CD7D0
/* 805CD7B8  3C 84 FF FF */	addis r4, r4, 0xffff
/* 805CD7BC  3C A5 FF FF */	addis r5, r5, 0xffff
/* 805CD7C0  38 A5 01 CF */	addi r5, r5, 0x1cf
/* 805CD7C4  38 84 01 CF */	addi r4, r4, 0x1cf
/* 805CD7C8  48 01 BF C5 */	bl mNW_swap_image_no
/* 805CD7CC  48 00 00 C8 */	b lbl_805CD894
lbl_805CD7D0:
/* 805CD7D0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 805CD7D4  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805CD7D8  41 80 00 48 */	blt lbl_805CD820
/* 805CD7DC  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805CD7E0  41 81 00 40 */	bgt lbl_805CD820
/* 805CD7E4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805CD7E8  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805CD7EC  41 80 00 34 */	blt lbl_805CD820
/* 805CD7F0  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805CD7F4  41 81 00 2C */	bgt lbl_805CD820
/* 805CD7F8  7F 63 DB 78 */	mr r3, r27
/* 805CD7FC  7F A4 EB 78 */	mr r4, r29
/* 805CD800  4B FF FE 9D */	bl mCO_itemNo_to_data
/* 805CD804  7C 7F 1B 78 */	mr r31, r3
/* 805CD808  7F 63 DB 78 */	mr r3, r27
/* 805CD80C  7F 84 E3 78 */	mr r4, r28
/* 805CD810  4B FF FE 8D */	bl mCO_itemNo_to_data
/* 805CD814  7F E4 FB 78 */	mr r4, r31
/* 805CD818  4B DF C5 15 */	bl mNW_SwapOriginalData
/* 805CD81C  48 00 00 78 */	b lbl_805CD894
lbl_805CD820:
/* 805CD820  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 805CD824  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805CD828  41 80 00 34 */	blt lbl_805CD85C
/* 805CD82C  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805CD830  41 81 00 2C */	bgt lbl_805CD85C
/* 805CD834  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805CD838  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805CD83C  41 80 00 20 */	blt lbl_805CD85C
/* 805CD840  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805CD844  41 81 00 18 */	bgt lbl_805CD85C
/* 805CD848  7F 63 DB 78 */	mr r3, r27
/* 805CD84C  7F 84 E3 78 */	mr r4, r28
/* 805CD850  7F A5 EB 78 */	mr r5, r29
/* 805CD854  4B FF FE B5 */	bl mCO_swap_image_2
/* 805CD858  48 00 00 3C */	b lbl_805CD894
lbl_805CD85C:
/* 805CD85C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805CD860  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805CD864  41 80 00 30 */	blt lbl_805CD894
/* 805CD868  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805CD86C  41 81 00 28 */	bgt lbl_805CD894
/* 805CD870  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 805CD874  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805CD878  41 80 00 1C */	blt lbl_805CD894
/* 805CD87C  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805CD880  41 81 00 14 */	bgt lbl_805CD894
/* 805CD884  7F 63 DB 78 */	mr r3, r27
/* 805CD888  7F A4 EB 78 */	mr r4, r29
/* 805CD88C  7F 85 E3 78 */	mr r5, r28
/* 805CD890  4B FF FE 79 */	bl mCO_swap_image_2
lbl_805CD894:
/* 805CD894  28 1E 00 00 */	cmplwi r30, 0
/* 805CD898  41 82 00 28 */	beq lbl_805CD8C0
/* 805CD89C  3C 9E FF FF */	addis r4, r30, 0xffff
/* 805CD8A0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 805CD8A4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805CD8A8  7C 64 1A 14 */	add r3, r4, r3
/* 805CD8AC  7C 84 02 14 */	add r4, r4, r0
/* 805CD8B0  88 A3 01 F8 */	lbz r5, 0x1f8(r3)
/* 805CD8B4  88 04 01 F8 */	lbz r0, 0x1f8(r4)
/* 805CD8B8  98 03 01 F8 */	stb r0, 0x1f8(r3)
/* 805CD8BC  98 A4 01 F8 */	stb r5, 0x1f8(r4)
lbl_805CD8C0:
/* 805CD8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD8C4  4B AC D6 55 */	bl func_8009AF18
/* 805CD8C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD8CC  7C 08 03 A6 */	mtlr r0
/* 805CD8D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD8D4  4E 80 00 20 */	blr 
