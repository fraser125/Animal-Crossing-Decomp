lbl_8048BA60:
/* 8048BA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048BA64  7C 08 02 A6 */	mflr r0
/* 8048BA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048BA6C  38 00 00 0D */	li r0, 0xd
/* 8048BA70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048BA74  7C 7F 1B 78 */	mr r31, r3
/* 8048BA78  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8048BA7C  38 00 FF FF */	li r0, -1
/* 8048BA80  90 83 01 AC */	stw r4, 0x1ac(r3)
/* 8048BA84  38 80 00 02 */	li r4, 2
/* 8048BA88  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 8048BA8C  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048BA90  7D 89 03 A6 */	mtctr r12
/* 8048BA94  4E 80 04 21 */	bctrl 
/* 8048BA98  4B F3 3C 11 */	bl func_803BF6A8
/* 8048BA9C  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048BAA0  4B F3 45 25 */	bl mMsg_Set_continue_msg_num
/* 8048BAA4  38 00 00 00 */	li r0, 0
/* 8048BAA8  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048BAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048BAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048BAB4  7C 08 03 A6 */	mtlr r0
/* 8048BAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048BABC  4E 80 00 20 */	blr 
