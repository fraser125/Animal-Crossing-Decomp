lbl_8063A130:
/* 8063A130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A134  7C 08 02 A6 */	mflr r0
/* 8063A138  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8063A13C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8063A140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A144  3C A5 00 02 */	addis r5, r5, 2
/* 8063A148  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 8063A14C  28 05 00 00 */	cmplwi r5, 0
/* 8063A150  41 82 00 14 */	beq lbl_8063A164
/* 8063A154  81 85 00 64 */	lwz r12, 0x64(r5)
/* 8063A158  38 A0 00 08 */	li r5, 8
/* 8063A15C  7D 89 03 A6 */	mtctr r12
/* 8063A160  4E 80 04 21 */	bctrl 
lbl_8063A164:
/* 8063A164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A168  7C 08 03 A6 */	mtlr r0
/* 8063A16C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A170  4E 80 00 20 */	blr 
