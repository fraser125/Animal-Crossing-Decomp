lbl_803C2D20:
/* 803C2D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2D24  7C 08 02 A6 */	mflr r0
/* 803C2D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2D30  7C 9F 23 78 */	mr r31, r4
/* 803C2D34  93 C1 00 08 */	stw r30, 8(r1)
/* 803C2D38  7C 7E 1B 78 */	mr r30, r3
/* 803C2D3C  4B FF FF 15 */	bl mMsg_Set_display_button_turn_color
/* 803C2D40  7F C3 F3 78 */	mr r3, r30
/* 803C2D44  7F E4 FB 78 */	mr r4, r31
/* 803C2D48  4B FF FD 2D */	bl mMsg_request_main_index_fromNormal
/* 803C2D4C  7F C3 F3 78 */	mr r3, r30
/* 803C2D50  7F E4 FB 78 */	mr r4, r31
/* 803C2D54  4B FF C6 29 */	bl func_803BF37C
/* 803C2D58  80 1E 04 34 */	lwz r0, 0x434(r30)
/* 803C2D5C  2C 00 00 02 */	cmpwi r0, 2
/* 803C2D60  41 82 00 10 */	beq lbl_803C2D70
/* 803C2D64  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C2D68  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 803C2D6C  90 1E 04 0C */	stw r0, 0x40c(r30)
lbl_803C2D70:
/* 803C2D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C2D7C  7C 08 03 A6 */	mtlr r0
/* 803C2D80  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2D84  4E 80 00 20 */	blr 
