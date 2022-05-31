lbl_803EC03C:
/* 803EC03C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EC040  7C 08 02 A6 */	mflr r0
/* 803EC044  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EC048  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC04C  4B CA EE 85 */	bl func_8009AED0
/* 803EC050  3C 80 81 17 */	lis r4, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EC054  84 04 14 44 */	lwzu r0, l_mItemDebug_work_data@l(r4)  /* 0x81171444@l */
/* 803EC058  3C A0 80 66 */	lis r5, data_8065D590@ha /* 0x8065D590@ha */
/* 803EC05C  7C 7C 1B 78 */	mr r28, r3
/* 803EC060  2C 00 00 00 */	cmpwi r0, 0
/* 803EC064  83 A4 00 04 */	lwz r29, 4(r4)
/* 803EC068  3B C5 D5 90 */	addi r30, r5, data_8065D590@l /* 0x8065D590@l */
/* 803EC06C  41 82 00 D4 */	beq lbl_803EC140
/* 803EC070  38 80 00 E1 */	li r4, 0xe1
/* 803EC074  38 A0 00 E1 */	li r5, 0xe1
/* 803EC078  38 C0 00 FF */	li r6, 0xff
/* 803EC07C  38 E0 00 FF */	li r7, 0xff
/* 803EC080  4B C6 F1 21 */	bl gfxprint_color
/* 803EC084  7F 83 E3 78 */	mr r3, r28
/* 803EC088  38 80 00 03 */	li r4, 3
/* 803EC08C  38 A0 00 14 */	li r5, 0x14
/* 803EC090  4B C6 F1 81 */	bl gfxprint_locate8x8
/* 803EC094  2C 1D 00 00 */	cmpwi r29, 0
/* 803EC098  41 82 00 98 */	beq lbl_803EC130
/* 803EC09C  2C 1D 00 01 */	cmpwi r29, 1
/* 803EC0A0  40 82 00 64 */	bne lbl_803EC104
/* 803EC0A4  3C 60 81 17 */	lis r3, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EC0A8  3B E3 14 44 */	addi r31, r3, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EC0AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 803EC0B0  4B FF FC 95 */	bl func_803EBD44
/* 803EC0B4  2C 03 00 00 */	cmpwi r3, 0
/* 803EC0B8  41 82 00 28 */	beq lbl_803EC0E0
/* 803EC0BC  57 A0 10 3A */	slwi r0, r29, 2
/* 803EC0C0  38 7E 04 9C */	addi r3, r30, 0x49c
/* 803EC0C4  7C A3 00 2E */	lwzx r5, r3, r0
/* 803EC0C8  7F 83 E3 78 */	mr r3, r28
/* 803EC0CC  80 DF 00 08 */	lwz r6, 8(r31)
/* 803EC0D0  38 9E 05 50 */	addi r4, r30, 0x550
/* 803EC0D4  4C C6 31 82 */	crclr 6
/* 803EC0D8  4B C6 F8 45 */	bl gfxprint_printf
/* 803EC0DC  48 00 00 64 */	b lbl_803EC140
lbl_803EC0E0:
/* 803EC0E0  57 A0 10 3A */	slwi r0, r29, 2
/* 803EC0E4  38 7E 04 9C */	addi r3, r30, 0x49c
/* 803EC0E8  7C A3 00 2E */	lwzx r5, r3, r0
/* 803EC0EC  7F 83 E3 78 */	mr r3, r28
/* 803EC0F0  80 DF 00 08 */	lwz r6, 8(r31)
/* 803EC0F4  38 9E 05 58 */	addi r4, r30, 0x558
/* 803EC0F8  4C C6 31 82 */	crclr 6
/* 803EC0FC  4B C6 F8 21 */	bl gfxprint_printf
/* 803EC100  48 00 00 40 */	b lbl_803EC140
lbl_803EC104:
/* 803EC104  3C 80 81 17 */	lis r4, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EC108  57 A0 10 3A */	slwi r0, r29, 2
/* 803EC10C  38 BE 04 9C */	addi r5, r30, 0x49c
/* 803EC110  7F 83 E3 78 */	mr r3, r28
/* 803EC114  38 84 14 44 */	addi r4, r4, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EC118  7C A5 00 2E */	lwzx r5, r5, r0
/* 803EC11C  80 C4 00 08 */	lwz r6, 8(r4)
/* 803EC120  38 9E 05 50 */	addi r4, r30, 0x550
/* 803EC124  4C C6 31 82 */	crclr 6
/* 803EC128  4B C6 F7 F5 */	bl gfxprint_printf
/* 803EC12C  48 00 00 14 */	b lbl_803EC140
lbl_803EC130:
/* 803EC130  7F 83 E3 78 */	mr r3, r28
/* 803EC134  38 9E 04 54 */	addi r4, r30, 0x454
/* 803EC138  4C C6 31 82 */	crclr 6
/* 803EC13C  4B C6 F7 E1 */	bl gfxprint_printf
lbl_803EC140:
/* 803EC140  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC144  4B CA ED D9 */	bl func_8009AF1C
/* 803EC148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC14C  7C 08 03 A6 */	mtlr r0
/* 803EC150  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC154  4E 80 00 20 */	blr 
