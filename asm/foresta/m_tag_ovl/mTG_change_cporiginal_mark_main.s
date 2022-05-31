lbl_805FCFC4:
/* 805FCFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FCFC8  7C 08 02 A6 */	mflr r0
/* 805FCFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FCFD0  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FCFD4  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805FCFD8  A8 06 03 C0 */	lha r0, 0x3c0(r6)
/* 805FCFDC  2C 00 00 02 */	cmpwi r0, 2
/* 805FCFE0  41 82 00 20 */	beq lbl_805FD000
/* 805FCFE4  40 80 00 24 */	bge lbl_805FD008
/* 805FCFE8  2C 00 00 01 */	cmpwi r0, 1
/* 805FCFEC  40 80 00 08 */	bge lbl_805FCFF4
/* 805FCFF0  48 00 00 18 */	b lbl_805FD008
lbl_805FCFF4:
/* 805FCFF4  38 C0 00 00 */	li r6, 0
/* 805FCFF8  4B FF FD BD */	bl mTG_change_original_mark_decide
/* 805FCFFC  48 00 00 0C */	b lbl_805FD008
lbl_805FD000:
/* 805FD000  38 C0 00 00 */	li r6, 0
/* 805FD004  4B FF FB 91 */	bl mTG_change_original_mark_move
lbl_805FD008:
/* 805FD008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FD00C  38 60 00 01 */	li r3, 1
/* 805FD010  7C 08 03 A6 */	mtlr r0
/* 805FD014  38 21 00 10 */	addi r1, r1, 0x10
/* 805FD018  4E 80 00 20 */	blr 
