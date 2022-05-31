lbl_803D19F4:
/* 803D19F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D19F8  7C 08 02 A6 */	mflr r0
/* 803D19FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D1A00  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1A04  4B CC 94 D1 */	bl func_8009AED4
/* 803D1A08  7C 7D 1B 78 */	mr r29, r3
/* 803D1A0C  3C 60 80 66 */	lis r3, data_8065ADE8@ha /* 0x8065ADE8@ha */
/* 803D1A10  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803D1A14  3B C0 00 00 */	li r30, 0
/* 803D1A18  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D1A1C  38 03 AD E8 */	addi r0, r3, data_8065ADE8@l /* 0x8065ADE8@l */
/* 803D1A20  7C 1F 03 78 */	mr r31, r0
/* 803D1A24  41 82 00 30 */	beq lbl_803D1A54
/* 803D1A28  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1A2C  7F A4 EB 78 */	mr r4, r29
/* 803D1A30  38 63 C5 2C */	addi r3, r3, load_name@l /* 0x8116C52C@l */
/* 803D1A34  38 A0 00 01 */	li r5, 1
/* 803D1A38  4B FF FE 65 */	bl mNpc_GetCacheName
/* 803D1A3C  2C 03 00 00 */	cmpwi r3, 0
/* 803D1A40  41 82 00 14 */	beq lbl_803D1A54
/* 803D1A44  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1A48  38 03 C5 2C */	addi r0, r3, load_name@l /* 0x8116C52C@l */
/* 803D1A4C  7C 1E 03 78 */	mr r30, r0
/* 803D1A50  48 00 00 8C */	b lbl_803D1ADC
lbl_803D1A54:
/* 803D1A54  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803D1A58  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 803D1A5C  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D1A60  40 82 00 30 */	bne lbl_803D1A90
/* 803D1A64  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1A68  7F A4 EB 78 */	mr r4, r29
/* 803D1A6C  38 63 C5 2C */	addi r3, r3, load_name@l /* 0x8116C52C@l */
/* 803D1A70  4B FF FD 9D */	bl mNpc_GetNpcWorldNameTableNo
/* 803D1A74  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1A78  7F A4 EB 78 */	mr r4, r29
/* 803D1A7C  38 63 C5 2C */	addi r3, r3, load_name@l /* 0x8116C52C@l */
/* 803D1A80  38 A0 00 01 */	li r5, 1
/* 803D1A84  7C 7E 1B 78 */	mr r30, r3
/* 803D1A88  4B FF FE 71 */	bl mNpc_SetCacheName
/* 803D1A8C  48 00 00 50 */	b lbl_803D1ADC
lbl_803D1A90:
/* 803D1A90  38 00 00 54 */	li r0, 0x54
/* 803D1A94  7C 09 03 A6 */	mtctr r0
lbl_803D1A98:
/* 803D1A98  A0 1F 00 00 */	lhz r0, 0(r31)
/* 803D1A9C  7C 03 00 40 */	cmplw r3, r0
/* 803D1AA0  40 82 00 34 */	bne lbl_803D1AD4
/* 803D1AA4  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1AA8  80 BF 00 04 */	lwz r5, 4(r31)
/* 803D1AAC  38 63 C5 2C */	addi r3, r3, load_name@l /* 0x8116C52C@l */
/* 803D1AB0  38 80 00 08 */	li r4, 8
/* 803D1AB4  48 01 D2 19 */	bl mString_Load_StringFromRom
/* 803D1AB8  3C 60 81 17 */	lis r3, load_name@ha /* 0x8116C52C@ha */
/* 803D1ABC  7F A4 EB 78 */	mr r4, r29
/* 803D1AC0  38 63 C5 2C */	addi r3, r3, load_name@l /* 0x8116C52C@l */
/* 803D1AC4  38 A0 00 01 */	li r5, 1
/* 803D1AC8  7C 7E 1B 78 */	mr r30, r3
/* 803D1ACC  4B FF FE 2D */	bl mNpc_SetCacheName
/* 803D1AD0  48 00 00 0C */	b lbl_803D1ADC
lbl_803D1AD4:
/* 803D1AD4  3B FF 00 0C */	addi r31, r31, 0xc
/* 803D1AD8  42 00 FF C0 */	bdnz lbl_803D1A98
lbl_803D1ADC:
/* 803D1ADC  7F C3 F3 78 */	mr r3, r30
/* 803D1AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1AE4  4B CC 94 3D */	bl func_8009AF20
/* 803D1AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D1AEC  7C 08 03 A6 */	mtlr r0
/* 803D1AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D1AF4  4E 80 00 20 */	blr 
