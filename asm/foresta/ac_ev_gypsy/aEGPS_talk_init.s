lbl_8052120C:
/* 8052120C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521210  7C 08 02 A6 */	mflr r0
/* 80521214  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80521218  38 A0 00 03 */	li r5, 3
/* 8052121C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80521220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521224  3C C6 00 02 */	addis r6, r6, 2
/* 80521228  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 8052122C  88 06 10 A2 */	lbz r0, 0x10a2(r6)
/* 80521230  28 00 00 00 */	cmplwi r0, 0
/* 80521234  40 82 00 08 */	bne lbl_8052123C
/* 80521238  38 A0 00 01 */	li r5, 1
lbl_8052123C:
/* 8052123C  81 83 09 9C */	lwz r12, 0x99c(r3)
/* 80521240  7D 89 03 A6 */	mtctr r12
/* 80521244  4E 80 04 21 */	bctrl 
/* 80521248  4B E7 91 6D */	bl mDemo_Set_ListenAble
/* 8052124C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521250  38 60 00 01 */	li r3, 1
/* 80521254  7C 08 03 A6 */	mtlr r0
/* 80521258  38 21 00 10 */	addi r1, r1, 0x10
/* 8052125C  4E 80 00 20 */	blr 
