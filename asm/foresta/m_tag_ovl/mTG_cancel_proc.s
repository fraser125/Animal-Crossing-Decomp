lbl_805F6FF4:
/* 805F6FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F6FF8  7C 08 02 A6 */	mflr r0
/* 805F6FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F7000  80 04 00 00 */	lwz r0, 0(r4)
/* 805F7004  2C 00 00 01 */	cmpwi r0, 1
/* 805F7008  40 82 00 4C */	bne lbl_805F7054
/* 805F700C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805F7010  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F7014  2C 00 00 04 */	cmpwi r0, 4
/* 805F7018  80 A5 09 88 */	lwz r5, 0x988(r5)
/* 805F701C  40 82 00 10 */	bne lbl_805F702C
/* 805F7020  38 A0 00 01 */	li r5, 1
/* 805F7024  4B FF BF F1 */	bl mTG_close_window
/* 805F7028  48 00 00 40 */	b lbl_805F7068
lbl_805F702C:
/* 805F702C  28 05 00 00 */	cmplwi r5, 0
/* 805F7030  41 82 00 0C */	beq lbl_805F703C
/* 805F7034  38 00 00 00 */	li r0, 0
/* 805F7038  B0 05 05 E4 */	sth r0, 0x5e4(r5)
lbl_805F703C:
/* 805F703C  38 80 00 00 */	li r4, 0
/* 805F7040  38 A0 00 01 */	li r5, 1
/* 805F7044  4B FF 87 71 */	bl mTG_return_tag_init
/* 805F7048  38 60 10 03 */	li r3, 0x1003
/* 805F704C  48 03 6C B9 */	bl sAdo_SysTrgStart
/* 805F7050  48 00 00 18 */	b lbl_805F7068
lbl_805F7054:
/* 805F7054  38 80 00 00 */	li r4, 0
/* 805F7058  38 A0 00 01 */	li r5, 1
/* 805F705C  4B FF 87 59 */	bl mTG_return_tag_init
/* 805F7060  38 60 10 03 */	li r3, 0x1003
/* 805F7064  48 03 6C A1 */	bl sAdo_SysTrgStart
lbl_805F7068:
/* 805F7068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F706C  7C 08 03 A6 */	mtlr r0
/* 805F7070  38 21 00 10 */	addi r1, r1, 0x10
/* 805F7074  4E 80 00 20 */	blr 
