lbl_80496CDC:
/* 80496CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80496CE0  7C 08 02 A6 */	mflr r0
/* 80496CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80496CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80496CEC  4B C0 41 E9 */	bl func_8009AED4
/* 80496CF0  7C 9E 23 78 */	mr r30, r4
/* 80496CF4  7C 7D 1B 78 */	mr r29, r3
/* 80496CF8  88 84 01 76 */	lbz r4, 0x176(r4)
/* 80496CFC  38 7E 01 78 */	addi r3, r30, 0x178
/* 80496D00  3B E0 00 00 */	li r31, 0
/* 80496D04  4B FF FE D1 */	bl aSetMgr_ovl
/* 80496D08  2C 03 00 01 */	cmpwi r3, 1
/* 80496D0C  40 82 00 30 */	bne lbl_80496D3C
/* 80496D10  81 9E 41 78 */	lwz r12, 0x4178(r30)
/* 80496D14  28 0C 00 00 */	cmplwi r12, 0
/* 80496D18  41 82 00 24 */	beq lbl_80496D3C
/* 80496D1C  7F C3 F3 78 */	mr r3, r30
/* 80496D20  7F A4 EB 78 */	mr r4, r29
/* 80496D24  7D 89 03 A6 */	mtctr r12
/* 80496D28  4E 80 04 21 */	bctrl 
/* 80496D2C  88 7E 01 76 */	lbz r3, 0x176(r30)
/* 80496D30  38 03 00 01 */	addi r0, r3, 1
/* 80496D34  98 1E 01 76 */	stb r0, 0x176(r30)
/* 80496D38  48 00 00 10 */	b lbl_80496D48
lbl_80496D3C:
/* 80496D3C  88 7E 01 76 */	lbz r3, 0x176(r30)
/* 80496D40  38 03 00 01 */	addi r0, r3, 1
/* 80496D44  98 1E 01 76 */	stb r0, 0x176(r30)
lbl_80496D48:
/* 80496D48  88 1E 01 76 */	lbz r0, 0x176(r30)
/* 80496D4C  28 00 00 02 */	cmplwi r0, 2
/* 80496D50  41 80 00 14 */	blt lbl_80496D64
/* 80496D54  38 00 00 00 */	li r0, 0
/* 80496D58  3B E0 00 01 */	li r31, 1
/* 80496D5C  98 1E 01 75 */	stb r0, 0x175(r30)
/* 80496D60  98 1E 01 76 */	stb r0, 0x176(r30)
lbl_80496D64:
/* 80496D64  4B FF FE 15 */	bl aSetMgr_check_player_wade_end
/* 80496D68  2C 03 00 01 */	cmpwi r3, 1
/* 80496D6C  40 82 00 14 */	bne lbl_80496D80
/* 80496D70  38 00 00 00 */	li r0, 0
/* 80496D74  3B E0 00 01 */	li r31, 1
/* 80496D78  98 1E 01 75 */	stb r0, 0x175(r30)
/* 80496D7C  98 1E 01 76 */	stb r0, 0x176(r30)
lbl_80496D80:
/* 80496D80  7F E3 FB 78 */	mr r3, r31
/* 80496D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80496D88  4B C0 41 99 */	bl func_8009AF20
/* 80496D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80496D90  7C 08 03 A6 */	mtlr r0
/* 80496D94  38 21 00 20 */	addi r1, r1, 0x20
/* 80496D98  4E 80 00 20 */	blr 
