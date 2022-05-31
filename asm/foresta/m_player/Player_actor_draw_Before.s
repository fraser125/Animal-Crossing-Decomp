lbl_804E3FB4:
/* 804E3FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3FB8  7C 08 02 A6 */	mflr r0
/* 804E3FBC  2C 05 00 00 */	cmpwi r5, 0
/* 804E3FC0  7C 8B 23 78 */	mr r11, r4
/* 804E3FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3FCC  7C 7F 1B 78 */	mr r31, r3
/* 804E3FD0  41 80 00 40 */	blt lbl_804E4010
/* 804E3FD4  2C 05 00 1A */	cmpwi r5, 0x1a
/* 804E3FD8  40 80 00 38 */	bge lbl_804E4010
/* 804E3FDC  3C 60 80 65 */	lis r3, proc_7102@ha /* 0x80648234@ha */
/* 804E3FE0  54 A0 10 3A */	slwi r0, r5, 2
/* 804E3FE4  38 63 82 34 */	addi r3, r3, proc_7102@l /* 0x80648234@l */
/* 804E3FE8  7D 83 00 2E */	lwzx r12, r3, r0
/* 804E3FEC  28 0C 00 00 */	cmplwi r12, 0
/* 804E3FF0  41 82 00 20 */	beq lbl_804E4010
/* 804E3FF4  7D 03 43 78 */	mr r3, r8
/* 804E3FF8  7D 28 4B 78 */	mr r8, r9
/* 804E3FFC  7F E4 FB 78 */	mr r4, r31
/* 804E4000  7D 65 5B 78 */	mr r5, r11
/* 804E4004  7D 49 53 78 */	mr r9, r10
/* 804E4008  7D 89 03 A6 */	mtctr r12
/* 804E400C  4E 80 04 21 */	bctrl 
lbl_804E4010:
/* 804E4010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4014  38 60 00 01 */	li r3, 1
/* 804E4018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E401C  7C 08 03 A6 */	mtlr r0
/* 804E4020  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4024  4E 80 00 20 */	blr 
