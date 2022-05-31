lbl_803BDB74:
/* 803BDB74  3C C0 80 65 */	lis r6, key_idx@ha /* 0x8065702C@ha */
/* 803BDB78  54 A8 10 3A */	slwi r8, r5, 2
/* 803BDB7C  38 A6 70 2C */	addi r5, r6, key_idx@l /* 0x8065702C@l */
/* 803BDB80  3C E0 80 65 */	lis r7, mMpswd_transposition_cipher_char_table@ha /* 0x80656CE4@ha */
/* 803BDB84  7C 05 40 2E */	lwzx r0, r5, r8
/* 803BDB88  38 C7 6C E4 */	addi r6, r7, mMpswd_transposition_cipher_char_table@l /* 0x80656CE4@l */
/* 803BDB8C  2C 04 00 01 */	cmpwi r4, 1
/* 803BDB90  7C 86 40 2E */	lwzx r4, r6, r8
/* 803BDB94  7C 03 00 AE */	lbzx r0, r3, r0
/* 803BDB98  39 20 00 01 */	li r9, 1
/* 803BDB9C  54 00 1E 78 */	rlwinm r0, r0, 3, 0x19, 0x1c
/* 803BDBA0  7C 84 02 14 */	add r4, r4, r0
/* 803BDBA4  80 C4 00 00 */	lwz r6, 0(r4)
/* 803BDBA8  80 E4 00 04 */	lwz r7, 4(r4)
/* 803BDBAC  40 82 00 08 */	bne lbl_803BDBB4
/* 803BDBB0  39 20 FF FF */	li r9, -1
lbl_803BDBB4:
/* 803BDBB4  38 00 00 15 */	li r0, 0x15
/* 803BDBB8  39 60 00 00 */	li r11, 0
/* 803BDBBC  39 40 00 00 */	li r10, 0
/* 803BDBC0  7C 09 03 A6 */	mtctr r0
lbl_803BDBC4:
/* 803BDBC4  7C 05 40 2E */	lwzx r0, r5, r8
/* 803BDBC8  7C 0A 00 00 */	cmpw r10, r0
/* 803BDBCC  41 82 00 28 */	beq lbl_803BDBF4
/* 803BDBD0  7C 06 58 AE */	lbzx r0, r6, r11
/* 803BDBD4  39 6B 00 01 */	addi r11, r11, 1
/* 803BDBD8  88 83 00 00 */	lbz r4, 0(r3)
/* 803BDBDC  7C 0B 38 00 */	cmpw r11, r7
/* 803BDBE0  7C 09 01 D6 */	mullw r0, r9, r0
/* 803BDBE4  7C 04 02 14 */	add r0, r4, r0
/* 803BDBE8  98 03 00 00 */	stb r0, 0(r3)
/* 803BDBEC  41 80 00 08 */	blt lbl_803BDBF4
/* 803BDBF0  39 60 00 00 */	li r11, 0
lbl_803BDBF4:
/* 803BDBF4  38 63 00 01 */	addi r3, r3, 1
/* 803BDBF8  39 4A 00 01 */	addi r10, r10, 1
/* 803BDBFC  42 00 FF C8 */	bdnz lbl_803BDBC4
/* 803BDC00  4E 80 00 20 */	blr 
