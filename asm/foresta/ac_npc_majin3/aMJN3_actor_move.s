lbl_80557FCC:
/* 80557FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557FD0  7C 08 02 A6 */	mflr r0
/* 80557FD4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80557FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557FDC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80557FE0  3C A5 00 02 */	addis r5, r5, 2
/* 80557FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80557FE8  7C 7F 1B 78 */	mr r31, r3
/* 80557FEC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80557FF0  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80557FF4  7D 89 03 A6 */	mtctr r12
/* 80557FF8  4E 80 04 21 */	bctrl 
/* 80557FFC  38 00 00 00 */	li r0, 0
/* 80558000  98 1F 01 08 */	stb r0, 0x108(r31)
/* 80558004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055800C  7C 08 03 A6 */	mtlr r0
/* 80558010  38 21 00 10 */	addi r1, r1, 0x10
/* 80558014  4E 80 00 20 */	blr 
