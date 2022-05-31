lbl_8041BEC0:
/* 8041BEC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041BEC4  7C 08 02 A6 */	mflr r0
/* 8041BEC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041BECC  39 61 00 40 */	addi r11, r1, 0x40
/* 8041BED0  4B C7 EF F9 */	bl func_8009AEC8
/* 8041BED4  7C 7A 1B 78 */	mr r26, r3
/* 8041BED8  7C 9B 23 78 */	mr r27, r4
/* 8041BEDC  7C BC 2B 78 */	mr r28, r5
/* 8041BEE0  7C DD 33 78 */	mr r29, r6
/* 8041BEE4  4B F8 8D E9 */	bl mFI_GetFieldId
/* 8041BEE8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041BEEC  41 82 00 0C */	beq lbl_8041BEF8
/* 8041BEF0  38 60 00 00 */	li r3, 0
/* 8041BEF4  48 00 00 A0 */	b lbl_8041BF94
lbl_8041BEF8:
/* 8041BEF8  57 BF 06 3E */	clrlwi r31, r29, 0x18
/* 8041BEFC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BF00  7F E4 FB 78 */	mr r4, r31
/* 8041BF04  4B F8 23 A9 */	bl mEv_get_common_place
/* 8041BF08  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BF0C  40 82 00 84 */	bne lbl_8041BF90
/* 8041BF10  38 80 00 01 */	li r4, 1
/* 8041BF14  B3 81 00 18 */	sth r28, 0x18(r1)
/* 8041BF18  7F E3 FB 78 */	mr r3, r31
/* 8041BF1C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8041BF20  B0 81 00 1A */	sth r4, 0x1a(r1)
/* 8041BF24  7C C0 1A 14 */	add r6, r0, r3
/* 8041BF28  7F 43 D3 78 */	mr r3, r26
/* 8041BF2C  38 81 00 08 */	addi r4, r1, 8
/* 8041BF30  80 1B 00 00 */	lwz r0, 0(r27)
/* 8041BF34  38 A1 00 10 */	addi r5, r1, 0x10
/* 8041BF38  7C C0 32 14 */	add r6, r0, r6
/* 8041BF3C  4B FF F3 99 */	bl search_seaside_unit
/* 8041BF40  2C 03 00 00 */	cmpwi r3, 0
/* 8041BF44  40 82 00 18 */	bne lbl_8041BF5C
/* 8041BF48  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BF4C  38 80 00 20 */	li r4, 0x20
/* 8041BF50  4B F8 1A 81 */	bl mEv_set_status
/* 8041BF54  38 60 00 00 */	li r3, 0
/* 8041BF58  48 00 00 3C */	b lbl_8041BF94
lbl_8041BF5C:
/* 8041BF5C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BF60  7F E4 FB 78 */	mr r4, r31
/* 8041BF64  4B F8 22 61 */	bl mEv_reserve_common_place
/* 8041BF68  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041BF6C  40 82 00 18 */	bne lbl_8041BF84
/* 8041BF70  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041BF74  38 80 00 20 */	li r4, 0x20
/* 8041BF78  4B F8 1A 59 */	bl mEv_set_status
/* 8041BF7C  38 60 00 00 */	li r3, 0
/* 8041BF80  48 00 00 14 */	b lbl_8041BF94
lbl_8041BF84:
/* 8041BF84  38 81 00 08 */	addi r4, r1, 8
/* 8041BF88  38 A0 00 14 */	li r5, 0x14
/* 8041BF8C  4B BE 75 05 */	bl memcpy
lbl_8041BF90:
/* 8041BF90  7F C3 F3 78 */	mr r3, r30
lbl_8041BF94:
/* 8041BF94  39 61 00 40 */	addi r11, r1, 0x40
/* 8041BF98  4B C7 EF 7D */	bl func_8009AF14
/* 8041BF9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041BFA0  7C 08 03 A6 */	mtlr r0
/* 8041BFA4  38 21 00 40 */	addi r1, r1, 0x40
/* 8041BFA8  4E 80 00 20 */	blr 
