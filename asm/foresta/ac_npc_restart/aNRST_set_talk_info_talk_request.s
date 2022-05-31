lbl_80572E3C:
/* 80572E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80572E40  7C 08 02 A6 */	mflr r0
/* 80572E44  38 80 00 00 */	li r4, 0
/* 80572E48  38 A0 00 00 */	li r5, 0
/* 80572E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572E50  4B FF F6 ED */	bl func_8057253C
/* 80572E54  4B E2 56 C1 */	bl mDemo_Set_msg_num
/* 80572E58  38 60 00 01 */	li r3, 1
/* 80572E5C  4B E2 5A C5 */	bl mDemo_Set_camera
/* 80572E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572E64  7C 08 03 A6 */	mtlr r0
/* 80572E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80572E6C  4E 80 00 20 */	blr 
