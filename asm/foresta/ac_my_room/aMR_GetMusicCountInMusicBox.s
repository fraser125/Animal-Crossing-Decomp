lbl_80474178:
/* 80474178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047417C  7C 08 02 A6 */	mflr r0
/* 80474180  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474184  39 61 00 20 */	addi r11, r1, 0x20
/* 80474188  4B C2 6D 45 */	bl func_8009AECC
/* 8047418C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80474190  3B E0 00 00 */	li r31, 0
/* 80474194  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 80474198  3B 60 00 00 */	li r27, 0
/* 8047419C  3F BE 00 02 */	addis r29, r30, 2
/* 804741A0  7F BC EB 78 */	mr r28, r29
/* 804741A4  3B BD 32 14 */	addi r29, r29, 0x3214
lbl_804741A8:
/* 804741A8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 804741AC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 804741B0  40 82 00 0C */	bne lbl_804741BC
/* 804741B4  7F A4 EB 78 */	mr r4, r29
/* 804741B8  48 00 00 24 */	b lbl_804741DC
lbl_804741BC:
/* 804741BC  88 7C 60 03 */	lbz r3, 0x6003(r28)
/* 804741C0  4B F3 F3 F9 */	bl mHS_get_arrange_idx
/* 804741C4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 804741C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804741CC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 804741D0  7C 60 22 14 */	add r3, r0, r4
/* 804741D4  3C 83 00 01 */	addis r4, r3, 1
/* 804741D8  38 84 C3 6C */	addi r4, r4, -15508
lbl_804741DC:
/* 804741DC  7F 63 2E 70 */	srawi r3, r27, 5
/* 804741E0  57 60 06 FE */	clrlwi r0, r27, 0x1b
/* 804741E4  7C 63 01 94 */	addze r3, r3
/* 804741E8  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 804741EC  7C 64 18 2E */	lwzx r3, r4, r3
/* 804741F0  7C 60 04 30 */	srw r0, r3, r0
/* 804741F4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 804741F8  28 00 00 01 */	cmplwi r0, 1
/* 804741FC  40 82 00 08 */	bne lbl_80474204
/* 80474200  3B FF 00 01 */	addi r31, r31, 1
lbl_80474204:
/* 80474204  3B 7B 00 01 */	addi r27, r27, 1
/* 80474208  2C 1B 00 37 */	cmpwi r27, 0x37
/* 8047420C  41 80 FF 9C */	blt lbl_804741A8
/* 80474210  7F E3 FB 78 */	mr r3, r31
/* 80474214  39 61 00 20 */	addi r11, r1, 0x20
/* 80474218  4B C2 6D 01 */	bl func_8009AF18
/* 8047421C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474220  7C 08 03 A6 */	mtlr r0
/* 80474224  38 21 00 20 */	addi r1, r1, 0x20
/* 80474228  4E 80 00 20 */	blr 
