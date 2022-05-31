lbl_803B2D28:
/* 803B2D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2D2C  7C 08 02 A6 */	mflr r0
/* 803B2D30  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B2D34  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2D38  4B CE 81 9D */	bl func_8009AED4
/* 803B2D3C  7C 7D 1B 78 */	mr r29, r3
/* 803B2D40  4B FF EB F5 */	bl mHandbill_load_init
/* 803B2D44  7F A3 EB 78 */	mr r3, r29
/* 803B2D48  4B FF FC ED */	bl mHandbillz_super_load
/* 803B2D4C  7C 7E 1B 78 */	mr r30, r3
/* 803B2D50  7F A3 EB 78 */	mr r3, r29
/* 803B2D54  4B FF FD D9 */	bl mHandbillz_mail_load
/* 803B2D58  7C 7F 1B 78 */	mr r31, r3
/* 803B2D5C  7F A3 EB 78 */	mr r3, r29
/* 803B2D60  4B FF FF 05 */	bl mHandbillz_ps_load
/* 803B2D64  2C 1E 00 00 */	cmpwi r30, 0
/* 803B2D68  38 00 00 00 */	li r0, 0
/* 803B2D6C  41 82 00 18 */	beq lbl_803B2D84
/* 803B2D70  2C 1F 00 00 */	cmpwi r31, 0
/* 803B2D74  41 82 00 10 */	beq lbl_803B2D84
/* 803B2D78  2C 03 00 00 */	cmpwi r3, 0
/* 803B2D7C  41 82 00 08 */	beq lbl_803B2D84
/* 803B2D80  38 00 00 01 */	li r0, 1
lbl_803B2D84:
/* 803B2D84  7C 03 03 78 */	mr r3, r0
/* 803B2D88  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2D8C  4B CE 81 95 */	bl func_8009AF20
/* 803B2D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B2D94  7C 08 03 A6 */	mtlr r0
/* 803B2D98  38 21 00 20 */	addi r1, r1, 0x20
/* 803B2D9C  4E 80 00 20 */	blr 
