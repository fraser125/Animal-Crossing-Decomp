lbl_80587954:
/* 80587954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587958  7C 08 02 A6 */	mflr r0
/* 8058795C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80587960  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80587964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587968  3C A5 00 02 */	addis r5, r5, 2
/* 8058796C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80587970  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80587974  7D 89 03 A6 */	mtctr r12
/* 80587978  4E 80 04 21 */	bctrl 
/* 8058797C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587980  7C 08 03 A6 */	mtlr r0
/* 80587984  38 21 00 10 */	addi r1, r1, 0x10
/* 80587988  4E 80 00 20 */	blr 
