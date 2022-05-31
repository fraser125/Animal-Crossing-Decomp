lbl_805D3E04:
/* 805D3E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D3E08  7C 08 02 A6 */	mflr r0
/* 805D3E0C  38 80 00 03 */	li r4, 3
/* 805D3E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D3E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D3E18  7C 7F 1B 78 */	mr r31, r3
/* 805D3E1C  4B FF D5 E5 */	bl mDE_cursor_move_check
/* 805D3E20  2C 03 00 00 */	cmpwi r3, 0
/* 805D3E24  41 82 00 30 */	beq lbl_805D3E54
/* 805D3E28  7F E3 FB 78 */	mr r3, r31
/* 805D3E2C  38 80 00 00 */	li r4, 0
/* 805D3E30  4B FF D5 D1 */	bl mDE_cursor_move_check
/* 805D3E34  2C 03 00 00 */	cmpwi r3, 0
/* 805D3E38  41 82 00 1C */	beq lbl_805D3E54
/* 805D3E3C  7F E3 FB 78 */	mr r3, r31
/* 805D3E40  38 80 00 04 */	li r4, 4
/* 805D3E44  38 A0 00 03 */	li r5, 3
/* 805D3E48  38 C0 00 00 */	li r6, 0
/* 805D3E4C  4B FF FF 11 */	bl mDE_cursor_waku_naname
/* 805D3E50  48 00 01 50 */	b lbl_805D3FA0
lbl_805D3E54:
/* 805D3E54  7F E3 FB 78 */	mr r3, r31
/* 805D3E58  38 80 00 03 */	li r4, 3
/* 805D3E5C  4B FF D5 A5 */	bl mDE_cursor_move_check
/* 805D3E60  2C 03 00 00 */	cmpwi r3, 0
/* 805D3E64  41 82 00 30 */	beq lbl_805D3E94
/* 805D3E68  7F E3 FB 78 */	mr r3, r31
/* 805D3E6C  38 80 00 01 */	li r4, 1
/* 805D3E70  4B FF D5 91 */	bl mDE_cursor_move_check
/* 805D3E74  2C 03 00 00 */	cmpwi r3, 0
/* 805D3E78  41 82 00 1C */	beq lbl_805D3E94
/* 805D3E7C  7F E3 FB 78 */	mr r3, r31
/* 805D3E80  38 80 00 05 */	li r4, 5
/* 805D3E84  38 A0 00 03 */	li r5, 3
/* 805D3E88  38 C0 00 01 */	li r6, 1
/* 805D3E8C  4B FF FE D1 */	bl mDE_cursor_waku_naname
/* 805D3E90  48 00 01 10 */	b lbl_805D3FA0
lbl_805D3E94:
/* 805D3E94  7F E3 FB 78 */	mr r3, r31
/* 805D3E98  38 80 00 02 */	li r4, 2
/* 805D3E9C  4B FF D5 65 */	bl mDE_cursor_move_check
/* 805D3EA0  2C 03 00 00 */	cmpwi r3, 0
/* 805D3EA4  41 82 00 30 */	beq lbl_805D3ED4
/* 805D3EA8  7F E3 FB 78 */	mr r3, r31
/* 805D3EAC  38 80 00 00 */	li r4, 0
/* 805D3EB0  4B FF D5 51 */	bl mDE_cursor_move_check
/* 805D3EB4  2C 03 00 00 */	cmpwi r3, 0
/* 805D3EB8  41 82 00 1C */	beq lbl_805D3ED4
/* 805D3EBC  7F E3 FB 78 */	mr r3, r31
/* 805D3EC0  38 80 00 06 */	li r4, 6
/* 805D3EC4  38 A0 00 02 */	li r5, 2
/* 805D3EC8  38 C0 00 00 */	li r6, 0
/* 805D3ECC  4B FF FE 91 */	bl mDE_cursor_waku_naname
/* 805D3ED0  48 00 00 D0 */	b lbl_805D3FA0
lbl_805D3ED4:
/* 805D3ED4  7F E3 FB 78 */	mr r3, r31
/* 805D3ED8  38 80 00 02 */	li r4, 2
/* 805D3EDC  4B FF D5 25 */	bl mDE_cursor_move_check
/* 805D3EE0  2C 03 00 00 */	cmpwi r3, 0
/* 805D3EE4  41 82 00 30 */	beq lbl_805D3F14
/* 805D3EE8  7F E3 FB 78 */	mr r3, r31
/* 805D3EEC  38 80 00 01 */	li r4, 1
/* 805D3EF0  4B FF D5 11 */	bl mDE_cursor_move_check
/* 805D3EF4  2C 03 00 00 */	cmpwi r3, 0
/* 805D3EF8  41 82 00 1C */	beq lbl_805D3F14
/* 805D3EFC  7F E3 FB 78 */	mr r3, r31
/* 805D3F00  38 80 00 07 */	li r4, 7
/* 805D3F04  38 A0 00 02 */	li r5, 2
/* 805D3F08  38 C0 00 01 */	li r6, 1
/* 805D3F0C  4B FF FE 51 */	bl mDE_cursor_waku_naname
/* 805D3F10  48 00 00 90 */	b lbl_805D3FA0
lbl_805D3F14:
/* 805D3F14  7F E3 FB 78 */	mr r3, r31
/* 805D3F18  38 80 00 03 */	li r4, 3
/* 805D3F1C  4B FF D4 E5 */	bl mDE_cursor_move_check
/* 805D3F20  2C 03 00 00 */	cmpwi r3, 0
/* 805D3F24  41 82 00 14 */	beq lbl_805D3F38
/* 805D3F28  7F E3 FB 78 */	mr r3, r31
/* 805D3F2C  38 80 00 03 */	li r4, 3
/* 805D3F30  4B FF FD D9 */	bl mDE_cursor_waku
/* 805D3F34  48 00 00 6C */	b lbl_805D3FA0
lbl_805D3F38:
/* 805D3F38  7F E3 FB 78 */	mr r3, r31
/* 805D3F3C  38 80 00 02 */	li r4, 2
/* 805D3F40  4B FF D4 C1 */	bl mDE_cursor_move_check
/* 805D3F44  2C 03 00 00 */	cmpwi r3, 0
/* 805D3F48  41 82 00 14 */	beq lbl_805D3F5C
/* 805D3F4C  7F E3 FB 78 */	mr r3, r31
/* 805D3F50  38 80 00 02 */	li r4, 2
/* 805D3F54  4B FF FD B5 */	bl mDE_cursor_waku
/* 805D3F58  48 00 00 48 */	b lbl_805D3FA0
lbl_805D3F5C:
/* 805D3F5C  7F E3 FB 78 */	mr r3, r31
/* 805D3F60  38 80 00 00 */	li r4, 0
/* 805D3F64  4B FF D4 9D */	bl mDE_cursor_move_check
/* 805D3F68  2C 03 00 00 */	cmpwi r3, 0
/* 805D3F6C  41 82 00 14 */	beq lbl_805D3F80
/* 805D3F70  7F E3 FB 78 */	mr r3, r31
/* 805D3F74  38 80 00 00 */	li r4, 0
/* 805D3F78  4B FF FD 91 */	bl mDE_cursor_waku
/* 805D3F7C  48 00 00 24 */	b lbl_805D3FA0
lbl_805D3F80:
/* 805D3F80  7F E3 FB 78 */	mr r3, r31
/* 805D3F84  38 80 00 01 */	li r4, 1
/* 805D3F88  4B FF D4 79 */	bl mDE_cursor_move_check
/* 805D3F8C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3F90  41 82 00 10 */	beq lbl_805D3FA0
/* 805D3F94  7F E3 FB 78 */	mr r3, r31
/* 805D3F98  38 80 00 01 */	li r4, 1
/* 805D3F9C  4B FF FD 6D */	bl mDE_cursor_waku
lbl_805D3FA0:
/* 805D3FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D3FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D3FA8  7C 08 03 A6 */	mtlr r0
/* 805D3FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 805D3FB0  4E 80 00 20 */	blr 
