lbl_805D3D5C:
/* 805D3D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D3D60  7C 08 02 A6 */	mflr r0
/* 805D3D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D3D68  39 61 00 20 */	addi r11, r1, 0x20
/* 805D3D6C  4B AC 71 69 */	bl func_8009AED4
/* 805D3D70  7C 7D 1B 78 */	mr r29, r3
/* 805D3D74  7C BE 2B 78 */	mr r30, r5
/* 805D3D78  7C DF 33 78 */	mr r31, r6
/* 805D3D7C  4B FF DE AD */	bl mDE_cursor_waku_genten_rotate
/* 805D3D80  2C 03 00 00 */	cmpwi r3, 0
/* 805D3D84  41 82 00 20 */	beq lbl_805D3DA4
/* 805D3D88  7F A3 EB 78 */	mr r3, r29
/* 805D3D8C  7F C4 F3 78 */	mr r4, r30
/* 805D3D90  4B FF D7 8D */	bl mDE_cursor_move
/* 805D3D94  7F A3 EB 78 */	mr r3, r29
/* 805D3D98  7F E4 FB 78 */	mr r4, r31
/* 805D3D9C  4B FF D7 81 */	bl mDE_cursor_move
/* 805D3DA0  48 00 00 44 */	b lbl_805D3DE4
lbl_805D3DA4:
/* 805D3DA4  7F A3 EB 78 */	mr r3, r29
/* 805D3DA8  7F C4 F3 78 */	mr r4, r30
/* 805D3DAC  4B FF DF 3D */	bl mDE_cursor_waku_rotate
/* 805D3DB0  2C 03 00 00 */	cmpwi r3, 0
/* 805D3DB4  40 82 00 30 */	bne lbl_805D3DE4
/* 805D3DB8  7F A3 EB 78 */	mr r3, r29
/* 805D3DBC  7F E4 FB 78 */	mr r4, r31
/* 805D3DC0  4B FF DF 29 */	bl mDE_cursor_waku_rotate
/* 805D3DC4  2C 03 00 00 */	cmpwi r3, 0
/* 805D3DC8  40 82 00 1C */	bne lbl_805D3DE4
/* 805D3DCC  7F A3 EB 78 */	mr r3, r29
/* 805D3DD0  7F C4 F3 78 */	mr r4, r30
/* 805D3DD4  4B FF D7 49 */	bl mDE_cursor_move
/* 805D3DD8  7F A3 EB 78 */	mr r3, r29
/* 805D3DDC  7F E4 FB 78 */	mr r4, r31
/* 805D3DE0  4B FF D7 3D */	bl mDE_cursor_move
lbl_805D3DE4:
/* 805D3DE4  7F A3 EB 78 */	mr r3, r29
/* 805D3DE8  4B FF FD C5 */	bl mde_main_move_sound
/* 805D3DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D3DF0  4B AC 71 31 */	bl func_8009AF20
/* 805D3DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D3DF8  7C 08 03 A6 */	mtlr r0
/* 805D3DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D3E00  4E 80 00 20 */	blr 
