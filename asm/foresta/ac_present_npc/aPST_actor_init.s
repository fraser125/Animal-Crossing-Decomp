lbl_8058791C:
/* 8058791C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587920  7C 08 02 A6 */	mflr r0
/* 80587924  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80587928  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058792C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587930  3C A5 00 02 */	addis r5, r5, 2
/* 80587934  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80587938  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8058793C  7D 89 03 A6 */	mtctr r12
/* 80587940  4E 80 04 21 */	bctrl 
/* 80587944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587948  7C 08 03 A6 */	mtlr r0
/* 8058794C  38 21 00 10 */	addi r1, r1, 0x10
/* 80587950  4E 80 00 20 */	blr 