lbl_803FCEF4:
/* 803FCEF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FCEF8  7C 08 02 A6 */	mflr r0
/* 803FCEFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FCF00  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCF04  4B C9 DF C5 */	bl func_8009AEC8
/* 803FCF08  7C 7E 1B 78 */	mr r30, r3
/* 803FCF0C  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FCF10  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 803FCF14  3B A3 E7 08 */	addi r29, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FCF18  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 803FCF1C  7C 9F 23 78 */	mr r31, r4
/* 803FCF20  2C 00 00 01 */	cmpwi r0, 1
/* 803FCF24  83 9D 00 0C */	lwz r28, 0xc(r29)
/* 803FCF28  83 7E 00 00 */	lwz r27, 0(r30)
/* 803FCF2C  7C BA 2B 78 */	mr r26, r5
/* 803FCF30  40 82 00 10 */	bne lbl_803FCF40
/* 803FCF34  3C 60 80 66 */	lis r3, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FCF38  38 03 E6 A8 */	addi r0, r3, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FCF3C  7C 1C 03 78 */	mr r28, r0
lbl_803FCF40:
/* 803FCF40  28 05 00 00 */	cmplwi r5, 0
/* 803FCF44  41 82 00 90 */	beq lbl_803FCFD4
/* 803FCF48  2C 1B FF FF */	cmpwi r27, -1
/* 803FCF4C  41 82 00 88 */	beq lbl_803FCFD4
/* 803FCF50  38 00 00 01 */	li r0, 1
/* 803FCF54  90 1E 00 04 */	stw r0, 4(r30)
/* 803FCF58  80 7E 00 04 */	lwz r3, 4(r30)
/* 803FCF5C  4B FF D4 B5 */	bl mCD_get_offset
/* 803FCF60  1C 9B 00 94 */	mulli r4, r27, 0x94
/* 803FCF64  7C 60 1B 78 */	mr r0, r3
/* 803FCF68  7F 43 D3 78 */	mr r3, r26
/* 803FCF6C  80 BE 00 08 */	lwz r5, 8(r30)
/* 803FCF70  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 803FCF74  7C 07 03 78 */	mr r7, r0
/* 803FCF78  3B 44 00 54 */	addi r26, r4, 0x54
/* 803FCF7C  7F 84 E3 78 */	mr r4, r28
/* 803FCF80  7F 5E D2 14 */	add r26, r30, r26
/* 803FCF84  7F 68 DB 78 */	mr r8, r27
/* 803FCF88  39 3A 00 74 */	addi r9, r26, 0x74
/* 803FCF8C  4B FF B8 5D */	bl mCD_write_comp_bg
/* 803FCF90  7C 60 1B 78 */	mr r0, r3
/* 803FCF94  80 7A 00 74 */	lwz r3, 0x74(r26)
/* 803FCF98  7C 1B 03 78 */	mr r27, r0
/* 803FCF9C  4B FF D3 19 */	bl mCD_TransErrorCode
/* 803FCFA0  2C 1B 00 01 */	cmpwi r27, 1
/* 803FCFA4  90 7A 00 78 */	stw r3, 0x78(r26)
/* 803FCFA8  40 82 00 1C */	bne lbl_803FCFC4
/* 803FCFAC  38 00 00 02 */	li r0, 2
/* 803FCFB0  90 1E 00 04 */	stw r0, 4(r30)
/* 803FCFB4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803FCFB8  38 03 00 01 */	addi r0, r3, 1
/* 803FCFBC  90 1F 00 00 */	stw r0, 0(r31)
/* 803FCFC0  48 00 00 18 */	b lbl_803FCFD8
lbl_803FCFC4:
/* 803FCFC4  2C 1B 00 00 */	cmpwi r27, 0
/* 803FCFC8  41 82 00 10 */	beq lbl_803FCFD8
/* 803FCFCC  3B 60 FF FF */	li r27, -1
/* 803FCFD0  48 00 00 08 */	b lbl_803FCFD8
lbl_803FCFD4:
/* 803FCFD4  3B 60 FF FF */	li r27, -1
lbl_803FCFD8:
/* 803FCFD8  7F 63 DB 78 */	mr r3, r27
/* 803FCFDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FCFE0  4B C9 DF 35 */	bl func_8009AF14
/* 803FCFE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FCFE8  7C 08 03 A6 */	mtlr r0
/* 803FCFEC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FCFF0  4E 80 00 20 */	blr 
