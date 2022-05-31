lbl_8052DD04:
/* 8052DD04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052DD08  7C 08 02 A6 */	mflr r0
/* 8052DD0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052DD10  39 61 00 20 */	addi r11, r1, 0x20
/* 8052DD14  4B B6 D1 C1 */	bl func_8009AED4
/* 8052DD18  7C 7D 1B 78 */	mr r29, r3
/* 8052DD1C  3B C0 00 00 */	li r30, 0
/* 8052DD20  83 E3 01 4C */	lwz r31, 0x14c(r3)
/* 8052DD24  38 7D 00 28 */	addi r3, r29, 0x28
/* 8052DD28  4B E8 D4 09 */	bl search_position_angleY
/* 8052DD2C  28 1F 00 00 */	cmplwi r31, 0
/* 8052DD30  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 8052DD34  41 82 00 10 */	beq lbl_8052DD44
/* 8052DD38  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8052DD3C  7C 04 02 14 */	add r0, r4, r0
/* 8052DD40  7C 04 07 34 */	extsh r4, r0
lbl_8052DD44:
/* 8052DD44  7C 64 18 50 */	subf r3, r4, r3
/* 8052DD48  7C 60 07 35 */	extsh. r0, r3
/* 8052DD4C  7C 60 07 34 */	extsh r0, r3
/* 8052DD50  7C 60 00 D0 */	neg r3, r0
/* 8052DD54  41 80 00 08 */	blt lbl_8052DD5C
/* 8052DD58  7C 03 03 78 */	mr r3, r0
lbl_8052DD5C:
/* 8052DD5C  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8052DD60  40 80 00 08 */	bge lbl_8052DD68
/* 8052DD64  3B C0 00 01 */	li r30, 1
lbl_8052DD68:
/* 8052DD68  7F C3 F3 78 */	mr r3, r30
/* 8052DD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052DD70  4B B6 D1 B1 */	bl func_8009AF20
/* 8052DD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052DD78  7C 08 03 A6 */	mtlr r0
/* 8052DD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8052DD80  4E 80 00 20 */	blr 
