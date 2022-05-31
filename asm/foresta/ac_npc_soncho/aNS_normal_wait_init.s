lbl_8057EDD4:
/* 8057EDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EDD8  7C 08 02 A6 */	mflr r0
/* 8057EDDC  38 80 00 04 */	li r4, 4
/* 8057EDE0  38 A0 00 00 */	li r5, 0
/* 8057EDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EDE8  38 C0 00 00 */	li r6, 0
/* 8057EDEC  38 E0 00 00 */	li r7, 0
/* 8057EDF0  39 00 00 00 */	li r8, 0
/* 8057EDF4  39 20 00 00 */	li r9, 0
/* 8057EDF8  4B FF FC 89 */	bl aNS_set_request_act
/* 8057EDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EE00  7C 08 03 A6 */	mtlr r0
/* 8057EE04  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EE08  4E 80 00 20 */	blr 
