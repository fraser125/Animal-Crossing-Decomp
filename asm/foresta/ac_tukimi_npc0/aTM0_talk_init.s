lbl_8058DDD8:
/* 8058DDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DDDC  7C 08 02 A6 */	mflr r0
/* 8058DDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DDE4  4B E0 C5 D1 */	bl mDemo_Set_ListenAble
/* 8058DDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DDEC  38 60 00 01 */	li r3, 1
/* 8058DDF0  7C 08 03 A6 */	mtlr r0
/* 8058DDF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DDF8  4E 80 00 20 */	blr 
