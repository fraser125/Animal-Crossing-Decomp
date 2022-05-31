lbl_803BDD30:
/* 803BDD30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803BDD34  7C 08 02 A6 */	mflr r0
/* 803BDD38  90 01 00 54 */	stw r0, 0x54(r1)
/* 803BDD3C  39 61 00 50 */	addi r11, r1, 0x50
/* 803BDD40  4B CD D1 89 */	bl func_8009AEC8
/* 803BDD44  2C 04 00 00 */	cmpwi r4, 0
/* 803BDD48  7C 7B 1B 78 */	mr r27, r3
/* 803BDD4C  3B 80 00 14 */	li r28, 0x14
/* 803BDD50  3B E0 00 02 */	li r31, 2
/* 803BDD54  40 82 00 0C */	bne lbl_803BDD60
/* 803BDD58  3B E0 00 0D */	li r31, 0xd
/* 803BDD5C  3B 80 00 13 */	li r28, 0x13
lbl_803BDD60:
/* 803BDD60  7F 64 DB 78 */	mr r4, r27
/* 803BDD64  7F E5 FB 78 */	mr r5, r31
/* 803BDD68  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BDD6C  4B C4 57 25 */	bl memcpy
/* 803BDD70  7F 5B FA 14 */	add r26, r27, r31
/* 803BDD74  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BDD78  3B BA 00 01 */	addi r29, r26, 1
/* 803BDD7C  23 DF 00 14 */	subfic r30, r31, 0x14
/* 803BDD80  7F A4 EB 78 */	mr r4, r29
/* 803BDD84  7C 63 FA 14 */	add r3, r3, r31
/* 803BDD88  7F C5 F3 78 */	mr r5, r30
/* 803BDD8C  4B C4 57 05 */	bl memcpy
/* 803BDD90  7F 84 E3 78 */	mr r4, r28
/* 803BDD94  38 61 00 08 */	addi r3, r1, 8
/* 803BDD98  4B C9 F2 D1 */	bl bzero
/* 803BDD9C  88 1A 00 00 */	lbz r0, 0(r26)
/* 803BDDA0  3C 60 80 65 */	lis r3, mMpswd_select_idx_table@ha /* 0x80656FEC@ha */
/* 803BDDA4  38 63 6F EC */	addi r3, r3, mMpswd_select_idx_table@l /* 0x80656FEC@l */
/* 803BDDA8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803BDDAC  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 803BDDB0  39 00 00 00 */	li r8, 0
/* 803BDDB4  7C E3 00 2E */	lwzx r7, r3, r0
/* 803BDDB8  38 61 00 08 */	addi r3, r1, 8
/* 803BDDBC  48 00 00 5C */	b lbl_803BDE18
lbl_803BDDC0:
/* 803BDDC0  38 00 00 08 */	li r0, 8
/* 803BDDC4  39 20 00 00 */	li r9, 0
/* 803BDDC8  38 80 00 00 */	li r4, 0
/* 803BDDCC  7C 09 03 A6 */	mtctr r0
lbl_803BDDD0:
/* 803BDDD0  7C 07 20 2E */	lwzx r0, r7, r4
/* 803BDDD4  7C 08 02 14 */	add r0, r8, r0
/* 803BDDD8  7C 00 E0 00 */	cmpw r0, r28
/* 803BDDDC  41 80 00 08 */	blt lbl_803BDDE4
/* 803BDDE0  7C 1C 00 50 */	subf r0, r28, r0
lbl_803BDDE4:
/* 803BDDE4  7C 05 00 AE */	lbzx r0, r5, r0
/* 803BDDE8  38 84 00 04 */	addi r4, r4, 4
/* 803BDDEC  88 C3 00 00 */	lbz r6, 0(r3)
/* 803BDDF0  7C 00 4E 30 */	sraw r0, r0, r9
/* 803BDDF4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803BDDF8  7C 00 48 30 */	slw r0, r0, r9
/* 803BDDFC  39 29 00 01 */	addi r9, r9, 1
/* 803BDE00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803BDE04  7C C0 03 78 */	or r0, r6, r0
/* 803BDE08  98 03 00 00 */	stb r0, 0(r3)
/* 803BDE0C  42 00 FF C4 */	bdnz lbl_803BDDD0
/* 803BDE10  39 08 00 01 */	addi r8, r8, 1
/* 803BDE14  38 63 00 01 */	addi r3, r3, 1
lbl_803BDE18:
/* 803BDE18  7C 08 E0 00 */	cmpw r8, r28
/* 803BDE1C  41 80 FF A4 */	blt lbl_803BDDC0
/* 803BDE20  7F 63 DB 78 */	mr r3, r27
/* 803BDE24  7F E5 FB 78 */	mr r5, r31
/* 803BDE28  38 81 00 08 */	addi r4, r1, 8
/* 803BDE2C  4B C4 56 65 */	bl memcpy
/* 803BDE30  38 81 00 08 */	addi r4, r1, 8
/* 803BDE34  7F A3 EB 78 */	mr r3, r29
/* 803BDE38  7F C5 F3 78 */	mr r5, r30
/* 803BDE3C  7C 84 FA 14 */	add r4, r4, r31
/* 803BDE40  4B C4 56 51 */	bl memcpy
/* 803BDE44  39 61 00 50 */	addi r11, r1, 0x50
/* 803BDE48  4B CD D0 CD */	bl func_8009AF14
/* 803BDE4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803BDE50  7C 08 03 A6 */	mtlr r0
/* 803BDE54  38 21 00 50 */	addi r1, r1, 0x50
/* 803BDE58  4E 80 00 20 */	blr 
