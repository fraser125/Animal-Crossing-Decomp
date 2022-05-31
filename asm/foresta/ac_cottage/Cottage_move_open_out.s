lbl_80416FC8:
/* 80416FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416FCC  7C 08 02 A6 */	mflr r0
/* 80416FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416FD8  7C 7F 1B 78 */	mr r31, r3
/* 80416FDC  4B FF EF B5 */	bl Cottage_set_doorSE
/* 80416FE0  38 7F 01 78 */	addi r3, r31, 0x178
/* 80416FE4  4B F5 A0 31 */	bl cKF_SkeletonInfo_R_play
/* 80416FE8  2C 03 00 01 */	cmpwi r3, 1
/* 80416FEC  40 82 00 0C */	bne lbl_80416FF8
/* 80416FF0  7F E3 FB 78 */	mr r3, r31
/* 80416FF4  4B FF FB 71 */	bl Cottage_move_closed_init
lbl_80416FF8:
/* 80416FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80417000  7C 08 03 A6 */	mtlr r0
/* 80417004  38 21 00 10 */	addi r1, r1, 0x10
/* 80417008  4E 80 00 20 */	blr 
