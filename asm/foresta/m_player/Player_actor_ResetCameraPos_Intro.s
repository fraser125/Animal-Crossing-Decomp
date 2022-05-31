lbl_804E4D3C:
/* 804E4D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4D40  7C 08 02 A6 */	mflr r0
/* 804E4D44  38 80 00 01 */	li r4, 1
/* 804E4D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4D50  7C 7F 1B 78 */	mr r31, r3
/* 804E4D54  4B E9 A4 59 */	bl Camera2_Check_main_index
/* 804E4D58  2C 03 00 00 */	cmpwi r3, 0
/* 804E4D5C  41 82 00 14 */	beq lbl_804E4D70
/* 804E4D60  7F E3 FB 78 */	mr r3, r31
/* 804E4D64  38 80 00 01 */	li r4, 1
/* 804E4D68  38 A0 00 01 */	li r5, 1
/* 804E4D6C  4B E9 B9 6D */	bl Camera2_request_main_normal
lbl_804E4D70:
/* 804E4D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4D78  7C 08 03 A6 */	mtlr r0
/* 804E4D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4D80  4E 80 00 20 */	blr 
