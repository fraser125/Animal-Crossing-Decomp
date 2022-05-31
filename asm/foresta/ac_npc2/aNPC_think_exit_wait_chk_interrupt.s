lbl_80542D5C:
/* 80542D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542D60  7C 08 02 A6 */	mflr r0
/* 80542D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542D6C  3B E0 00 00 */	li r31, 0
/* 80542D70  93 C1 00 08 */	stw r30, 8(r1)
/* 80542D74  7C 7E 1B 78 */	mr r30, r3
/* 80542D78  4B FF E4 65 */	bl aNPC_chk_talk_start
/* 80542D7C  2C 03 00 01 */	cmpwi r3, 1
/* 80542D80  40 82 00 0C */	bne lbl_80542D8C
/* 80542D84  3B E0 00 01 */	li r31, 1
/* 80542D88  48 00 00 30 */	b lbl_80542DB8
lbl_80542D8C:
/* 80542D8C  7F C3 F3 78 */	mr r3, r30
/* 80542D90  4B FF 98 B1 */	bl aNPC_chk_right_hand
/* 80542D94  2C 03 00 00 */	cmpwi r3, 0
/* 80542D98  40 82 00 0C */	bne lbl_80542DA4
/* 80542D9C  3B E0 00 01 */	li r31, 1
/* 80542DA0  48 00 00 18 */	b lbl_80542DB8
lbl_80542DA4:
/* 80542DA4  7F C3 F3 78 */	mr r3, r30
/* 80542DA8  4B FF 99 4D */	bl aNPC_chk_left_hand
/* 80542DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80542DB0  40 82 00 08 */	bne lbl_80542DB8
/* 80542DB4  3B E0 00 01 */	li r31, 1
lbl_80542DB8:
/* 80542DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542DBC  7F E3 FB 78 */	mr r3, r31
/* 80542DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80542DC8  7C 08 03 A6 */	mtlr r0
/* 80542DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80542DD0  4E 80 00 20 */	blr 
