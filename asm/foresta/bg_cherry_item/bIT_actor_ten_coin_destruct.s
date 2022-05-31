lbl_804B0DD0:
/* 804B0DD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B0DD4  7C 08 02 A6 */	mflr r0
/* 804B0DD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B0DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0DE0  4B BE A0 F5 */	bl func_8009AED4
/* 804B0DE4  7C 7D 1B 78 */	mr r29, r3
/* 804B0DE8  3B C0 00 00 */	li r30, 0
/* 804B0DEC  3B E0 00 00 */	li r31, 0
lbl_804B0DF0:
/* 804B0DF0  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804B0DF4  2C 00 00 00 */	cmpwi r0, 0
/* 804B0DF8  41 82 00 38 */	beq lbl_804B0E30
/* 804B0DFC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 804B0E00  38 81 00 08 */	addi r4, r1, 8
/* 804B0E04  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 804B0E08  38 A0 00 01 */	li r5, 1
/* 804B0E0C  90 61 00 08 */	stw r3, 8(r1)
/* 804B0E10  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B0E14  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 804B0E18  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B0E1C  A0 7D 00 42 */	lhz r3, 0x42(r29)
/* 804B0E20  38 03 FF F9 */	addi r0, r3, -7
/* 804B0E24  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804B0E28  4B EF 6A 09 */	bl mFI_SetFG_common
/* 804B0E2C  B3 FD 00 4C */	sth r31, 0x4c(r29)
lbl_804B0E30:
/* 804B0E30  3B DE 00 01 */	addi r30, r30, 1
/* 804B0E34  3B BD 00 58 */	addi r29, r29, 0x58
/* 804B0E38  2C 1E 00 05 */	cmpwi r30, 5
/* 804B0E3C  41 80 FF B4 */	blt lbl_804B0DF0
/* 804B0E40  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0E44  4B BE A0 DD */	bl func_8009AF20
/* 804B0E48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0E4C  7C 08 03 A6 */	mtlr r0
/* 804B0E50  38 21 00 30 */	addi r1, r1, 0x30
/* 804B0E54  4E 80 00 20 */	blr 
