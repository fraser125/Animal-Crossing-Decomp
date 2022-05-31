lbl_8054C36C:
/* 8054C36C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C370  7C 08 02 A6 */	mflr r0
/* 8054C374  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C378  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C37C  4B B4 EB 51 */	bl func_8009AECC
/* 8054C380  7C 7E 1B 78 */	mr r30, r3
/* 8054C384  7C 9F 23 78 */	mr r31, r4
/* 8054C388  4B E7 33 21 */	bl func_803BF6A8
/* 8054C38C  7C 7D 1B 78 */	mr r29, r3
/* 8054C390  4B E7 33 D5 */	bl mMsg_Check_not_series_main_wait
/* 8054C394  2C 03 00 01 */	cmpwi r3, 1
/* 8054C398  40 82 01 34 */	bne lbl_8054C4CC
/* 8054C39C  80 7F 1F 60 */	lwz r3, 0x1f60(r31)
/* 8054C3A0  3B 60 00 00 */	li r27, 0
/* 8054C3A4  A3 83 00 00 */	lhz r28, 0(r3)
/* 8054C3A8  28 1C 00 00 */	cmplwi r28, 0
/* 8054C3AC  41 82 00 E0 */	beq lbl_8054C48C
/* 8054C3B0  28 1C 1E EC */	cmplwi r28, 0x1eec
/* 8054C3B4  38 00 00 00 */	li r0, 0
/* 8054C3B8  41 80 00 10 */	blt lbl_8054C3C8
/* 8054C3BC  28 1C 1F 4F */	cmplwi r28, 0x1f4f
/* 8054C3C0  41 81 00 08 */	bgt lbl_8054C3C8
/* 8054C3C4  38 00 00 01 */	li r0, 1
lbl_8054C3C8:
/* 8054C3C8  2C 00 00 01 */	cmpwi r0, 1
/* 8054C3CC  40 82 00 14 */	bne lbl_8054C3E0
/* 8054C3D0  7F 83 E3 78 */	mr r3, r28
/* 8054C3D4  4B FF F8 25 */	bl aCR_get_idx_to_donate_fossil
/* 8054C3D8  7C 7B 1B 78 */	mr r27, r3
/* 8054C3DC  48 00 00 A8 */	b lbl_8054C484
lbl_8054C3E0:
/* 8054C3E0  28 1C 12 AC */	cmplwi r28, 0x12ac
/* 8054C3E4  38 00 00 00 */	li r0, 0
/* 8054C3E8  41 80 00 10 */	blt lbl_8054C3F8
/* 8054C3EC  28 1C 12 E7 */	cmplwi r28, 0x12e7
/* 8054C3F0  41 81 00 08 */	bgt lbl_8054C3F8
/* 8054C3F4  38 00 00 01 */	li r0, 1
lbl_8054C3F8:
/* 8054C3F8  2C 00 00 01 */	cmpwi r0, 1
/* 8054C3FC  40 82 00 14 */	bne lbl_8054C410
/* 8054C400  7F 83 E3 78 */	mr r3, r28
/* 8054C404  4B FF F8 FD */	bl aCR_get_idx_to_donate_art
/* 8054C408  7C 7B 1B 78 */	mr r27, r3
/* 8054C40C  48 00 00 78 */	b lbl_8054C484
lbl_8054C410:
/* 8054C410  28 1C 2D 00 */	cmplwi r28, 0x2d00
/* 8054C414  38 00 00 00 */	li r0, 0
/* 8054C418  41 80 00 10 */	blt lbl_8054C428
/* 8054C41C  28 1C 2D 28 */	cmplwi r28, 0x2d28
/* 8054C420  40 80 00 08 */	bge lbl_8054C428
/* 8054C424  38 00 00 01 */	li r0, 1
lbl_8054C428:
/* 8054C428  2C 00 00 01 */	cmpwi r0, 1
/* 8054C42C  40 82 00 14 */	bne lbl_8054C440
/* 8054C430  7F 83 E3 78 */	mr r3, r28
/* 8054C434  4B FF F9 C5 */	bl aCR_get_idx_to_donate_insect
/* 8054C438  7C 7B 1B 78 */	mr r27, r3
/* 8054C43C  48 00 00 48 */	b lbl_8054C484
lbl_8054C440:
/* 8054C440  28 1C 23 00 */	cmplwi r28, 0x2300
/* 8054C444  38 00 00 00 */	li r0, 0
/* 8054C448  41 80 00 10 */	blt lbl_8054C458
/* 8054C44C  28 1C 23 28 */	cmplwi r28, 0x2328
/* 8054C450  41 81 00 08 */	bgt lbl_8054C458
/* 8054C454  38 00 00 01 */	li r0, 1
lbl_8054C458:
/* 8054C458  2C 00 00 01 */	cmpwi r0, 1
/* 8054C45C  40 82 00 14 */	bne lbl_8054C470
/* 8054C460  7F 83 E3 78 */	mr r3, r28
/* 8054C464  4B FF FA 5D */	bl aCR_get_idx_to_donate_fish
/* 8054C468  7C 7B 1B 78 */	mr r27, r3
/* 8054C46C  48 00 00 18 */	b lbl_8054C484
lbl_8054C470:
/* 8054C470  28 1C 25 11 */	cmplwi r28, 0x2511
/* 8054C474  40 82 00 0C */	bne lbl_8054C480
/* 8054C478  3B 60 00 03 */	li r27, 3
/* 8054C47C  48 00 00 08 */	b lbl_8054C484
lbl_8054C480:
/* 8054C480  3B 60 00 02 */	li r27, 2
lbl_8054C484:
/* 8054C484  7F 83 E3 78 */	mr r3, r28
/* 8054C488  4B FF F6 19 */	bl aCR_set_item_name_str
lbl_8054C48C:
/* 8054C48C  3C 80 80 6A */	lis r4, donate_act@ha /* 0x806A5124@ha */
/* 8054C490  B3 9E 09 B4 */	sth r28, 0x9b4(r30)
/* 8054C494  57 65 18 38 */	slwi r5, r27, 3
/* 8054C498  7F A3 EB 78 */	mr r3, r29
/* 8054C49C  38 04 51 24 */	addi r0, r4, donate_act@l /* 0x806A5124@l */
/* 8054C4A0  7F 60 2A 14 */	add r27, r0, r5
/* 8054C4A4  80 9B 00 00 */	lwz r4, 0(r27)
/* 8054C4A8  4B E7 3B 1D */	bl mMsg_Set_continue_msg_num
/* 8054C4AC  7F A3 EB 78 */	mr r3, r29
/* 8054C4B0  4B E7 48 79 */	bl mMsg_Set_ForceNext
/* 8054C4B4  81 9E 09 A8 */	lwz r12, 0x9a8(r30)
/* 8054C4B8  7F C3 F3 78 */	mr r3, r30
/* 8054C4BC  7F E4 FB 78 */	mr r4, r31
/* 8054C4C0  80 BB 00 04 */	lwz r5, 4(r27)
/* 8054C4C4  7D 89 03 A6 */	mtctr r12
/* 8054C4C8  4E 80 04 21 */	bctrl 
lbl_8054C4CC:
/* 8054C4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C4D0  4B B4 EA 49 */	bl func_8009AF18
/* 8054C4D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C4D8  7C 08 03 A6 */	mtlr r0
/* 8054C4DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C4E0  4E 80 00 20 */	blr 
