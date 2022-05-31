lbl_804DCEA8:
/* 804DCEA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DCEAC  7C 08 02 A6 */	mflr r0
/* 804DCEB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DCEB4  39 61 00 20 */	addi r11, r1, 0x20
/* 804DCEB8  4B BB E0 1D */	bl func_8009AED4
/* 804DCEBC  7C BF 2B 78 */	mr r31, r5
/* 804DCEC0  7C 7D 1B 78 */	mr r29, r3
/* 804DCEC4  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804DCEC8  7C 9E 23 78 */	mr r30, r4
/* 804DCECC  40 82 00 40 */	bne lbl_804DCF0C
/* 804DCED0  80 7D 0D 74 */	lwz r3, 0xd74(r29)
/* 804DCED4  28 03 00 00 */	cmplwi r3, 0
/* 804DCED8  41 82 00 34 */	beq lbl_804DCF0C
/* 804DCEDC  4B FF FF 0D */	bl Player_actor_Check_NecessaryDoorKnock
/* 804DCEE0  2C 03 00 00 */	cmpwi r3, 0
/* 804DCEE4  41 82 00 28 */	beq lbl_804DCF0C
/* 804DCEE8  A8 BD 0D 60 */	lha r5, 0xd60(r29)
/* 804DCEEC  7F C3 F3 78 */	mr r3, r30
/* 804DCEF0  38 9D 0D 64 */	addi r4, r29, 0xd64
/* 804DCEF4  38 C0 00 26 */	li r6, 0x26
/* 804DCEF8  48 02 6F 05 */	bl func_80503DFC
/* 804DCEFC  2C 03 00 00 */	cmpwi r3, 0
/* 804DCF00  41 82 00 0C */	beq lbl_804DCF0C
/* 804DCF04  38 60 00 64 */	li r3, 0x64
/* 804DCF08  48 00 00 08 */	b lbl_804DCF10
lbl_804DCF0C:
/* 804DCF0C  7F E3 FB 78 */	mr r3, r31
lbl_804DCF10:
/* 804DCF10  39 61 00 20 */	addi r11, r1, 0x20
/* 804DCF14  4B BB E0 0D */	bl func_8009AF20
/* 804DCF18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DCF1C  7C 08 03 A6 */	mtlr r0
/* 804DCF20  38 21 00 20 */	addi r1, r1, 0x20
/* 804DCF24  4E 80 00 20 */	blr 
