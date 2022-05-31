lbl_803D6FA8:
/* 803D6FA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D6FAC  7C 08 02 A6 */	mflr r0
/* 803D6FB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D6FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D6FB8  4B CC 3F 15 */	bl func_8009AECC
/* 803D6FBC  3C 80 80 66 */	lis r4, data_8065ADE8@ha /* 0x8065ADE8@ha */
/* 803D6FC0  7C 7B 1B 78 */	mr r27, r3
/* 803D6FC4  3B C4 AD E8 */	addi r30, r4, data_8065ADE8@l /* 0x8065ADE8@l */
/* 803D6FC8  3B A0 00 00 */	li r29, 0
/* 803D6FCC  4B FF 96 C5 */	bl mNpc_GetInAnimalP
/* 803D6FD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D6FD4  7C 7F 1B 78 */	mr r31, r3
/* 803D6FD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D6FDC  7F 63 DB 78 */	mr r3, r27
/* 803D6FE0  8B 84 00 19 */	lbz r28, 0x19(r4)
/* 803D6FE4  38 80 00 C8 */	li r4, 0xc8
/* 803D6FE8  38 A0 00 96 */	li r5, 0x96
/* 803D6FEC  38 C0 00 32 */	li r6, 0x32
/* 803D6FF0  38 E0 00 FF */	li r7, 0xff
/* 803D6FF4  4B C8 41 AD */	bl gfxprint_color
/* 803D6FF8  7F 63 DB 78 */	mr r3, r27
/* 803D6FFC  38 80 00 03 */	li r4, 3
/* 803D7000  38 A0 00 0A */	li r5, 0xa
/* 803D7004  4B C8 42 0D */	bl gfxprint_locate8x8
/* 803D7008  28 1C 00 0F */	cmplwi r28, 0xf
/* 803D700C  40 80 00 1C */	bge lbl_803D7028
/* 803D7010  1C 9C 09 88 */	mulli r4, r28, 0x988
/* 803D7014  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7018  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803D701C  7C 60 22 14 */	add r3, r0, r4
/* 803D7020  3F A3 00 01 */	addis r29, r3, 1
/* 803D7024  3B BD 74 38 */	addi r29, r29, 0x7438
lbl_803D7028:
/* 803D7028  28 1D 00 00 */	cmplwi r29, 0
/* 803D702C  41 82 00 48 */	beq lbl_803D7074
/* 803D7030  28 1F 00 00 */	cmplwi r31, 0
/* 803D7034  41 82 00 24 */	beq lbl_803D7058
/* 803D7038  88 DD 00 0C */	lbz r6, 0xc(r29)
/* 803D703C  7F 63 DB 78 */	mr r3, r27
/* 803D7040  88 FF 00 0C */	lbz r7, 0xc(r31)
/* 803D7044  7F 85 E3 78 */	mr r5, r28
/* 803D7048  38 9E 06 58 */	addi r4, r30, 0x658
/* 803D704C  4C C6 31 82 */	crclr 6
/* 803D7050  4B C8 48 CD */	bl gfxprint_printf
/* 803D7054  48 00 00 58 */	b lbl_803D70AC
lbl_803D7058:
/* 803D7058  88 DD 00 0C */	lbz r6, 0xc(r29)
/* 803D705C  7F 63 DB 78 */	mr r3, r27
/* 803D7060  7F 85 E3 78 */	mr r5, r28
/* 803D7064  38 9E 06 64 */	addi r4, r30, 0x664
/* 803D7068  4C C6 31 82 */	crclr 6
/* 803D706C  4B C8 48 B1 */	bl gfxprint_printf
/* 803D7070  48 00 00 3C */	b lbl_803D70AC
lbl_803D7074:
/* 803D7074  28 1F 00 00 */	cmplwi r31, 0
/* 803D7078  41 82 00 20 */	beq lbl_803D7098
/* 803D707C  88 DF 00 0C */	lbz r6, 0xc(r31)
/* 803D7080  7F 63 DB 78 */	mr r3, r27
/* 803D7084  7F 85 E3 78 */	mr r5, r28
/* 803D7088  38 9E 06 70 */	addi r4, r30, 0x670
/* 803D708C  4C C6 31 82 */	crclr 6
/* 803D7090  4B C8 48 8D */	bl gfxprint_printf
/* 803D7094  48 00 00 18 */	b lbl_803D70AC
lbl_803D7098:
/* 803D7098  7F 63 DB 78 */	mr r3, r27
/* 803D709C  7F 85 E3 78 */	mr r5, r28
/* 803D70A0  38 9E 06 7C */	addi r4, r30, 0x67c
/* 803D70A4  4C C6 31 82 */	crclr 6
/* 803D70A8  4B C8 48 75 */	bl gfxprint_printf
lbl_803D70AC:
/* 803D70AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D70B0  4B CC 3E 69 */	bl func_8009AF18
/* 803D70B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D70B8  7C 08 03 A6 */	mtlr r0
/* 803D70BC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D70C0  4E 80 00 20 */	blr 
