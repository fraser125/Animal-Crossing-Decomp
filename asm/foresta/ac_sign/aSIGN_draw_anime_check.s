lbl_804A13AC:
/* 804A13AC  38 00 00 0A */	li r0, 0xa
/* 804A13B0  38 C0 00 00 */	li r6, 0
/* 804A13B4  7C 09 03 A6 */	mtctr r0
lbl_804A13B8:
/* 804A13B8  7C E3 32 14 */	add r7, r3, r6
/* 804A13BC  80 07 02 40 */	lwz r0, 0x240(r7)
/* 804A13C0  2C 00 00 00 */	cmpwi r0, 0
/* 804A13C4  41 82 00 24 */	beq lbl_804A13E8
/* 804A13C8  80 07 02 20 */	lwz r0, 0x220(r7)
/* 804A13CC  7C 00 20 00 */	cmpw r0, r4
/* 804A13D0  40 82 00 18 */	bne lbl_804A13E8
/* 804A13D4  80 07 02 24 */	lwz r0, 0x224(r7)
/* 804A13D8  7C 00 28 00 */	cmpw r0, r5
/* 804A13DC  40 82 00 0C */	bne lbl_804A13E8
/* 804A13E0  38 60 00 01 */	li r3, 1
/* 804A13E4  4E 80 00 20 */	blr 
lbl_804A13E8:
/* 804A13E8  38 C6 00 2C */	addi r6, r6, 0x2c
/* 804A13EC  42 00 FF CC */	bdnz lbl_804A13B8
/* 804A13F0  38 60 00 00 */	li r3, 0
/* 804A13F4  4E 80 00 20 */	blr 
