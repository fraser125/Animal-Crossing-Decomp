lbl_804DBF14:
/* 804DBF14  2C 04 00 00 */	cmpwi r4, 0
/* 804DBF18  41 80 00 0C */	blt lbl_804DBF24
/* 804DBF1C  2C 05 00 00 */	cmpwi r5, 0
/* 804DBF20  40 80 00 0C */	bge lbl_804DBF2C
lbl_804DBF24:
/* 804DBF24  38 60 00 00 */	li r3, 0
/* 804DBF28  4E 80 00 20 */	blr 
lbl_804DBF2C:
/* 804DBF2C  38 00 00 03 */	li r0, 3
/* 804DBF30  38 E3 11 B4 */	addi r7, r3, 0x11b4
/* 804DBF34  39 03 11 C0 */	addi r8, r3, 0x11c0
/* 804DBF38  38 63 11 CC */	addi r3, r3, 0x11cc
/* 804DBF3C  7C 09 03 A6 */	mtctr r0
lbl_804DBF40:
/* 804DBF40  80 08 00 00 */	lwz r0, 0(r8)
/* 804DBF44  7C 04 00 00 */	cmpw r4, r0
/* 804DBF48  40 82 00 34 */	bne lbl_804DBF7C
/* 804DBF4C  80 03 00 00 */	lwz r0, 0(r3)
/* 804DBF50  7C 05 00 00 */	cmpw r5, r0
/* 804DBF54  40 82 00 28 */	bne lbl_804DBF7C
/* 804DBF58  2C 06 00 00 */	cmpwi r6, 0
/* 804DBF5C  41 82 00 0C */	beq lbl_804DBF68
/* 804DBF60  38 60 00 00 */	li r3, 0
/* 804DBF64  4E 80 00 20 */	blr 
lbl_804DBF68:
/* 804DBF68  C0 07 00 00 */	lfs f0, 0(r7)
/* 804DBF6C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DBF70  40 81 00 0C */	ble lbl_804DBF7C
/* 804DBF74  38 60 00 00 */	li r3, 0
/* 804DBF78  4E 80 00 20 */	blr 
lbl_804DBF7C:
/* 804DBF7C  38 E7 00 04 */	addi r7, r7, 4
/* 804DBF80  39 08 00 04 */	addi r8, r8, 4
/* 804DBF84  38 63 00 04 */	addi r3, r3, 4
/* 804DBF88  42 00 FF B8 */	bdnz lbl_804DBF40
/* 804DBF8C  38 60 00 01 */	li r3, 1
/* 804DBF90  4E 80 00 20 */	blr 
