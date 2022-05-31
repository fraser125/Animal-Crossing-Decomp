lbl_8037C05C:
/* 8037C05C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037C060  7C 08 02 A6 */	mflr r0
/* 8037C064  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037C068  39 61 00 30 */	addi r11, r1, 0x30
/* 8037C06C  4B D1 EE 59 */	bl func_8009AEC4
/* 8037C070  3D 20 81 13 */	lis r9, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C074  7C 79 1B 78 */	mr r25, r3
/* 8037C078  38 69 51 C0 */	addi r3, r9, data_811351C0@l /* 0x811351C0@l */
/* 8037C07C  7C 9A 23 78 */	mr r26, r4
/* 8037C080  7C BB 2B 78 */	mr r27, r5
/* 8037C084  7C DC 33 78 */	mr r28, r6
/* 8037C088  7C FD 3B 78 */	mr r29, r7
/* 8037C08C  7D 1E 43 78 */	mr r30, r8
/* 8037C090  3B E3 01 64 */	addi r31, r3, 0x164
/* 8037C094  38 61 00 08 */	addi r3, r1, 8
/* 8037C098  4B FF C8 FD */	bl mBGMElem_default_set
/* 8037C09C  2C 1A 00 00 */	cmpwi r26, 0
/* 8037C0A0  9B 21 00 08 */	stb r25, 8(r1)
/* 8037C0A4  38 E0 00 00 */	li r7, 0
/* 8037C0A8  B3 A1 00 0E */	sth r29, 0xe(r1)
/* 8037C0AC  41 82 00 0C */	beq lbl_8037C0B8
/* 8037C0B0  60 E0 00 10 */	ori r0, r7, 0x10
/* 8037C0B4  54 07 04 3E */	clrlwi r7, r0, 0x10
lbl_8037C0B8:
/* 8037C0B8  2C 1B 00 00 */	cmpwi r27, 0
/* 8037C0BC  41 82 00 0C */	beq lbl_8037C0C8
/* 8037C0C0  60 E0 00 20 */	ori r0, r7, 0x20
/* 8037C0C4  54 07 04 3E */	clrlwi r7, r0, 0x10
lbl_8037C0C8:
/* 8037C0C8  2C 1C 00 00 */	cmpwi r28, 0
/* 8037C0CC  41 82 00 0C */	beq lbl_8037C0D8
/* 8037C0D0  60 E0 00 08 */	ori r0, r7, 8
/* 8037C0D4  54 07 04 3E */	clrlwi r7, r0, 0x10
lbl_8037C0D8:
/* 8037C0D8  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8037C0DC  28 00 00 7F */	cmplwi r0, 0x7f
/* 8037C0E0  40 82 00 0C */	bne lbl_8037C0EC
/* 8037C0E4  60 E0 00 40 */	ori r0, r7, 0x40
/* 8037C0E8  54 07 04 3E */	clrlwi r7, r0, 0x10
lbl_8037C0EC:
/* 8037C0EC  7F E3 FB 78 */	mr r3, r31
/* 8037C0F0  7F C8 F3 78 */	mr r8, r30
/* 8037C0F4  38 81 00 08 */	addi r4, r1, 8
/* 8037C0F8  38 A0 00 0A */	li r5, 0xa
/* 8037C0FC  38 C0 FF FF */	li r6, -1
/* 8037C100  4B FF F7 D9 */	bl mBGMPsComp_make_ps
/* 8037C104  39 61 00 30 */	addi r11, r1, 0x30
/* 8037C108  4B D1 EE 09 */	bl func_8009AF10
/* 8037C10C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037C110  7C 08 03 A6 */	mtlr r0
/* 8037C114  38 21 00 30 */	addi r1, r1, 0x30
/* 8037C118  4E 80 00 20 */	blr 
