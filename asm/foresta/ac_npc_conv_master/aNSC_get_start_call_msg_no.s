lbl_8054786C:
/* 8054786C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80547870  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80547874  3C 84 00 03 */	addis r4, r4, 3
/* 80547878  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 8054787C  2C 00 00 01 */	cmpwi r0, 1
/* 80547880  40 82 00 20 */	bne lbl_805478A0
/* 80547884  A0 03 00 06 */	lhz r0, 6(r3)
/* 80547888  28 00 D0 0B */	cmplwi r0, 0xd00b
/* 8054788C  40 82 00 0C */	bne lbl_80547898
/* 80547890  38 60 00 10 */	li r3, 0x10
/* 80547894  4E 80 00 20 */	blr 
lbl_80547898:
/* 80547898  38 60 00 25 */	li r3, 0x25
/* 8054789C  4E 80 00 20 */	blr 
lbl_805478A0:
/* 805478A0  38 60 00 16 */	li r3, 0x16
/* 805478A4  4E 80 00 20 */	blr 