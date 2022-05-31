lbl_8039E930:
/* 8039E930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039E934  7C 08 02 A6 */	mflr r0
/* 8039E938  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039E93C  39 61 00 20 */	addi r11, r1, 0x20
/* 8039E940  4B CF C5 89 */	bl func_8009AEC8
/* 8039E944  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039E948  7C 7A 1B 78 */	mr r26, r3
/* 8039E94C  3B A4 76 AC */	addi r29, r4, event_today@l /* 0x811676AC@l */
/* 8039E950  3B 60 00 00 */	li r27, 0
/* 8039E954  3B E0 00 00 */	li r31, 0
/* 8039E958  3B 80 00 00 */	li r28, 0
/* 8039E95C  3B C0 00 00 */	li r30, 0
lbl_8039E960:
/* 8039E960  7C 7D F0 2E */	lwzx r3, r29, r30
/* 8039E964  2C 03 FF FF */	cmpwi r3, -1
/* 8039E968  41 82 01 08 */	beq lbl_8039EA70
/* 8039E96C  38 80 00 01 */	li r4, 1
/* 8039E970  4B FF F1 91 */	bl mEv_check_status
/* 8039E974  2C 03 00 00 */	cmpwi r3, 0
/* 8039E978  41 82 00 F8 */	beq lbl_8039EA70
/* 8039E97C  7F 43 D3 78 */	mr r3, r26
/* 8039E980  38 80 00 F5 */	li r4, 0xf5
/* 8039E984  38 A0 00 C8 */	li r5, 0xc8
/* 8039E988  38 C0 00 AA */	li r6, 0xaa
/* 8039E98C  38 E0 00 FF */	li r7, 0xff
/* 8039E990  4B CB C8 11 */	bl gfxprint_color
/* 8039E994  7F 43 D3 78 */	mr r3, r26
/* 8039E998  38 9F 00 03 */	addi r4, r31, 3
/* 8039E99C  38 A0 00 05 */	li r5, 5
/* 8039E9A0  4B CB C8 71 */	bl gfxprint_locate8x8
/* 8039E9A4  3C 60 80 65 */	lis r3, lit_2076@ha /* 0x806521C8@ha */
/* 8039E9A8  7C BD F0 2E */	lwzx r5, r29, r30
/* 8039E9AC  38 83 21 C8 */	addi r4, r3, lit_2076@l /* 0x806521C8@l */
/* 8039E9B0  7F 43 D3 78 */	mr r3, r26
/* 8039E9B4  4C C6 31 82 */	crclr 6
/* 8039E9B8  4B CB CF 65 */	bl gfxprint_printf
/* 8039E9BC  3B 7B 00 01 */	addi r27, r27, 1
/* 8039E9C0  3B FF 00 03 */	addi r31, r31, 3
/* 8039E9C4  2C 1B 00 09 */	cmpwi r27, 9
/* 8039E9C8  41 80 00 A8 */	blt lbl_8039EA70
/* 8039E9CC  7C 7D F0 2E */	lwzx r3, r29, r30
/* 8039E9D0  38 80 00 20 */	li r4, 0x20
/* 8039E9D4  4B FF F1 2D */	bl mEv_check_status
/* 8039E9D8  2C 03 00 00 */	cmpwi r3, 0
/* 8039E9DC  40 82 00 20 */	bne lbl_8039E9FC
/* 8039E9E0  7F 43 D3 78 */	mr r3, r26
/* 8039E9E4  38 80 00 F5 */	li r4, 0xf5
/* 8039E9E8  38 A0 00 96 */	li r5, 0x96
/* 8039E9EC  38 C0 00 78 */	li r6, 0x78
/* 8039E9F0  38 E0 00 FF */	li r7, 0xff
/* 8039E9F4  4B CB C7 AD */	bl gfxprint_color
/* 8039E9F8  48 00 00 4C */	b lbl_8039EA44
lbl_8039E9FC:
/* 8039E9FC  7C 7D F0 2E */	lwzx r3, r29, r30
/* 8039EA00  38 80 00 10 */	li r4, 0x10
/* 8039EA04  4B FF F0 FD */	bl mEv_check_status
/* 8039EA08  2C 03 00 00 */	cmpwi r3, 0
/* 8039EA0C  41 82 00 20 */	beq lbl_8039EA2C
/* 8039EA10  7F 43 D3 78 */	mr r3, r26
/* 8039EA14  38 80 00 B4 */	li r4, 0xb4
/* 8039EA18  38 A0 00 96 */	li r5, 0x96
/* 8039EA1C  38 C0 00 A0 */	li r6, 0xa0
/* 8039EA20  38 E0 00 FF */	li r7, 0xff
/* 8039EA24  4B CB C7 7D */	bl gfxprint_color
/* 8039EA28  48 00 00 1C */	b lbl_8039EA44
lbl_8039EA2C:
/* 8039EA2C  7F 43 D3 78 */	mr r3, r26
/* 8039EA30  38 80 00 8C */	li r4, 0x8c
/* 8039EA34  38 A0 00 78 */	li r5, 0x78
/* 8039EA38  38 C0 00 78 */	li r6, 0x78
/* 8039EA3C  38 E0 00 FF */	li r7, 0xff
/* 8039EA40  4B CB C7 61 */	bl gfxprint_color
lbl_8039EA44:
/* 8039EA44  1C 9B 00 03 */	mulli r4, r27, 3
/* 8039EA48  7F 43 D3 78 */	mr r3, r26
/* 8039EA4C  38 A0 00 05 */	li r5, 5
/* 8039EA50  38 84 00 09 */	addi r4, r4, 9
/* 8039EA54  4B CB C7 BD */	bl gfxprint_locate8x8
/* 8039EA58  3C 80 80 65 */	lis r4, lit_2077@ha /* 0x806521CC@ha */
/* 8039EA5C  7F 43 D3 78 */	mr r3, r26
/* 8039EA60  38 84 21 CC */	addi r4, r4, lit_2077@l /* 0x806521CC@l */
/* 8039EA64  4C C6 31 82 */	crclr 6
/* 8039EA68  4B CB CE B5 */	bl gfxprint_printf
/* 8039EA6C  48 00 00 14 */	b lbl_8039EA80
lbl_8039EA70:
/* 8039EA70  3B 9C 00 01 */	addi r28, r28, 1
/* 8039EA74  3B DE 00 10 */	addi r30, r30, 0x10
/* 8039EA78  2C 1C 00 10 */	cmpwi r28, 0x10
/* 8039EA7C  41 80 FE E4 */	blt lbl_8039E960
lbl_8039EA80:
/* 8039EA80  39 61 00 20 */	addi r11, r1, 0x20
/* 8039EA84  4B CF C4 91 */	bl func_8009AF14
/* 8039EA88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039EA8C  7C 08 03 A6 */	mtlr r0
/* 8039EA90  38 21 00 20 */	addi r1, r1, 0x20
/* 8039EA94  4E 80 00 20 */	blr 
