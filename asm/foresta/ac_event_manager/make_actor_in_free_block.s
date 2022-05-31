lbl_8041BFAC:
/* 8041BFAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041BFB0  7C 08 02 A6 */	mflr r0
/* 8041BFB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041BFB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041BFBC  4B C7 EF 09 */	bl func_8009AEC4
/* 8041BFC0  7C 79 1B 78 */	mr r25, r3
/* 8041BFC4  7C 9A 23 78 */	mr r26, r4
/* 8041BFC8  7C BB 2B 78 */	mr r27, r5
/* 8041BFCC  7C DC 33 78 */	mr r28, r6
/* 8041BFD0  7C FD 3B 78 */	mr r29, r7
/* 8041BFD4  4B F8 8C F9 */	bl mFI_GetFieldId
/* 8041BFD8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041BFDC  41 82 00 0C */	beq lbl_8041BFE8
/* 8041BFE0  38 60 00 00 */	li r3, 0
/* 8041BFE4  48 00 00 A8 */	b lbl_8041C08C
lbl_8041BFE8:
/* 8041BFE8  57 9F 06 3E */	clrlwi r31, r28, 0x18
/* 8041BFEC  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041BFF0  7F E4 FB 78 */	mr r4, r31
/* 8041BFF4  4B F8 22 B9 */	bl mEv_get_common_place
/* 8041BFF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BFFC  40 82 00 8C */	bne lbl_8041C088
/* 8041C000  38 80 00 01 */	li r4, 1
/* 8041C004  B3 61 00 18 */	sth r27, 0x18(r1)
/* 8041C008  7F E3 FB 78 */	mr r3, r31
/* 8041C00C  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8041C010  B0 81 00 1A */	sth r4, 0x1a(r1)
/* 8041C014  7D 00 1A 14 */	add r8, r0, r3
/* 8041C018  7F 23 CB 78 */	mr r3, r25
/* 8041C01C  7F 44 D3 78 */	mr r4, r26
/* 8041C020  80 1A 00 00 */	lwz r0, 0(r26)
/* 8041C024  7F A7 EB 78 */	mr r7, r29
/* 8041C028  38 A1 00 08 */	addi r5, r1, 8
/* 8041C02C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8041C030  7D 00 42 14 */	add r8, r0, r8
/* 8041C034  4B FF EC F9 */	bl search_free_unit
/* 8041C038  2C 03 00 00 */	cmpwi r3, 0
/* 8041C03C  40 82 00 18 */	bne lbl_8041C054
/* 8041C040  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C044  38 80 00 20 */	li r4, 0x20
/* 8041C048  4B F8 19 89 */	bl mEv_set_status
/* 8041C04C  38 60 00 00 */	li r3, 0
/* 8041C050  48 00 00 3C */	b lbl_8041C08C
lbl_8041C054:
/* 8041C054  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C058  7F E4 FB 78 */	mr r4, r31
/* 8041C05C  4B F8 21 69 */	bl mEv_reserve_common_place
/* 8041C060  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C064  40 82 00 18 */	bne lbl_8041C07C
/* 8041C068  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C06C  38 80 00 20 */	li r4, 0x20
/* 8041C070  4B F8 19 61 */	bl mEv_set_status
/* 8041C074  38 60 00 00 */	li r3, 0
/* 8041C078  48 00 00 14 */	b lbl_8041C08C
lbl_8041C07C:
/* 8041C07C  38 81 00 08 */	addi r4, r1, 8
/* 8041C080  38 A0 00 14 */	li r5, 0x14
/* 8041C084  4B BE 74 0D */	bl memcpy
lbl_8041C088:
/* 8041C088  7F C3 F3 78 */	mr r3, r30
lbl_8041C08C:
/* 8041C08C  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C090  4B C7 EE 81 */	bl func_8009AF10
/* 8041C094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C098  7C 08 03 A6 */	mtlr r0
/* 8041C09C  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C0A0  4E 80 00 20 */	blr 
