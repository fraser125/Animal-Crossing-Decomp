lbl_803BDC04:
/* 803BDC04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803BDC08  7C 08 02 A6 */	mflr r0
/* 803BDC0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803BDC10  39 61 00 50 */	addi r11, r1, 0x50
/* 803BDC14  4B CD D2 B5 */	bl func_8009AEC8
/* 803BDC18  2C 04 00 00 */	cmpwi r4, 0
/* 803BDC1C  7C 7B 1B 78 */	mr r27, r3
/* 803BDC20  3B 80 00 14 */	li r28, 0x14
/* 803BDC24  3B E0 00 02 */	li r31, 2
/* 803BDC28  40 82 00 0C */	bne lbl_803BDC34
/* 803BDC2C  3B E0 00 0D */	li r31, 0xd
/* 803BDC30  3B 80 00 13 */	li r28, 0x13
lbl_803BDC34:
/* 803BDC34  7F 64 DB 78 */	mr r4, r27
/* 803BDC38  7F E5 FB 78 */	mr r5, r31
/* 803BDC3C  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BDC40  4B C4 58 51 */	bl memcpy
/* 803BDC44  7F 5B FA 14 */	add r26, r27, r31
/* 803BDC48  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BDC4C  3B BA 00 01 */	addi r29, r26, 1
/* 803BDC50  23 DF 00 14 */	subfic r30, r31, 0x14
/* 803BDC54  7F A4 EB 78 */	mr r4, r29
/* 803BDC58  7C 63 FA 14 */	add r3, r3, r31
/* 803BDC5C  7F C5 F3 78 */	mr r5, r30
/* 803BDC60  4B C4 58 31 */	bl memcpy
/* 803BDC64  7F 84 E3 78 */	mr r4, r28
/* 803BDC68  38 61 00 08 */	addi r3, r1, 8
/* 803BDC6C  4B C9 F3 FD */	bl bzero
/* 803BDC70  88 1A 00 00 */	lbz r0, 0(r26)
/* 803BDC74  3C 60 80 65 */	lis r3, mMpswd_select_idx_table@ha /* 0x80656FEC@ha */
/* 803BDC78  38 63 6F EC */	addi r3, r3, mMpswd_select_idx_table@l /* 0x80656FEC@l */
/* 803BDC7C  38 C1 00 08 */	addi r6, r1, 8
/* 803BDC80  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 803BDC84  39 40 00 00 */	li r10, 0
/* 803BDC88  7D 03 00 2E */	lwzx r8, r3, r0
/* 803BDC8C  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BDC90  48 00 00 5C */	b lbl_803BDCEC
lbl_803BDC94:
/* 803BDC94  38 00 00 08 */	li r0, 8
/* 803BDC98  88 E3 00 00 */	lbz r7, 0(r3)
/* 803BDC9C  39 60 00 00 */	li r11, 0
/* 803BDCA0  38 80 00 00 */	li r4, 0
/* 803BDCA4  7C 09 03 A6 */	mtctr r0
lbl_803BDCA8:
/* 803BDCA8  7C 08 20 2E */	lwzx r0, r8, r4
/* 803BDCAC  7D 2A 02 14 */	add r9, r10, r0
/* 803BDCB0  7C 09 E0 00 */	cmpw r9, r28
/* 803BDCB4  41 80 00 08 */	blt lbl_803BDCBC
/* 803BDCB8  7D 3C 48 50 */	subf r9, r28, r9
lbl_803BDCBC:
/* 803BDCBC  7C E0 5E 30 */	sraw r0, r7, r11
/* 803BDCC0  7C A6 48 AE */	lbzx r5, r6, r9
/* 803BDCC4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803BDCC8  38 84 00 04 */	addi r4, r4, 4
/* 803BDCCC  7C 00 58 30 */	slw r0, r0, r11
/* 803BDCD0  39 6B 00 01 */	addi r11, r11, 1
/* 803BDCD4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803BDCD8  7C A0 03 78 */	or r0, r5, r0
/* 803BDCDC  7C 06 49 AE */	stbx r0, r6, r9
/* 803BDCE0  42 00 FF C8 */	bdnz lbl_803BDCA8
/* 803BDCE4  39 4A 00 01 */	addi r10, r10, 1
/* 803BDCE8  38 63 00 01 */	addi r3, r3, 1
lbl_803BDCEC:
/* 803BDCEC  7C 0A E0 00 */	cmpw r10, r28
/* 803BDCF0  41 80 FF A4 */	blt lbl_803BDC94
/* 803BDCF4  7F 63 DB 78 */	mr r3, r27
/* 803BDCF8  7F E5 FB 78 */	mr r5, r31
/* 803BDCFC  38 81 00 08 */	addi r4, r1, 8
/* 803BDD00  4B C4 57 91 */	bl memcpy
/* 803BDD04  38 81 00 08 */	addi r4, r1, 8
/* 803BDD08  7F A3 EB 78 */	mr r3, r29
/* 803BDD0C  7F C5 F3 78 */	mr r5, r30
/* 803BDD10  7C 84 FA 14 */	add r4, r4, r31
/* 803BDD14  4B C4 57 7D */	bl memcpy
/* 803BDD18  39 61 00 50 */	addi r11, r1, 0x50
/* 803BDD1C  4B CD D1 F9 */	bl func_8009AF14
/* 803BDD20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803BDD24  7C 08 03 A6 */	mtlr r0
/* 803BDD28  38 21 00 50 */	addi r1, r1, 0x50
/* 803BDD2C  4E 80 00 20 */	blr 
