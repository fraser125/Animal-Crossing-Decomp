lbl_80403EF8:
/* 80403EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403EFC  7C 08 02 A6 */	mflr r0
/* 80403F00  38 60 00 0F */	li r3, 0xf
/* 80403F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403F08  48 00 00 D5 */	bl mVibctl_clr_force_stop
/* 80403F0C  38 60 00 08 */	li r3, 8
/* 80403F10  48 00 00 A1 */	bl mVibctl_set_force_stop
/* 80403F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403F18  7C 08 03 A6 */	mtlr r0
/* 80403F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80403F20  4E 80 00 20 */	blr 
