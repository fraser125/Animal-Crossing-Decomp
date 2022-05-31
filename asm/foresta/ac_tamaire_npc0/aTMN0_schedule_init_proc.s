lbl_80589FC8:
/* 80589FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589FCC  7C 08 02 A6 */	mflr r0
/* 80589FD0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80589FD4  3C A0 80 59 */	lis r5, aTMN0_think_proc@ha /* 0x80589F88@ha */
/* 80589FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589FDC  38 05 9F 88 */	addi r0, r5, aTMN0_think_proc@l /* 0x80589F88@l */
/* 80589FE0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80589FE4  38 A0 00 09 */	li r5, 9
/* 80589FE8  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80589FEC  3C E6 00 02 */	addis r7, r6, 2
/* 80589FF0  38 C0 00 00 */	li r6, 0
/* 80589FF4  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80589FF8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80589FFC  7D 89 03 A6 */	mtctr r12
/* 8058A000  4E 80 04 21 */	bctrl 
/* 8058A004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A008  7C 08 03 A6 */	mtlr r0
/* 8058A00C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A010  4E 80 00 20 */	blr 
