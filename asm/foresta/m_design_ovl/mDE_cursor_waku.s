lbl_805D3D08:
/* 805D3D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D3D0C  7C 08 02 A6 */	mflr r0
/* 805D3D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D3D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D3D18  7C 9F 23 78 */	mr r31, r4
/* 805D3D1C  93 C1 00 08 */	stw r30, 8(r1)
/* 805D3D20  7C 7E 1B 78 */	mr r30, r3
/* 805D3D24  4B FF DF C5 */	bl mDE_cursor_waku_rotate
/* 805D3D28  2C 03 00 00 */	cmpwi r3, 0
/* 805D3D2C  40 82 00 10 */	bne lbl_805D3D3C
/* 805D3D30  7F C3 F3 78 */	mr r3, r30
/* 805D3D34  7F E4 FB 78 */	mr r4, r31
/* 805D3D38  4B FF D7 E5 */	bl mDE_cursor_move
lbl_805D3D3C:
/* 805D3D3C  7F C3 F3 78 */	mr r3, r30
/* 805D3D40  4B FF FE 6D */	bl mde_main_move_sound
/* 805D3D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D3D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D3D4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D3D50  7C 08 03 A6 */	mtlr r0
/* 805D3D54  38 21 00 10 */	addi r1, r1, 0x10
/* 805D3D58  4E 80 00 20 */	blr 
