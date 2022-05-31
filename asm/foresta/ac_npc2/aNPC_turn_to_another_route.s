lbl_80541D54:
/* 80541D54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80541D58  7C 08 02 A6 */	mflr r0
/* 80541D5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80541D60  39 61 00 40 */	addi r11, r1, 0x40
/* 80541D64  4B B5 91 71 */	bl func_8009AED4
/* 80541D68  7C 7D 1B 78 */	mr r29, r3
/* 80541D6C  7C 9E 23 78 */	mr r30, r4
/* 80541D70  38 61 00 08 */	addi r3, r1, 8
/* 80541D74  3B E0 00 00 */	li r31, 0
/* 80541D78  38 80 00 0C */	li r4, 0xc
/* 80541D7C  4B B1 B2 ED */	bl bzero
/* 80541D80  88 BD 09 30 */	lbz r5, 0x930(r29)
/* 80541D84  7F A3 EB 78 */	mr r3, r29
/* 80541D88  88 DD 09 31 */	lbz r6, 0x931(r29)
/* 80541D8C  7F C4 F3 78 */	mr r4, r30
/* 80541D90  7C A5 07 74 */	extsb r5, r5
/* 80541D94  38 E0 00 01 */	li r7, 1
/* 80541D98  7C C6 07 74 */	extsb r6, r6
/* 80541D9C  4B FF FC 59 */	bl aNPC_route_check
/* 80541DA0  2C 03 00 02 */	cmpwi r3, 2
/* 80541DA4  40 82 00 30 */	bne lbl_80541DD4
/* 80541DA8  C0 1D 09 0C */	lfs f0, 0x90c(r29)
/* 80541DAC  3B E0 00 03 */	li r31, 3
/* 80541DB0  FC 00 00 1E */	fctiwz f0, f0
/* 80541DB4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80541DB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80541DBC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80541DC0  C0 1D 09 10 */	lfs f0, 0x910(r29)
/* 80541DC4  FC 00 00 1E */	fctiwz f0, f0
/* 80541DC8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80541DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80541DD0  B0 01 00 0E */	sth r0, 0xe(r1)
lbl_80541DD4:
/* 80541DD4  7F A3 EB 78 */	mr r3, r29
/* 80541DD8  7F E5 FB 78 */	mr r5, r31
/* 80541DDC  38 E1 00 08 */	addi r7, r1, 8
/* 80541DE0  38 80 00 01 */	li r4, 1
/* 80541DE4  38 C0 00 00 */	li r6, 0
/* 80541DE8  4B FF D5 B9 */	bl aNPC_set_request_act
/* 80541DEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80541DF0  4B B5 91 31 */	bl func_8009AF20
/* 80541DF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80541DF8  7C 08 03 A6 */	mtlr r0
/* 80541DFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80541E00  4E 80 00 20 */	blr 
