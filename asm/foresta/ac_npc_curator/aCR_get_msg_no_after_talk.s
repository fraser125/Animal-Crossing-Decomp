lbl_8054BB94:
/* 8054BB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BB98  7C 08 02 A6 */	mflr r0
/* 8054BB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BBA0  4B FF FF A5 */	bl aCR_countDisplayed
/* 8054BBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8054BBA8  40 82 00 0C */	bne lbl_8054BBB4
/* 8054BBAC  38 00 00 00 */	li r0, 0
/* 8054BBB0  48 00 00 28 */	b lbl_8054BBD8
lbl_8054BBB4:
/* 8054BBB4  2C 03 00 24 */	cmpwi r3, 0x24
/* 8054BBB8  41 81 00 0C */	bgt lbl_8054BBC4
/* 8054BBBC  38 00 00 01 */	li r0, 1
/* 8054BBC0  48 00 00 18 */	b lbl_8054BBD8
lbl_8054BBC4:
/* 8054BBC4  2C 03 00 54 */	cmpwi r3, 0x54
/* 8054BBC8  41 81 00 0C */	bgt lbl_8054BBD4
/* 8054BBCC  38 00 00 02 */	li r0, 2
/* 8054BBD0  48 00 00 08 */	b lbl_8054BBD8
lbl_8054BBD4:
/* 8054BBD4  38 00 00 03 */	li r0, 3
lbl_8054BBD8:
/* 8054BBD8  3C 60 80 6A */	lis r3, msg_no_728@ha /* 0x806A50D0@ha */
/* 8054BBDC  54 00 10 3A */	slwi r0, r0, 2
/* 8054BBE0  38 63 50 D0 */	addi r3, r3, msg_no_728@l /* 0x806A50D0@l */
/* 8054BBE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8054BBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BBEC  7C 08 03 A6 */	mtlr r0
/* 8054BBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BBF4  4E 80 00 20 */	blr 
