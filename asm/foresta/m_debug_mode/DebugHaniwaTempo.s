lbl_80397FA0:
/* 80397FA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80397FA4  7C 08 02 A6 */	mflr r0
/* 80397FA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80397FAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80397FB0  4B D0 2F 15 */	bl func_8009AEC4
/* 80397FB4  3C C0 80 65 */	lis r6, tempo_data@ha /* 0x80651648@ha */
/* 80397FB8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80397FBC  3C 80 80 65 */	lis r4, lit_755@ha /* 0x80651660@ha */
/* 80397FC0  7C 79 1B 78 */	mr r25, r3
/* 80397FC4  3B 66 16 48 */	addi r27, r6, tempo_data@l /* 0x80651648@l */
/* 80397FC8  3B 85 85 38 */	addi r28, r5, common_data@l /* 0x81138538@l */
/* 80397FCC  3B A4 16 60 */	addi r29, r4, lit_755@l /* 0x80651660@l */
/* 80397FD0  3B 40 00 00 */	li r26, 0
/* 80397FD4  3B E0 00 00 */	li r31, 0
/* 80397FD8  3B C0 00 00 */	li r30, 0
lbl_80397FDC:
/* 80397FDC  7F 23 CB 78 */	mr r3, r25
/* 80397FE0  38 80 00 FA */	li r4, 0xfa
/* 80397FE4  38 A0 00 C8 */	li r5, 0xc8
/* 80397FE8  38 C0 00 C8 */	li r6, 0xc8
/* 80397FEC  38 E0 00 FF */	li r7, 0xff
/* 80397FF0  4B CC 31 B1 */	bl gfxprint_color
/* 80397FF4  7F 23 CB 78 */	mr r3, r25
/* 80397FF8  38 BA 00 17 */	addi r5, r26, 0x17
/* 80397FFC  38 80 00 03 */	li r4, 3
/* 80398000  4B CC 32 11 */	bl gfxprint_locate8x8
/* 80398004  7D 3B F2 14 */	add r9, r27, r30
/* 80398008  7C 7C FA 14 */	add r3, r28, r31
/* 8039800C  88 09 00 04 */	lbz r0, 4(r9)
/* 80398010  3C A3 00 01 */	addis r5, r3, 1
/* 80398014  7F 23 CB 78 */	mr r3, r25
/* 80398018  7F A4 EB 78 */	mr r4, r29
/* 8039801C  90 01 00 08 */	stw r0, 8(r1)
/* 80398020  88 09 00 05 */	lbz r0, 5(r9)
/* 80398024  7C 00 07 74 */	extsb r0, r0
/* 80398028  90 01 00 0C */	stw r0, 0xc(r1)
/* 8039802C  88 C5 9D 03 */	lbz r6, -0x62fd(r5)
/* 80398030  89 09 00 01 */	lbz r8, 1(r9)
/* 80398034  89 49 00 03 */	lbz r10, 3(r9)
/* 80398038  7C C6 07 74 */	extsb r6, r6
/* 8039803C  88 A5 9D 02 */	lbz r5, -0x62fe(r5)
/* 80398040  7D 08 07 74 */	extsb r8, r8
/* 80398044  88 E9 00 00 */	lbz r7, 0(r9)
/* 80398048  7D 4A 07 74 */	extsb r10, r10
/* 8039804C  89 29 00 02 */	lbz r9, 2(r9)
/* 80398050  4C C6 31 82 */	crclr 6
/* 80398054  4B CC 38 C9 */	bl gfxprint_printf
/* 80398058  3B 5A 00 01 */	addi r26, r26, 1
/* 8039805C  3B DE 00 06 */	addi r30, r30, 6
/* 80398060  2C 1A 00 04 */	cmpwi r26, 4
/* 80398064  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 80398068  41 80 FF 74 */	blt lbl_80397FDC
/* 8039806C  39 61 00 30 */	addi r11, r1, 0x30
/* 80398070  4B D0 2E A1 */	bl func_8009AF10
/* 80398074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80398078  7C 08 03 A6 */	mtlr r0
/* 8039807C  38 21 00 30 */	addi r1, r1, 0x30
/* 80398080  4E 80 00 20 */	blr 
