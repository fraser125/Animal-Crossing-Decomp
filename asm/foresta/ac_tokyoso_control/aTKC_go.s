lbl_804AABFC:
/* 804AABFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AAC00  7C 08 02 A6 */	mflr r0
/* 804AAC04  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AAC08  39 61 00 20 */	addi r11, r1, 0x20
/* 804AAC0C  4B BF 02 C1 */	bl func_8009AECC
/* 804AAC10  7C 7C 1B 78 */	mr r28, r3
/* 804AAC14  38 60 00 0F */	li r3, 0xf
/* 804AAC18  38 80 00 08 */	li r4, 8
/* 804AAC1C  4B EF 31 B1 */	bl mEv_get_save_area
/* 804AAC20  7C 7F 1B 78 */	mr r31, r3
/* 804AAC24  3B A0 00 00 */	li r29, 0
/* 804AAC28  3B 60 00 00 */	li r27, 0
lbl_804AAC2C:
/* 804AAC2C  7F DF EA 14 */	add r30, r31, r29
/* 804AAC30  88 7E 00 1A */	lbz r3, 0x1a(r30)
/* 804AAC34  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804AAC38  41 82 00 20 */	beq lbl_804AAC58
/* 804AAC3C  38 1B 00 12 */	addi r0, r27, 0x12
/* 804AAC40  7C 1F 02 AE */	lhax r0, r31, r0
/* 804AAC44  2C 00 F0 60 */	cmpwi r0, -4000
/* 804AAC48  40 80 00 28 */	bge lbl_804AAC70
/* 804AAC4C  38 03 00 01 */	addi r0, r3, 1
/* 804AAC50  98 1E 00 1A */	stb r0, 0x1a(r30)
/* 804AAC54  48 00 00 1C */	b lbl_804AAC70
lbl_804AAC58:
/* 804AAC58  38 1B 00 12 */	addi r0, r27, 0x12
/* 804AAC5C  7C 1F 02 AE */	lhax r0, r31, r0
/* 804AAC60  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 804AAC64  40 81 00 0C */	ble lbl_804AAC70
/* 804AAC68  38 03 00 01 */	addi r0, r3, 1
/* 804AAC6C  98 1E 00 1A */	stb r0, 0x1a(r30)
lbl_804AAC70:
/* 804AAC70  88 1E 00 1A */	lbz r0, 0x1a(r30)
/* 804AAC74  28 00 00 08 */	cmplwi r0, 8
/* 804AAC78  40 81 00 50 */	ble lbl_804AACC8
/* 804AAC7C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 804AAC80  28 00 00 00 */	cmplwi r0, 0
/* 804AAC84  40 82 00 44 */	bne lbl_804AACC8
/* 804AAC88  38 1D 00 01 */	addi r0, r29, 1
/* 804AAC8C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 804AAC90  38 03 00 1C */	addi r0, r3, 0x1c
/* 804AAC94  7C 1F 00 AE */	lbzx r0, r31, r0
/* 804AAC98  28 00 00 00 */	cmplwi r0, 0
/* 804AAC9C  40 82 00 10 */	bne lbl_804AACAC
/* 804AACA0  38 00 00 01 */	li r0, 1
/* 804AACA4  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 804AACA8  48 00 00 20 */	b lbl_804AACC8
lbl_804AACAC:
/* 804AACAC  7F 83 E3 78 */	mr r3, r28
/* 804AACB0  38 80 00 06 */	li r4, 6
/* 804AACB4  48 00 02 89 */	bl aTKC_setupAction
/* 804AACB8  38 60 00 02 */	li r3, 2
/* 804AACBC  38 00 02 58 */	li r0, 0x258
/* 804AACC0  98 7E 00 1C */	stb r3, 0x1c(r30)
/* 804AACC4  B0 1C 01 A4 */	sth r0, 0x1a4(r28)
lbl_804AACC8:
/* 804AACC8  3B BD 00 01 */	addi r29, r29, 1
/* 804AACCC  3B 7B 00 02 */	addi r27, r27, 2
/* 804AACD0  2C 1D 00 02 */	cmpwi r29, 2
/* 804AACD4  41 80 FF 58 */	blt lbl_804AAC2C
/* 804AACD8  39 61 00 20 */	addi r11, r1, 0x20
/* 804AACDC  4B BF 02 3D */	bl func_8009AF18
/* 804AACE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AACE4  7C 08 03 A6 */	mtlr r0
/* 804AACE8  38 21 00 20 */	addi r1, r1, 0x20
/* 804AACEC  4E 80 00 20 */	blr 
