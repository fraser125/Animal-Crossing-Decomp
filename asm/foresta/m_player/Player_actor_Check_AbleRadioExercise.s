lbl_804DEBF4:
/* 804DEBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEBF8  7C 08 02 A6 */	mflr r0
/* 804DEBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEC00  4B FF FF 05 */	bl Player_actor_Check_InBlockRadioExercise
/* 804DEC04  2C 03 00 00 */	cmpwi r3, 0
/* 804DEC08  40 82 00 0C */	bne lbl_804DEC14
/* 804DEC0C  38 60 00 00 */	li r3, 0
/* 804DEC10  48 00 00 10 */	b lbl_804DEC20
lbl_804DEC14:
/* 804DEC14  4B EF ED D5 */	bl mPlib_Check_now_handin_item
/* 804DEC18  7C 60 00 34 */	cntlzw r0, r3
/* 804DEC1C  54 03 D9 7E */	srwi r3, r0, 5
lbl_804DEC20:
/* 804DEC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEC24  7C 08 03 A6 */	mtlr r0
/* 804DEC28  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEC2C  4E 80 00 20 */	blr 
