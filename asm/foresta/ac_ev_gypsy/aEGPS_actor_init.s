lbl_80520DC8:
/* 80520DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520DCC  7C 08 02 A6 */	mflr r0
/* 80520DD0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80520DD4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80520DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520DDC  3C A5 00 02 */	addis r5, r5, 2
/* 80520DE0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80520DE4  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80520DE8  7D 89 03 A6 */	mtctr r12
/* 80520DEC  4E 80 04 21 */	bctrl 
/* 80520DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520DF4  7C 08 03 A6 */	mtlr r0
/* 80520DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80520DFC  4E 80 00 20 */	blr 
